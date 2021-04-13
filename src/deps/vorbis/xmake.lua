target("vorbis")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    if not is_os("windows") then
        add_defines("HAVE_ALLOCA_H")
    end

    add_files("lib/*.c")

    del_files(
        "lib/psytune.c",
        "lib/barkmel.c",
        "lib/tone.c",
        "lib/lookup.c"
        )

    add_includedirs(
        "include",
        "lib",
        "../ogg/include"
        )
