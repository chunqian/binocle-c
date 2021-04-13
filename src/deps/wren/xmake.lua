target("wren")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    add_files(
        "src/cli/modules.c",
        "src/cli/path.c",
        "src/cli/vm.c",
        "src/module/io.c",
        "src/module/os.c",
        "src/module/repl.c",
        "src/module/scheduler.c",
        "src/module/timer.c",
        "src/optional/wren_opt_meta.c",
        "src/optional/wren_opt_random.c",
        "src/vm/wren_compiler.c",
        "src/vm/wren_core.c",
        "src/vm/wren_debug.c",
        "src/vm/wren_primitive.c",
        "src/vm/wren_utils.c",
        "src/vm/wren_value.c",
        "src/vm/wren_vm.c"
        )

    add_includedirs(
        "src/cli",
        "src/include",
        "src/module",
        "src/optional",
        "src/vm",
        "../libuv/include"
        )
