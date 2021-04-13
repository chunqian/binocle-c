target("ogg")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    add_files("src/*.c")

    add_includedirs("include")
