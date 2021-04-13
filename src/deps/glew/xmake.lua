target("glew")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    if is_os("macosx") then
        add_defines(
            "HAVE_LIBC",
            "HX_MACOS"
            )
    end

    add_files("src/glew.c")

    add_includedirs("include")
