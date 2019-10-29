---
title: Building PADrend from source
summary: This tutorial describes how to build PADrend from source code.
permalink: installation_guide
author: Benjamin Eikel, Claudius Jähn, Ralf Petring, Sascha Brandt
last_updated: August 8, 2018
category: Installation Guide@0
order: 0
---

## Prerequisites

### C++ compiler (C++11 compatible)
To compile the libraries of PADrend, a C++ compiler that supports the C++11 standard is needed.
Make sure that your C++ compiler works as expected by compiling a simple C++ program (e.g. the program from [Wikipedia: C++](http://en.wikipedia.org/wiki/C++#Language_features)).

* On GNU/Linux and OS X, you can choose between [GCC](http://gcc.gnu.org/)  (>=4.7) and [ Clang](http://clang.llvm.org/) (>=3.1).
* On Windows, you can use [Mingw-w64](http://mingw-w64.org)
	* Download the latest [mingw-w64-install.exe](http://sourceforge.net/projects/mingw-w64/files/) and install it using the following settings: 
		* Version: 8.1.0 (at least 5.1.0)
		* Architecture: x86_64
		* Threads: posix
		* Exception: seh
		* Build revision: largest available
		* Destination folder: `c:\mingw-w64` (the actual MinGW will then be installed in c:\mingw-w64\mingw64).

### CMake (>=3.1.0)
* The build system of PADrend is [CMake](http://www.cmake.org/).
* CMake creates a project for your IDE, or a Makefile, that uses the C++ compiler to compile PADrend.
* Install CMake by [downloading it](http://www.cmake.org/cmake/resources/software.html) or by using your package manager (e.g. the [package cmake-qt-gui for Debian](http://packages.debian.org/cmake-qt-gui): `apt-get install cmake-qt-gui`).
* Currently, you need at least CMake in version 3.1.0 to build PADrend.
* On windows, make sure to add it to the system path by checking the option _'Add CMake too the system PATH for current user'_ during installation.

### (optional) Ninja build system
For building PADrend (not the libraries!) the [Ninja](https://github.com/martine/ninja) build system can be used.

### Choose your IDE
* We recommend using [Atom](https://atom.io/) with the plugins [autocomplete-clang](https://atom.io/packages/autocomplete-clang), [linter-clang](https://atom.io/packages/linter-clang) and [language-escript](https://atom.io/packages/language-escript).
* Other possible IDEs are: [Visual Studio Code](https://code.visualstudio.com/), [CLion](https://www.jetbrains.com/clion/), [CodeBlocks](http://www.codeblocks.org/), [Eclipse](https://www.eclipse.org/)
* Visual Studio is currently not supported.

### GIT
* You need GIT to get the source.
* If it is not already installed on your machine you should be able to simply install it using your favorite package manager (e.g., `apt-get install git`).
* On windows, you can download it [here](https://gitforwindows.org/).
	* The _Windows Explorer integration_ is not necessary.
	* The recommended _line ending conversion_ is _Checkout as-is, commit as-is_. (Note: Only use Unix-style line endings!)
	* (optional) Install a graphical git user interface (e.g. [Toritoise-GIT](https://code.google.com/p/tortoisegit/))
		
### Getting the source
* Open a terminal (or powershell) and navigate to a folder you want to install PADrend to (The path should not contain any spaces).
* **Public open source part**: Clone the repository `https://github.com/PADrend/PADrendComplete.git` using the `--recursive` option:
```
git clone --recursive https://github.com/PADrend/PADrendComplete.git PADrend
```
 All required (Open Source) repositories are embedded as submodules.
* **Optional closed source part; needs permission to access**: Clone the repository `https://git.cs.upb.de/algoCG/extPlugins.git` into the PADrend root folder:
```
cd PADrend
git clone https://git.cs.upb.de/algoCG/extPlugins.git
```

----

## Building PADrend

### Windows (command line via Ninja)
For building PADrend the [Ninja](https://github.com/martine/ninja) build system can be used.
* A binary release can be found here: [https://github.com/martine/ninja/releases](https://github.com/martine/ninja/releases)
* Proposal: Copy the `ninja.exe` into your `mingw-w64/mingw64/bin` folder, so that it can easily be found.

#### Building PADrend
* Open CMake-GUI.
* Set the source path to `C:\PADrend` and the build path to `C:\PADrend\build`.
* _Configure_ -> Target: _Ninja_ -> _Specify native compilers_ -> C: `c:\mingw-w64\mingw64\bin\gcc.exe`; C++ `c:\mingw-w64\mingw64\bin\g++.exe`
* You should now have a list of MinSG-Extensions you can build. Select the ones to compile. The following list is a recommendation if you don't know which ones to choose:
	* MINSG_EXT_BLUE_SURFELS, MINSG_EXT_COLORCUBES , MINSG_EXT_EVALUATORS , MINSG_EXT_IMAGECOMPARE,  MINSG_EXT_PARTICLES , MINSG_EXT_SVS , MINSG_EXT_TRIANGULATION, MINSG_EXT_WAYPOINTS, MINSG_EXT_VISIBILITY_SUBDIVISION.
* Setting the following compiler flags (`CMAKE_CXX_FLAGS`) is recommended:
	` -pedantic -Wall -Wextra -Wshadow -Wcast-qual -Wcast-align -Wlogical-op -Wredundant-decls -Wdisabled-optimization -Wstack-protector -Winit-self -Wmissing-include-dirs -Wswitch-default -Wswitch-enum -Wabi -Wctor-dtor-privacy -Wstrict-null-sentinel -Wno-non-template-friend -Wold-style-cast -Woverloaded-virtual -Wno-pmf-conversions -Wsign-promo -Wmissing-declarations -Wno-abi`
* Hit _Configure_ again and then _Generate_. The Ninja-makefile will be generated.
* Open a powershell or cmd window.
* Navigate into build folder, e.g.: `cd C:\PADrend`
* Start the build process: `ninja` (or `mingw32-make.exe` when using MinGW Makefiles) 
* For multi-threaded building use the `-j` option, e.g., `ninja -j8`

#### Notes
* Make sure the path where PADrend is located is short (e.g.`d:/PADrend`)! Otherwise some libraries can not be built due to too long path names.
* When using MinGW in a 32-bit version, set `CMAKE_C_FLAGS` to `-march=i586`. Without this, you probably will get [linker errors](http://stackoverflow.com/questions/130740/link-error-when-compiling-gcc-atomic-operation-in-32-bit-mode) when building OpenAL.
* If receiving the error "expecting string instruction after rep", read the bug report [http://sourceforge.net/p/mingw/bugs/2031/](http://sourceforge.net/p/mingw/bugs/2031/)
* If the linker reports `undefined reference to '__gxx_personality_v0'` (or similar), add `-lstdc++` to the CMake parameter `CMAKE_CXX_STANDARD_LIBRARIES`.
 You may also consider adding `-shared-libstdc++` to `CMAKE_CXX_FLAGS` (result is not confirmed.).
* If CMake-GUI complains about a missing `libiconv-2.dll`, just copy it from your `MinGW/bin` folder into your CMake `bin` folder.
* If CMake-GUI complains about a missing `windres.exe`, check the path. The auto detection may fail here.
* Instead of the built version of OpenAL32.dll, you may use the official [OpenAL-installer](http://www.openal.org/) version of the library. It provides better sound quality, but you have to install the OpenAL-Runtime (oalinst.exe) on your system in order to start PADrend.

----

### Linux

#### External libraries
Most external libraries required by PADrend are build automatically.
But, we recommend installing the following (optional) libraries (Debian):
[libcurl4-openssl-dev](http://packages.debian.org/libcurl4-openssl-dev),
[libxml2-dev](http://packages.debian.org/libxml2-dev),
[libarchive-dev](http://packages.debian.org/libarchive-dev)

On Debian, you can install them using the following command:
	sudo apt install libcurl4-openssl-dev libxml2-dev libarchive-dev

#### Notes
* When using OS X, you can check if there are development packages of the required libraries that you can install (e.g. by using [Fink](http://www.finkproject.org/) or [MacPorts](http://www.macports.org/)).
Otherwise, you have to compile the external libraries yourself.
* Generally, it is possible to use a compiler for building the external libraries that is different from the compiler used for building PADrend. To avoid problems, you should use the same compiler for both builds.

#### Building PADrend
You should do an [out-of source build](http://www.cmake.org/Wiki/CMake_FAQ#What_is_an_.22out-of-source.22_build.3F).
For this purpose, you have to create a separate build directory.
Now, you have to tell CMake to use the PADrend directory as source directory and the newly created directory as build directory.
Using the command line, you can do it like this:

```
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo -DMINSG_RECOMMENDED_EXT=True
```

Now, simply call `make` from the build directory to build.
For multi-threaded building use the `-j` option, e.g., `make -j8`

#### Notes (Clang on Linux)
* Setting the following compiler flags (`CMAKE_CXX_FLAGS`) is recommended:
  `-pedantic -Wall -Wextra -Wshadow -Wcast-qual -Wcast-align -Wredundant-decls -Wdisabled-optimization -Winit-self -Wmissing-include-dirs -Wswitch-default -Wswitch-enum -Wabi -Wctor-dtor-privacy -Wold-style-cast -Woverloaded-virtual -Wsign-promo`
  (See [Warning Options](http://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html#Warning-Options) and [C++ Dialect Options](http://gcc.gnu.org/onlinedocs/gcc/C_002b_002b-Dialect-Options.html#C_002b_002b-Dialect-Options).)

#### Notes (GCC on Linux) 
* Setting the following compiler flags (`CMAKE_CXX_FLAGS`) is recommended:
  `-ansi -pedantic -Wall -Wextra -Wshadow -Wcast-qual -Wcast-align -Wlogical-op -Wredundant-decls -Wdisabled-optimization -Wstack-protector -Winit-self -Wmissing-include-dirs -Wswitch-default -Wswitch-enum -Wabi -Wctor-dtor-privacy -Wstrict-null-sentinel -Wno-non-template-friend -Wold-style-cast -Woverloaded-virtual -Wno-pmf-conversions -Wsign-promo -Wmissing-declarations -Wunused-local-typedefs -Wzero-as-null-pointer-constant`
  (See [Warning Options](http://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html#Warning-Options) and [C++ Dialect Options](http://gcc.gnu.org/onlinedocs/gcc/C_002b_002b-Dialect-Options.html#C_002b_002b-Dialect-Options).)

----

## Starting PADrend
* To run PADrend, open a powershell or cmd window and navigate to your PADrend source folder, e.g.: `cd C:/PADrend`
* Run PADrend using the command:  `./build/PADrend` (Linux) or `.\build\PADrend.exe` (Windows)
* On Windows, you can also create a Link on your desktop. You only have to make sure, that the working directory is the PADrend source folder (e.g., `C:/PADrend`) and not the build folder.
* If you generated a project for your IDE, you can start PADrend out of your IDE.
	Make sure that the source directory of PADrend is used as working directory.
