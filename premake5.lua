project "gtest"
	kind "StaticLib"
	language "C++"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"googletest/src/**.h",
		"googletest/src/**.cpp",
		"googletest/include/**.h"
	}

	includedirs {
		"googletest/include"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "on"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"


project "gmock"
	kind "StaticLib"
	language "C++"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"googlemock/src/**.h",
		"googlemock/src/**.cpp",
		"googlemock/include/**.h"
	}

	includedirs {
		"googlemock/include"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "on"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
