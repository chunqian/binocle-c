target("newton")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    if is_os("macosx") then
        add_defines("_MACOSX_VER")
    end

    add_files(
        -- Common
        "dAnimation/*.cpp",
        "dContainers/*.cpp",
        "dMath/*.cpp",
        "dModel/*.cpp",
        "dVehicle/*.cpp",
        "dgMeshUtil/*.cpp",
        "dCustomJoints/*.cpp",
        "dVehicle/dPlayerController/*.cpp",
        "dVehicle/dMultiBodyVehicle/*.cpp",

        -- Core
        "dgCore/*.cpp",
        "dgNewton/*.cpp",
        "dgPhysics/*.cpp"
        )

    del_files("dCustomJoints/dCustomJointLibraryStdAfx.cpp")

    add_includedirs(
        "dAnimation",
        "dContainers",
        "dMath",
        "dModel",
        "dVehicle",
        "dgMeshUtil",
        "dCustomJoints",
        "dVehicle/dPlayerController",
        "dVehicle/dMultiBodyVehicle",
        "dgCore",
        "dgNewton",
        "dgPhysics"
        )

    add_cxxflags("-std=c++11")
