includes("freetype")
includes("kazmath")
includes("parson")
includes("physfs")
includes("rxi_map")
includes("zlib")
includes("libuv")
includes("wren")

if is_os("macosx") then
    includes("sdl")
    includes("vorbis")
    includes("ogg")

    includes("glew")
    -- includes("luajit")
    includes("lua")
    -- includes("newton")
end
