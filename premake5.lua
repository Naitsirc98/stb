project "stb"
    kind "StaticLib"
    language "C"
    staticruntime "on"

    targetdir("bin/" .. output_dir .. "%{prj.name}")
    objdir("bin-inter/" .. output_dir .. "%{prj.name}")

    includedirs 
    {
        "stb"
    }

	files -- Header and source files
	{
		"%{prj.name}/stb/**.hpp",
		"%{prj.name}/stb/**.cpp"
	}

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        
    filter "configurations:Release"
        runtime "Release"
        optimize "on"