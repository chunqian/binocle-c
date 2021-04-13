target("zlib")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    add_files("*.c")

    add_includedirs(".")
