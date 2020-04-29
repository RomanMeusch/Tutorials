---
author: Sascha Brandt
last_updated: December 02, 2019
license: cc-by-sa 4.0
order: 1
path: Installation Guide
permalink: atom_guide
summary: Setting up Atom for PADrend development
title: Setting up Atom
---

[Atom](https://atom.io/) is an extendable text editor that can be used to develop PADrend plugins.
It provides syntax highlighting for EScript, autocomplete for C++, and integrates well wit git. It has proven its worth in the development of PADrend.

## Installation
The easiest way to install Atom is to visit the [website](https://atom.io/) and follow the instructions there.
If you are using Linux, you might be able to install it via package manager (e.g., `snap install atom` on Ubuntu). Make sure you have a recent version that is compatible with the required plugins.

**Note:** Atom installs itself in your user folder, therefore does not require administrator privileges. However, it might affect your user quota (e.g., when working in the university network).

### EScript Plugin
For syntax highlighting for EScript, there is the [language-escript](https://atom.io/packages/language-escript) package available.
Simply go to the Atom package manager and install it (`Packages` -> `Settings View` -> `Install Packages/Themes`) or install it via command line `apm install language-escript`.

There is currently no autocomplete feature for EScript.

### C++ Autocomplete & Clang
For the C++ autocomplete feature, you need to install the packages [autocomplete-clang](https://atom.io/packages/autocomplete-clang) and [linter-clang](https://atom.io/packages/linter-clang) as well as a working [Clang](https://clang.llvm.org/) compiler.

* On Windows, visit the [LLVM website](http://releases.llvm.org/download.html) and download the latest LLVM binaries (e.g., [LLVM-9.0.0-win64.exe](http://releases.llvm.org/9.0.0/LLVM-9.0.0-win64.exe))
* On Linux, you should be able to install it via your preferred package manager (e.g., `sudo apt-get install clang`)

## Setting up Autocomplete
For autocomplete to work, you need a `.clang_complete` file in your project root folder (e.g., `C:\PADrend`).
This file contains all required compiler options and include paths (one per line) for clang to work with PADrend.
Include paths are prefixed with `-I<path>` and compiler options with `-D<option>`.
The following options should be enough to work with a basic PADrend installation:
```
-DMINSG_EXT_ADAPTIVEGLOBALVISIBILITYSAMPLING
-DMINSG_EXT_BLUE_SURFELS
-DMINSG_EXT_COLORCUBES
-DMINSG_EXT_EVALUATORS
-DMINSG_EXT_IMAGECOMPARE
-DMINSG_EXT_MIXED_EXTERN_VISIBILITY
-DMINSG_EXT_MULTIALGORENDERING
-DMINSG_EXT_OUTOFCORE
-DMINSG_EXT_PARTICLE
-DMINSG_EXT_PHYSICS
-DMINSG_EXT_RAYCASTING
-DMINSG_EXT_RTREE
-DMINSG_EXT_SAMPLING_ANALYSIS
-DMINSG_EXT_SKELETAL_ANIMATION
-DMINSG_EXT_SOUND
-DMINSG_EXT_SVS
-DMINSG_EXT_TREE_SYNC
-DMINSG_EXT_TRIANGLETREES
-DMINSG_EXT_TRIANGULATION
-DMINSG_EXT_TWIN_PARTITIONS
-DMINSG_EXT_VISIBILITYMERGE
-DMINSG_EXT_VISIBILITY_SUBDIVISION
-DMINSG_EXT_VOXEL_WORLD
-DMINSG_EXT_WAYPOINTS
-DMINSG_EXT_LOADERCOLLADA
-DMINSG_EXT_PATHTRACING
-DUTIL_HAVE_LIB_GLFW
-DUTIL_HAVE_LIB_STB
-DLIB_GL
-DLIB_GLEW
-IPADrendMain
-Imodules
-Imodules/EScript
-Imodules/E_GUI
-Imodules/E_Geometry
-Imodules/E_MinSG
-Imodules/E_Rendering
-Imodules/E_Sound
-Imodules/E_Util
-Imodules/GUI
-Imodules/Geometry
-Imodules/MinSG
-Imodules/Rendering
-Imodules/Sound
-Imodules/Util
-Ibuild/modules
-Ibuild/modules/GUI
-Ibuild/_deps/catch2-src/single_include
-Ibuild/_deps/glfw-src/include
-Ibuild/_deps/stb-src
-Ibuild/_deps/dr_libs-src
-Wno-missing-braces
-Wno-inconsistent-missing-override
-Wno-unused-private-field
```

If you work with Windows and MinGW you need also the following line for clang to work:
```
--target=x86_64-pc-windows-gnu
```

Now, if you want to add your own project (see [Extending your Plugin with C+](extending_your_plugin_with_c++)), simply add the line:
```
-IMyProject/src
```