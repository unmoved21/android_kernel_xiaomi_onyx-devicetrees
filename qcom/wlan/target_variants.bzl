la_variants = [
    # keep sorted
    "consolidate",
    "perf",
]

vm_variants = [
    # keep sorted
    "debug-defconfig",
    "defconfig",
]

def get_variants_for(target):
    if target.endswith("-tuivm") or target.endswith("-oemvm"):
        return vm_variants
    return la_variants
