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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpAx22d* {.importcpp: "gp_Ax22d", header: "gp_Ax22d.hxx", bycopy.} = object ## ! Creates an object
                                                                      ## representing the reference
                                                                      ## !
                                                                      ## co-ordinate system (OXY).


proc constructGpAx22d*(): GpAx22d {.cdecl, constructor, importcpp: "gp_Ax22d(@)",
                                 dynlib: tkmath.}
proc constructGpAx22d*(p: GpPnt2d; vx: GpDir2d; vy: GpDir2d): GpAx22d {.cdecl,
    constructor, importcpp: "gp_Ax22d(@)", dynlib: tkmath.}
proc constructGpAx22d*(p: GpPnt2d; v: GpDir2d; sense: bool = standardTrue): GpAx22d {.
    cdecl, constructor, importcpp: "gp_Ax22d(@)", dynlib: tkmath.}
proc constructGpAx22d*(a: GpAx2d; sense: bool = standardTrue): GpAx22d {.cdecl,
    constructor, importcpp: "gp_Ax22d(@)", dynlib: tkmath.}
proc setAxis*(this: var GpAx22d; a1: GpAx22d) {.cdecl, importcpp: "SetAxis",
    dynlib: tkmath.}
proc setXAxis*(this: var GpAx22d; a1: GpAx2d) {.cdecl, importcpp: "SetXAxis",
    dynlib: tkmath.}
proc setYAxis*(this: var GpAx22d; a1: GpAx2d) {.cdecl, importcpp: "SetYAxis",
    dynlib: tkmath.}
proc setLocation*(this: var GpAx22d; p: GpPnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setXDirection*(this: var GpAx22d; vx: GpDir2d) {.cdecl,
    importcpp: "SetXDirection", dynlib: tkmath.}
proc setYDirection*(this: var GpAx22d; vy: GpDir2d) {.cdecl,
    importcpp: "SetYDirection", dynlib: tkmath.}
proc xAxis*(this: GpAx22d): GpAx2d {.noSideEffect, cdecl, importcpp: "XAxis",
                                 dynlib: tkmath.}
proc yAxis*(this: GpAx22d): GpAx2d {.noSideEffect, cdecl, importcpp: "YAxis",
                                 dynlib: tkmath.}
proc location*(this: GpAx22d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                     dynlib: tkmath.}
proc xDirection*(this: GpAx22d): GpDir2d {.noSideEffect, cdecl,
                                       importcpp: "XDirection", dynlib: tkmath.}
proc yDirection*(this: GpAx22d): GpDir2d {.noSideEffect, cdecl,
                                       importcpp: "YDirection", dynlib: tkmath.}
proc mirror*(this: var GpAx22d; p: GpPnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx22d; p: GpPnt2d): GpAx22d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpAx22d; a: GpAx2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx22d; a: GpAx2d): GpAx22d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpAx22d; p: GpPnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpAx22d; p: GpPnt2d; ang: cfloat): GpAx22d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpAx22d; p: GpPnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpAx22d; p: GpPnt2d; s: cfloat): GpAx22d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpAx22d; t: GpTrsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpAx22d; t: GpTrsf2d): GpAx22d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpAx22d; v: GpVec2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpAx22d; v: GpVec2d): GpAx22d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpAx22d; p1: GpPnt2d; p2: GpPnt2d) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpAx22d; p1: GpPnt2d; p2: GpPnt2d): GpAx22d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: GpAx22d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}