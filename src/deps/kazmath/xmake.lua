target("kazmath")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    if is_os("macosx") then
        add_includedirs("../lua/src")
    end

    add_files("*.c")

    add_includedirs(".")
