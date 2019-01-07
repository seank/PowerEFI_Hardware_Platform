def arm_none_repository(arch = "linux"):
    if arch == "linux":
        # version 5.4 reports an "INFO" message that says wrong ELF, yet it seems to work OK
        native.new_http_archive(
            name = "com_arm_developer_toolchain_gcc_5_4",
            build_file = str(Label("//compilers:arm_none_gcc_5.4.BUILD")),
            strip_prefix = "gcc-arm-none-eabi-5_4-2016q3",
            url = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/5_4-2016q3/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2",
            # TODO: Test 7-3-1
            #url = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2",
            #strip_prefix = "gcc-arm-none-eabi-7-2018-q2-update",
            sha256 = "a397c49bdd0cf17a38a494cb691baf68b8dcffa4d4c06561ef3d71b2ab4c92a1",
        )
    if arch == "mac":
        native.new_http_archive(
            name = "com_arm_developer_toolchain_gcc_5_4",
            build_file = str(Label("//compilers:arm_none_gcc_5.4.BUILD")),
            strip_prefix = "gcc-arm-none-eabi-5_4-2016q3",
            url = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/5_4-2016q3/gcc-arm-none-eabi-5_4-2016q3-20160926-mac.tar.bz2",
        )
