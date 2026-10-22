load("@bazel_skylib//lib:sets.bzl", "sets")

_platform_map = {
    "alor": {
        "dtbo_list": [
            # keep sorted
            {"name": "alor-atp-peach.dtbo"},
            {"name": "alor-cdp-peach.dtbo"},
            {"name": "alor-cdp-wcn7750.dtbo"},
            {"name": "alor-mtp-peach.dtbo"},
            {"name": "alor-mtp-wcn7750.dtbo"},
            {"name": "alor-qrd-peach.dtbo"},
            {"name": "alor-qrd-wcn7750.dtbo"},
            {"name": "alor-rcm-peach.dtbo"},
            {"name": "alor-rcm-wcn7750.dtbo"},
        ],
    },
    "art": {
        "dtbo_list": [
            # keep sorted
            {"name": "art-atp-fig.dtbo"},
            {"name": "art-cdp-fig.dtbo"},
            {"name": "art-cdp-peach.dtbo"},
            {"name": "art-heap-cdp-fig.dtbo"},
            {"name": "art-heap-mtp-fig.dtbo"},
            {"name": "art-heap-rcm-fig.dtbo"},
            {"name": "art-leap-mtp-fig.dtbo"},
            {"name": "art-leap-mtp-peach.dtbo"},
            {"name": "art-leap-qrd-fig.dtbo"},
            {"name": "art-leap-rcm-fig.dtbo"},
            {"name": "art-mtp-fig.dtbo"},
            {"name": "art-mtp-peach.dtbo"},
            {"name": "art-omtp-fig.dtbo"},
            {"name": "art-qrd-fig.dtbo"},
            {"name": "art-rcm-fig.dtbo"},
            {"name": "art-rcm-peach.dtbo"},
            {"name": "art-hdk-fig.dtbo"},
        ],
    },
    "bengal": {
        "dtbo_list": [
            # keep sorted
            {"name": "bengal-cnss.dtbo"},
        ],
    },
    "bourtzi": {
        "dtbo_list": [
            # keep sorted
            {"name": "bourtzi-atp-adrastea.dtbo"},
            {"name": "bourtzi-cdp-adrastea.dtbo"},
            {"name": "bourtzi-mtp-adrastea.dtbo"},
            {"name": "bourtzi-mtp-wcn6450.dtbo"},
            {"name": "bourtzi-qrd-adrastea.dtbo"},
            {"name": "bourtzi-qrd-wcn6450.dtbo"},
            {"name": "bourtzi-rcm-adrastea.dtbo"},
            {"name": "bourtzi-rcm-wcn6450.dtbo"},
        ],
    },
    "canoe": {
        "dtbo_list": [
            # keep sorted
            {"name": "canoe-cdp-kiwi-no-l3k.dtbo"},
            {"name": "canoe-cdp-peach-no-l3k.dtbo"},
            {"name": "canoe-kiwi-cnss.dtbo"},
            {"name": "canoe-peach-cnss.dtbo"},
        ],
    },
    "canoep": {
        "dtbo_list": [
            # keep sorted
            {"name": "canoep-hdk-peach-cnss.dtbo"},
        ],
    },
    "chora": {
        "dtbo_list": [
            # keep sorted
            {"name": "chora-atp-wcn6450.dtbo"},
            {"name": "chora-bonefish-mtp-wcn6450.dtbo"},
            {"name": "chora-bonefish-mtp-wcn7750.dtbo"},
            {"name": "chora-bonefish-qrd-wcn6450.dtbo"},
            {"name": "chora-bonefish-qrd-wcn7750.dtbo"},
            {"name": "chora-cdp-wcn6450.dtbo"},
            {"name": "chora-cdp-wcn7750.dtbo"},
            {"name": "chora-mtp-wcn6450.dtbo"},
            {"name": "chora-mtp-wcn7750.dtbo"},
            {"name": "chora-qrd-wcn6450.dtbo"},
            {"name": "chora-qrd-wcn7750.dtbo"},
            {"name": "chora-rcm-wcn6450.dtbo"},
            {"name": "chora-rcm-wcn7750.dtbo"},
        ],
    },
    "echo": {
        "dtbo_list": [
            # keep sorted
            {"name": "echo-fig-cnss.dtbo"},
        ],
    },
    "hamoa_la": {
        "dtbo_list": [
            # keep sorted
            {"name": "hamoa_la-kiwi-cnss.dtbo"},
            {"name": "hamoa_la-kiwi-qcb-cnss.dtbo"},
            {"name": "hamoa_la-kiwi-qcp-cnss.dtbo"},
        ],
    },
    "kera": {
        "dtbo_list": [
            # keep sorted
            {"name": "kera-atp-qca6750.dtbo"},
            {"name": "kera-cdp-qca6750.dtbo"},
            {"name": "kera-evk-wcn7760.dtbo"},
            {"name": "kera-mtp-qca6750.dtbo"},
            {"name": "kera-mtp-wcn7750.dtbo"},
            {"name": "kera-qna-atp-qca6750.dtbo"},
            {"name": "kera-qna-cdp-qca6750.dtbo"},
            {"name": "kera-qna-idp-qca6750.dtbo"},
            {"name": "kera-qna-idp-wcn7750.dtbo"},
            {"name": "kera-qna-mtp-qca6750.dtbo"},
            {"name": "kera-qna-mtp-wcn7750.dtbo"},
            {"name": "kera-qna-qrd-wcn7750.dtbo"},
            {"name": "kera-qna-rcm-qca6750.dtbo"},
            {"name": "kera-qna-rcm-wcn7750.dtbo"},
            {"name": "kera-qrd-wcn7750.dtbo"},
            {"name": "kera-rcm-qca6750.dtbo"},
            {"name": "kera-rcm-wcn7750.dtbo"},
        ],
    },
    "khaje": {
        "dtbo_list": [
            # keep sorted
            {"name": "khaje-cnss.dtbo"},
        ],
    },
    "lahaina": {
        "dtbo_list": [
            # keep sorted
            {"name": "lahaina-hsp-pro.dtbo"},
            {"name": "lahaina-hsp.dtbo"},
            {"name": "lahaina-qca6490-cnss.dtbo"},
        ],
    },
    "lemans": {
        "dtbo_list": [
            # keep sorted
            {"name": "lemans-gh-vm-cnss.dtbo"},
            {"name": "lemans-vm-cnss.dtbo"},
        ],
    },
    "malabar": {
        "dtbo_list": [
            # keep sorted
            {"name": "malabar-adrastea.dtbo"},
        ],
    },
    "monaco": {
        "dtbo_list": [
            # keep sorted
            {"name": "monaco-cnss.dtbo"},
            {"name": "monaco-gh-vm-cnss.dtbo"},
            {"name": "monaco-standalone-cnss.dtbo"},
            {"name": "monaco-vm-cnss.dtbo"},
        ],
    },
    "parrot": {
        "dtbo_list": [
            # keep sorted
            {"name": "parrot-atp-wcn3990.dtbo"},
            {"name": "parrot-idp-wcn3990.dtbo"},
            {"name": "parrot-idp-wcn6750.dtbo"},
            {"name": "parrot-idp-wcn6755.dtbo"},
            {"name": "parrot-qrd-wcn3990.dtbo"},
            {"name": "parrot-qrd-wcn6750.dtbo"},
            {"name": "parrot-qrd-wcn6755.dtbo"},
            {"name": "parrot-rumi-wcn3990.dtbo"},
        ],
    },
    "pebble": {
        "dtbo_list": [
            # keep sorted
            {"name": "pebble-atp-fig.dtbo"},
            {"name": "pebble-cdp-fig.dtbo"},
            {"name": "pebble-cdp-wcn7750.dtbo"},
            {"name": "pebble-kiwi-cnss.dtbo"},
            {"name": "pebble-mtp-fig.dtbo"},
            {"name": "pebble-mtp-kiwi.dtbo"},
            {"name": "pebble-mtp-peach.dtbo"},
            {"name": "pebble-mtp-wcn7750.dtbo"},
            {"name": "pebble-qrd-fig.dtbo"},
            {"name": "pebble-qrd-wcn7750.dtbo"},
            {"name": "pebble-rcm-fig.dtbo"},
            {"name": "pebble-rcm-kiwi.dtbo"},
            {"name": "pebble-rcm-peach.dtbo"},
            {"name": "pebble-rcm-wcn7750.dtbo"},
        ],
    },
    "pikachu": {
        "dtbo_list": [
            # keep sorted
            {"name": "pikachu-peach-cnss.dtbo"},
        ],
    },
    "pineapple": {
        "dtbo_list": [
            # keep sorted
            {"name": "pineapple-kiwi-cnss.dtbo"},
        ],
    },
    "pineapplep": {
        "dtbo_list": [
            # keep sorted
            {"name": "pineapplep-hdk-kiwi-cnss.dtbo"},
        ],
    },
    "ravelin": {
        "dtbo_list": [
            # keep sorted
            {"name": "ravelin-atp-adrastea.dtbo"},
            {"name": "ravelin-idp-adrastea.dtbo"},
            {"name": "ravelin-qca6490-cnss.dtbo"},
            {"name": "ravelin-qca6750-icnss.dtbo"},
            {"name": "ravelin-qrd-adrastea.dtbo"},
        ],
    },
    "sa510m": {
        "dtbo_list": [
            # keep sorted
            {"name": "sa510m-cnss.dtbo"},
        ],
    },
    "sa525m": {
        "dtbo_list": [
            # keep sorted
            {"name": "sa525m-cnss.dtbo"},
        ],
    },
    "sa8255p": {
        "dtbo_list": [
            # keep sorted
            {"name": "sa8255p-vm-cnss.dtbo"},
        ],
    },
    "sa8797p": {
        "dtbo_list": [
            # keep sorted
            {"name": "sa8797p-gunyah-vm-cnss.dtbo"},
            {"name": "sa8797p-sdp8-vm-cnss.dtbo"},
        ],
    },
    "scuba": {
        "dtbo_list": [
            # keep sorted
            {"name": "scuba-cnss.dtbo"},
        ],
    },
    "seraph": {
        "dtbo_list": [
            # keep sorted
            {"name": "seraph-advance-peach-cnss.dtbo"},
            {"name": "seraph-peach-cnss.dtbo"},
            {"name": "seraph-qar-cnss.dtbo"},
        ],
    },
    "shikra": {
        "dtbo_list": [
            # keep sorted
            {"name": "shikra-cnss.dtbo"},
        ],
    },
    "sun": {
        "dtbo_list": [
            # keep sorted
            {"name": "sun-kiwi-cnss-v8.dtbo"},
            {"name": "sun-kiwi-cnss.dtbo"},
            {"name": "sun-peach-cnss-v8.dtbo"},
            {"name": "sun-peach-cnss.dtbo"},
        ],
    },
    "sunp": {
        "dtbo_list": [
            # keep sorted
            {"name": "sunp-hdk-peach-cnss-v8.dtbo"},
            {"name": "sunp-rcm-peach-cnss-v8.dtbo"},
        ],
    },
    "tuna": {
        "dtbo_list": [
            # keep sorted
            {"name": "tuna-atp-kiwi.dtbo"},
            {"name": "tuna-cdp-wcn7750.dtbo"},
            {"name": "tuna-mtp-kiwi.dtbo"},
            {"name": "tuna-mtp-qmp1000-wcn7750.dtbo"},
            {"name": "tuna-mtp-wcn7750.dtbo"},
            {"name": "tuna-qrd-kiwi.dtbo"},
            {"name": "tuna-qrd-wcn7750.dtbo"},
            {"name": "tuna-rcm-kiwi.dtbo"},
            {"name": "tuna-rcm-wcn7750.dtbo"},
        ],
    },
    "volcano": {
        "dtbo_list": [
            # keep sorted
            {"name": "volcano-qca6750.dtbo"},
            {"name": "volcano-wcn6450.dtbo"},
        ],
    },
    "volcano6i": {
        "dtbo_list": [
            # keep sorted
            {"name": "volcano6i-peach-cnss.dtbo"},
        ],
    },
    "x1e80100": {
        "dtbo_list": [
            # keep sorted
            {"name": "x1e80100-kiwi-cnss.dtbo"},
            {"name": "x1e80100-kiwi-qcb-cnss.dtbo"},
            {"name": "x1e80100-kiwi-qcp-cnss.dtbo"},
        ],
    },
    "x1p42100": {
        "dtbo_list": [
            # keep sorted
            {"name": "x1p42100-kiwi-cnss.dtbo"},
        ],
    },
    "yupik": {
        "dtbo_list": [
            # keep sorted
            {"name": "yupik-qca6490-cnss.dtbo"},
            {"name": "yupik-qca6750-cnss.dtbo"},
        ],
    },
}

def _get_dtb_lists(target, dt_overlay_supported):
    if target == "hamoa":
        target = "hamoa_la"
    if not target in _platform_map:
        fail("{} not in device tree platform map!".format(target))

    ret = {
        "dtb_list": [],
        "dtbo_list": [],
    }

    for dtb_node in [target] + _platform_map[target].get("binary_compatible_with", []):
        ret["dtb_list"].extend(_platform_map[dtb_node].get("dtb_list", []))
        if dt_overlay_supported:
            ret["dtbo_list"].extend(_platform_map[dtb_node].get("dtbo_list", []))
        else:
            for dtb in _platform_map[dtb_node].get("dtb_list", []):
                dtb_base = dtb["name"].replace(".dtb", "")
                for dtbo in _platform_map[dtb_node].get("dtbo_list", []):
                    if not dtbo.get("apq", True) and dtb.get("apq", False):
                        continue

                    dtbo_base = dtbo["name"].replace(".dtbo", "")
                    ret["dtb_list"].append({"name": "{}-{}.dtb".format(dtb_base, dtbo_base)})

    return ret

def get_dtb_list(target, dt_overlay_supported = True):
    return [dtb["name"] for dtb in _get_dtb_lists(target, dt_overlay_supported).get("dtb_list", [])]

def get_dtbo_list(target, dt_overlay_supported = True):
    return [dtb["name"] for dtb in _get_dtb_lists(target, dt_overlay_supported).get("dtbo_list", [])]

def get_all_targets_list():
    return [t for t in _platform_map]

def get_dtbo_ids(target, dt_overlay_supported = True):
    ids = []
    for dtb_node in [target] + _platform_map[target].get("binary_compatible_with", []):
        for dtbo in _platform_map[dtb_node].get("dtbo_list", []):
            ids.append(dtbo.get("id", "0x00000000"))
    return ids
