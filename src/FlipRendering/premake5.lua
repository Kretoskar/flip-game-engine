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
		"%{wks.location}/src/FlipCore/Public",
		"%{wks.location}/src/FlipRendering/Public",
		
		"%{wks.location}/vendor/glfw/include",
		"%{wks.location}/vendor/glad/include",
	}

	links
	{
		"opengl32.lib",
		"Glad",
	}

    filter "system:windows"
		systemversion "latest"
		
		defines
		{
			"GLCORE_PLATFORM_WINDOWS",
			"GLFW_INCLUDE_NONE"
		}

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