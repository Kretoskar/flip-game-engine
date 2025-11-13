project "FlipSandbox"
    kind "ConsoleApp"
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

	includedirs
	{
		"%{wks.location}/src/FlipCore/Public",
		"%{wks.location}/src/FlipRendering/Public",
		"%{wks.location}/src/FlipSandbox/Public",
		"%{wks.location}/vendor/glfw/include",
		"%{wks.location}/vendor/glad/include",
	}

	links
	{
		"FlipCore",
		"FlipRendering",
	}

    filter "system:windows"
		systemversion "latest"
		
		defines
		{
			"GLCORE_PLATFORM_WINDOWS"
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