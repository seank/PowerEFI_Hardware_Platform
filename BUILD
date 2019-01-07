package(default_visibility = ["//visibility:public"])

load("//toolchain/arm_none_gcc:raw_binary.bzl", "raw_binary")

# TODO every sub directory should have a BUILD file. This is a Q&D fix.
cc_library(
    name = "powerefi_hw_hal",
    srcs = glob(["**/*.c"]),
    hdrs = glob(["**/*.h"]),
    # Compilation Options,
    deps = [
      "//build_info:build_info",
    ],
    linkstatic = 1,
)
