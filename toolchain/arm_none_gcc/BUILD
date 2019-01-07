package(default_visibility = ["//visibility:public"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    #visibility = ["//toolchain/arm_compiler:__pkg__"],
    visibility = ["//visibility:public"],
)

filegroup(
    name = "gcc",
    srcs = [
        "arm-none-eabi-gcc",
        "@com_arm_developer_toolchain_gcc_5_4//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "arm-none-eabi-ar",
        "@com_arm_developer_toolchain_gcc_5_4//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "arm-none-eabi-ld",
        "@com_arm_developer_toolchain_gcc_5_4//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "arm-none-eabi-nm",
        "@com_arm_developer_toolchain_gcc_5_4//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "arm-none-eabi-objcopy",
        "@com_arm_developer_toolchain_gcc_5_4//:objcopy",
    ],
    visibility = ["//visibility:public"],
)

filegroup(
    name = "objdump",
    srcs = [
        "arm-none-eabi-objdump",
        "@com_arm_developer_toolchain_gcc_5_4//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "arm-none-eabi-strip",
        "@com_arm_developer_toolchain_gcc_5_4//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "arm-none-eabi-as",
        "@com_arm_developer_toolchain_gcc_5_4//:as",
    ],
)

filegroup(
    name = "tool-wrappers",
    srcs = [
        ":ar",
        ":as",
        ":gcc",
        ":ld",
        ":nm",
        ":objcopy",
        ":objdump",
        ":strip",
    ],
)
