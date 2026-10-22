load("@bazel_skylib//rules:copy_file.bzl", "copy_file")
load("@rules_devicetree//devicetree:dtbo.bzl", "dtbo")
load("@rules_pkg//pkg:install.bzl", "pkg_install")
load("@rules_pkg//pkg:mappings.bzl", "pkg_files", "strip_prefix")
load(
    ":platform_map.bzl",
    "get_all_targets_list",
    "get_dtbo_list",
)
load(":target_variants.bzl", "get_variants_for")

def to_src(dt_file):
    if dt_file[-4:] == "dtbo":
        return dt_file[:-4] + "dts"
    elif dt_file[-3:] == "dtb":
        return dt_file[:-3] + "dts"

def define_all_dtbos(target):
    base_target = target.split("_")[0] if "_" in target else target
    dtbos = get_dtbo_list(base_target)

    for dtbo_name in dtbos:
        rule_base = "{}_{}".format(base_target, dtbo_name.replace("/", "_"))
        dtso_rule = rule_base + "_dtso"

        copy_file(
            name = dtso_rule,
            src = to_src(dtbo_name),
            out = rule_base + ".dtso",
        )

        dtbo(
            name = rule_base,
            srcs = [":" + dtso_rule],
            dtcopts = ["-@"],
            deps = [":all_wlan_dtsi"],
        )
    return dtbos

def define_target(target, dtbos):
    base_target = target.split("_")[0] if "_" in target else target
    target_dtbo_list = ["{}_{}".format(base_target, name.replace("/", "_")) for name in dtbos]

    native.filegroup(
        name = "{}_dtbos".format(base_target),
        srcs = target_dtbo_list,
    )

    for variant in get_variants_for(base_target):
        pkg_files(
            name = "{}_{}_wlan_dtbos".format(base_target, variant),
            srcs = target_dtbo_list,
            visibility = ["//visibility:private"],
            strip_prefix = strip_prefix.from_root(""),
            prefix = "",
            renames = {
                "{}_{}".format(base_target, name.replace("/", "_")): name
                for name in dtbos
            },
        )

        pkg_install(
            name = "{}_{}_dtbos_dist".format(base_target, variant),
            srcs = ["{}_{}_wlan_dtbos".format(base_target, variant)],
            destdir = "out/target/product/{}/dlkm/lib/modules".format(base_target),
        )

def define_all_targets():
    for t in get_all_targets_list():
        dtbos = define_all_dtbos(t)
        define_target(t, dtbos)
