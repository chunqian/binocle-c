target("physfs")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    if is_os("macosx") then
        add_files(
            "physfs_platform_posix.c",
            "physfs_platform_apple.m"
            )
    end

    add_files(
        "physfs.c",
        "physfs_archiver_7z.c",
        "physfs_archiver_dir.c",
        "physfs_archiver_grp.c",
        "physfs_archiver_hog.c",
        "physfs_archiver_iso9660.c",
        "physfs_archiver_mvl.c",
        "physfs_archiver_qpak.c",
        "physfs_archiver_slb.c",
        "physfs_archiver_unpacked.c",
        "physfs_archiver_vdf.c",
        "physfs_archiver_wad.c",
        "physfs_archiver_zip.c",
        "physfs_byteorder.c",
        "physfs_unicode.c"
        )

    add_includedirs(".")

    add_cflags("-std=gnu99")
