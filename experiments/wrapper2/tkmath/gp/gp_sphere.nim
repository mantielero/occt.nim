##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpSphere* {.importcpp: "gp_Sphere", header: "gp_Sphere.hxx", bycopy.} = object ## ! Creates an
                                                                         ## indefinite sphere.


proc constructGpSphere*(): GpSphere {.cdecl, constructor, importcpp: "gp_Sphere(@)",
                                   dynlib: tkmath.}
proc constructGpSphere*(a3: GpAx3; radius: cfloat): GpSphere {.cdecl, constructor,
    importcpp: "gp_Sphere(@)", dynlib: tkmath.}
proc setLocation*(this: var GpSphere; loc: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var GpSphere; a3: GpAx3) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc setRadius*(this: var GpSphere; r: cfloat) {.cdecl, importcpp: "SetRadius",
    dynlib: tkmath.}
proc area*(this: GpSphere): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                                 dynlib: tkmath.}
proc coefficients*(this: GpSphere; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc uReverse*(this: var GpSphere) {.cdecl, importcpp: "UReverse", dynlib: tkmath.}
proc vReverse*(this: var GpSphere) {.cdecl, importcpp: "VReverse", dynlib: tkmath.}
proc direct*(this: GpSphere): bool {.noSideEffect, cdecl, importcpp: "Direct",
                                 dynlib: tkmath.}
proc location*(this: GpSphere): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                    dynlib: tkmath.}
proc position*(this: GpSphere): GpAx3 {.noSideEffect, cdecl, importcpp: "Position",
                                    dynlib: tkmath.}
proc radius*(this: GpSphere): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                   dynlib: tkmath.}
proc volume*(this: GpSphere): cfloat {.noSideEffect, cdecl, importcpp: "Volume",
                                   dynlib: tkmath.}
proc xAxis*(this: GpSphere): GpAx1 {.noSideEffect, cdecl, importcpp: "XAxis",
                                 dynlib: tkmath.}
proc yAxis*(this: GpSphere): GpAx1 {.noSideEffect, cdecl, importcpp: "YAxis",
                                 dynlib: tkmath.}
proc mirror*(this: var GpSphere; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpSphere; p: GpPnt): GpSphere {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpSphere; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpSphere; a1: GpAx1): GpSphere {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpSphere; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpSphere; a2: GpAx2): GpSphere {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpSphere; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpSphere; a1: GpAx1; ang: cfloat): GpSphere {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpSphere; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpSphere; p: GpPnt; s: cfloat): GpSphere {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpSphere; t: GpTrsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpSphere; t: GpTrsf): GpSphere {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpSphere; v: GpVec) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpSphere; v: GpVec): GpSphere {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpSphere; p1: GpPnt; p2: GpPnt) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpSphere; p1: GpPnt; p2: GpPnt): GpSphere {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}