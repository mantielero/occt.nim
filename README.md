# occt
OpenCascade is an open-source software development platform used for building 3D modeling and visualization applications. It provides a set of tools that allow developers to create complex geometric models and perform operations on them, such as Boolean operations, intersections, and extrusions. 

OpenCascade is often used in the engineering, architecture, and manufacturing industries for designing and analyzing objects and structures.

This is a wrapper that enables using OpenCascade from Nim.

> The site it is not maintained. Maybe in the future: Further documentation in [occt.nim site](https://mantielero.github.io/occt-site/)

# Example
The following has been done with **occt.nim**.

![](./examples/bottle.png)

[3d model viewer](https://3dviewer.net/embed.html#model=https://raw.githubusercontent.com/mantielero/occt.nim/main/examples/tutorials/occt_tutorial/bottle.stp$camera=-8.39009,-87.10222,124.60955,0.00000,0.00000,38.50000,0.00000,1.00000,0.00000,45.00000$cameramode=perspective$envsettings=fishermans_bastion,off$backgroundcolor=255,255,255,255$defaultcolor=200,200,200$edgesettings=off,0,0,0,1)


# How to install?
Right now I am only testing it in Linux (ArchLinux). You can install OpenCascade like:
```sh
$ yay -S opencascade
``` 
In order to install the bindings:
```sh
$ nimble install https://github.com/mantielero/occt.nim
```


# Status
Right now, a significant part of the library is wrapped. There are 75 packages already wrapped (in better or worst shape). For sure, there are much more functions wrapped than what you might need.

Most of the bindings are untested. On the other hand, they should work (or they should work with very little modification).

Wrapping the functions is the first step. Later you need more convenient functions that make the library more convenient to use (more "Nim-ish" -if that word exists-).

# Library structure
The wrapped packages are located under `src/wrapper`.

In the folder `src/lib`, some functions are included in order to make easier dealing with OpenCascade.

# I wanna help!
There are many things that can be done:
1. Using the library. This will help to detect issues. This is about populating the `examples` folder.
2. Improving the usability. Some examples on how to improve the usability can be found in [src/lib/foundation/gp.nim](https://github.com/mantielero/occt.nim/blob/main/src/lib/foundation/gp.nimsrc/lib/foundation/gp.nim) or [src/lib/foundation/iter.nim](https://github.com/mantielero/occt.nim/blob/main/src/lib/foundation/iter.nim).
3. Adding easier API's like CadQuery or RepliCAD are proposing. An example is [src/lib/sketcher/sketcher2d.nim](https://github.com/mantielero/occt.nim/blob/main/src/lib/sketcher/sketcher2d.nim). With that API you can do things like [examples/api/sketcher2d_01.nim](https://github.com/mantielero/occt.nim/blob/main/examples/api/sketcher2d_01.nim).
4. [OCCTUtils](https://github.com/ulikoehler/OCCUtils): seems interesting as well. It could serve as inspiration also. See also https://techoverflow.net/category/opencascade/
5. If you wanna add a new package, [here](https://github.com/mantielero/occt.nim/tree/main/src/wrapper/breptools) you can find some instructions. It is pretty straightforward.

# License
I don't know much about licenses (any advise is wellcomed). My code is BSD, but you need to fulfill whatever [OpenCascade license requires](https://dev.opencascade.org/resources/licensing) which is: GNU Lesser General Public License (LGPL) version 2.1.

