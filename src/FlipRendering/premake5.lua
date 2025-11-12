project "FlipRendering"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "on"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
	{
		"**.h",
		"**.cpp",
	}

    defines
	{
		"_CRT_SECURE_NO_WARNINGS",
	}


    includedirs
	{
	}

	links
	{
	}

    filter "system:windows"
		systemversion "latest"

    filter "configurations:Debug"
		defines "FLIP_DEBUG"
		runtime "Debug"
		symbols "on"

    filter "configurations:Release"
		defines "FLIP_RELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines "FLIP_DIST"
		runtime "Release"
		optimize "on"