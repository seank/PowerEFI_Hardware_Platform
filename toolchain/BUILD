# This is the entry point for --crosstool_top.  Toolchains are found
# by lopping off the name of --crosstool_top and searching for
# 'cc-compiler-${CPU}' in this BUILD file, where CPU is the target CPU
# specified in --cpu.
#
# This file group should include
#   * all cc_toolchain targets supported
#   * all file groups that said cc_toolchain might refer to,
# including the default_grte_top setting in the CROSSTOOL
# protobuf.
package(default_visibility = ["//visibility:public"])

filegroup(
    name = "toolchain_fg",
    srcs = [
        ":arm_none_all_files",
        ":cc-compiler-cortex-m3",
        "@com_arm_developer_toolchain_gcc_5_4//:compiler_components",
    ],
)

filegroup(
    name = "srcs",
    srcs = glob(["**"]) + [
        "//toolchain/arm_none_gcc:srcs",
    ],
    visibility = ["//toolchain/arm_none_gcc:__pkg__"],
)

cc_toolchain_suite(
    name = "toolchain",
    # target_cpu | compiler
    toolchains = {
        "cortex-m3": "cc-compiler-cortex-m3",
    },
)

filegroup(
    name = "arm_none_all_files",
    srcs = [
        "//toolchain/arm_none_gcc:tool-wrappers",
        "@com_arm_developer_toolchain_gcc_5_4//:compiler_pieces",
    ],
)

filegroup(
    name = "arm_none_linker_files",
    srcs = [
        "//toolchain/arm_none_gcc:ar",
        "//toolchain/arm_none_gcc:gcc",
        "//toolchain/arm_none_gcc:ld",
        "//toolchain/arm_none_gcc:objcopy",
        "@com_arm_developer_toolchain_gcc_5_4//:compiler_pieces",
    ],
)

filegroup(
    name = "arm_none_compiler_files",
    srcs = [
        "//toolchain/arm_none_gcc:as",
        "//toolchain/arm_none_gcc:gcc",
        "//toolchain/arm_none_gcc:ld",
        "//toolchain/arm_none_gcc:objcopy",
    ],
)

filegroup(
    name = "empty",
    srcs = [],
)

cc_toolchain(
    name = "cc-compiler-cortex-m3",
    all_files = ":arm_none_all_files",
    compiler_files = ":arm_none_compiler_files",
    cpu = "cortex-m3",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":arm_none_linker_files",
    objcopy_files = "//toolchain/arm_none_gcc:objcopy",
    static_runtime_libs = [":empty"],
    strip_files = "//toolchain/arm_none_gcc:strip",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)
