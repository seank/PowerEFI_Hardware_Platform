package(default_visibility = ["//visibility:public"])

# Generate a c file with the build info such as git revision etc.
# TODO: This is a bit hacky and should be revisted. It may make more sense to
# use linkstamp or something similar.
genrule(
  name = "git_version_autogen",
  srcs = [],  # NOTE: add files to srcs, if we want them to end up
              # in the sandbox,
  outs = [
    # NOTE: Using .cxx extension to keep excluded from powerefi_hw_hal lib glob.
    "git_rev_autogen.cxx",
  ],
  message = "Generating build info C source file.",
  cmd = 'export BUILD_CURRENT_TIME=$$(grep -Po \"^\CURRENT_TIME \K.*\" bazel-out/volatile-status.txt) && ' +
        'export BUILD_STABLE_GIT_COMMIT=$$(grep -Po \"^\STABLE_GIT_COMMIT \K.*\" bazel-out/stable-status.txt) && ' +
        'export BUILD_STABLE_USER_NAME=$$(grep -Po \"^\STABLE_USER_NAME \K.*\" bazel-out/stable-status.txt) && ' +
        'export BUILD_STABLE_GIT_TAG=$$(grep -Po \"^\STABLE_GIT_TAG \K.*\" bazel-out/stable-status.txt) && ' +
        'echo  "#include \\"build_info/build_info.h\\"" > $(location git_rev_autogen.cxx) && ' +
        'echo "char build_time_autogen[] = \\"$$BUILD_CURRENT_TIME\\";" >> $(location git_rev_autogen.cxx) && ' +
        'echo "char build_stable_git_commit[] = \\"$$BUILD_STABLE_GIT_COMMIT\\";" >> $(location git_rev_autogen.cxx) && ' +
        'echo "char build_user[] = \\"$$BUILD_STABLE_USER_NAME\\";" >> $(location git_rev_autogen.cxx) && ' +
        'echo "char build_stable_git_tag[] = \\"$$BUILD_STABLE_GIT_TAG\\";" >> $(location git_rev_autogen.cxx)',
  # Set stamp to true, otherwise volatile-status.txt wont be generated until
  # after this genrule executes.
  stamp = True,
)

cc_library(
  name = "build_info",
  srcs = [
    ":git_version_autogen",
    "build_info.h",
  ],
)