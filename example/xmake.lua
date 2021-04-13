target("example")
    
    set_kind("binary")

    add_deps(
        "freetype",
        "kazmath",
        "parson",
        "physfs",
        "rxi_map",
        "zlib",
        "libuv",
        "wren",
        "sdl",
        "vorbis",
        "ogg",
        "glew",
        "lua",
        "newton"
        )

    -- after_build(function(target)
    --     import("core.base.task")
    --     task.run("project", {kind = "compile_commands"})
    -- end)

    set_targetdir("$(buildir)/$(mode)")

    add_files(
        "*.c",
        "gameplay/*.c"
        )

    add_includedirs(
        ".",
        "$(projectdir)/src/deps",
        "$(projectdir)/src/deps/glew",
        "$(projectdir)/src/deps/freetype",
        "$(projectdir)/src/deps/miniaudio",
        "$(projectdir)/src/deps/ogg",
        "$(projectdir)/src/deps/zlib",
        "$(projectdir)/src/deps/vorbis",
        "$(projectdir)/src/deps/sdl/include",
        "$(projectdir)/src/deps/stb_image",
        "$(projectdir)/src/deps/kazmath",
        "$(projectdir)/src/deps/physfs",
        "$(projectdir)/src/deps/sokol",
        "$(projectdir)/src/deps/libuv",
        "$(projectdir)/src/deps/wren",
        "$(projectdir)/src/binocle/core",
        "$(projectdir)/example/gameplay"
        )

    if is_os("macosx") then
        add_includedirs(
            "$(projectdir)/src/deps/glew/include",
            "$(projectdir)/src/deps/lua/src",
            "$(projectdir)/src/deps/newton"
            )
    end

    add_links(
        "freetype",
        "kazmath",
        "parson",
        "physfs",
        "rxi_map",
        "zlib",
        "libuv",
        "wren",
        "sdl",
        "vorbis",
        "ogg",
        "glew",
        "lua",
        "newton",
        "binocle"
        )

    if is_os("macosx") then
        add_frameworks(
            "OpenGL",
            "Cocoa",
            "IOKit",
            "CoreAudio",
            "CoreVideo",
            "ForceFeedback",
            "Carbon",
            "AudioToolbox"
            ) 
    end

    add_cflags("-std=c99")
