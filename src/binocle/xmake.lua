target("binocle")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    add_files(
        "core/*.c",
        "core/binocle_miniaudio.m"
        )

    add_includedirs("core")

    add_includedirs(
        "$(projectdir)/src/deps",
        "$(projectdir)/src/deps/glew",
        "$(projectdir)/src/deps/freetype",
        "$(projectdir)/src/deps/miniaudio",
        "$(projectdir)/src/deps/ogg",
        "$(projectdir)/src/deps/zlib",
        "$(projectdir)/src/deps/vorbis",
        "$(projectdir)/src/deps/sdl/include",
        -- "$(projectdir)/src/deps/sdl_mixer",
        "$(projectdir)/src/deps/stb_image",
        "$(projectdir)/src/deps/kazmath",
        "$(projectdir)/src/deps/physfs",
        "$(projectdir)/src/deps/sokol",
        "$(projectdir)/src/deps/libuv",
        "$(projectdir)/src/deps/wren"
        )

    if is_os("macosx") then
        add_files("core/PlayerPrefs.mm")
        
        add_includedirs("$(projectdir)/src/deps/lua/src")
    end
