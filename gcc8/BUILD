package(default_visibility = ["//visibility:public"])

load(":cc_toolchain_config.bzl", "cc_toolchain_config")

filegroup(
    name = "empty",
    srcs = [],
)

# This is the entry point for --crosstool_top.  Toolchains are found
# by lopping off the name of --crosstool_top and searching for
# the "${CPU}" entry in the toolchains attribute.
cc_toolchain_suite(
    name = "toolchain",
    toolchains = {
        "k8|gcc": ":cc-compiler-k8",
        "k8": ":cc-compiler-k8",
    },
)

cc_toolchain(
    name = "cc-compiler-k8",
    all_files = ":empty",
    ar_files = ":empty",
    as_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 1,
    toolchain_config = ":linux_gnu_x86",
    toolchain_identifier = "linux_gnu_x86",
)

cc_toolchain_config(
    name = "linux_gnu_x86",
    compiler = "gcc",
    cpu = "k8",
)

toolchain(
    name = "cc-toolchain-k8",
    exec_compatible_with = [
    ],
    target_compatible_with = [
    ],
    toolchain = ":cc-compiler-k8",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
