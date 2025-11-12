workspace "FlipEngine"
    architecture "x86_64"
	startproject "FlipSandbox"

    configurations
	{
		"Debug",
		"Release",
		"Dist"
	}
	
	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Dependencies"
	include "vendor/GLFW"
	include "vendor/glad"
group ""

group "Flip"
    include "src/FlipCore"
    include "src/FlipRendering"
    include "src/FlipSandbox"
group ""