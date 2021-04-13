target("lua")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    add_files("src/*.c")

    del_files(
        "src/lua.c",
        "src/luac.c"
        )

    add_includedirs(
        ".",
        "src"
        )
