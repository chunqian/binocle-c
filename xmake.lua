set_project("binocle-c")

set_version("0.1.0", {build = "%Y%m%d%H%M"})

set_xmakever("2.5.3")

set_config("buildir", "xmake_build")
set_config("mode", "debug")
set_config("plat", "macosx")
set_config("arch", "x86_64")

includes("src")
includes("example")
