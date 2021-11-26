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
  Ax22d* {.importcpp: "gp_Ax22d", header: "gp_Ax22d.hxx", bycopy.} = object ## ! Creates an object representing the reference
                                                                    ## ! co-ordinate system (OXY).


proc newAx22d*(): Ax22d {.cdecl, constructor, importcpp: "gp_Ax22d(@)", dynlib: tkmath.}
proc newAx22d*(p: Pnt2d; vx: Dir2d; vy: Dir2d): Ax22d {.cdecl, constructor,
    importcpp: "gp_Ax22d(@)", dynlib: tkmath.}
proc newAx22d*(p: Pnt2d; v: Dir2d; sense: bool = true): Ax22d {.cdecl, constructor,
    importcpp: "gp_Ax22d(@)", dynlib: tkmath.}
proc newAx22d*(a: Ax2d; sense: bool = true): Ax22d {.cdecl, constructor,
    importcpp: "gp_Ax22d(@)", dynlib: tkmath.}
proc setAxis*(this: var Ax22d; a1: Ax22d) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setXAxis*(this: var Ax22d; a1: Ax2d) {.cdecl, importcpp: "SetXAxis", dynlib: tkmath.}
proc setYAxis*(this: var Ax22d; a1: Ax2d) {.cdecl, importcpp: "SetYAxis", dynlib: tkmath.}
proc setLocation*(this: var Ax22d; p: Pnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setXDirection*(this: var Ax22d; vx: Dir2d) {.cdecl, importcpp: "SetXDirection",
    dynlib: tkmath.}
proc setYDirection*(this: var Ax22d; vy: Dir2d) {.cdecl, importcpp: "SetYDirection",
    dynlib: tkmath.}
proc xAxis*(this: Ax22d): Ax2d {.noSideEffect, cdecl, importcpp: "XAxis", dynlib: tkmath.}
proc yAxis*(this: Ax22d): Ax2d {.noSideEffect, cdecl, importcpp: "YAxis", dynlib: tkmath.}
proc location*(this: Ax22d): Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                 dynlib: tkmath.}
proc xDirection*(this: Ax22d): Dir2d {.noSideEffect, cdecl, importcpp: "XDirection",
                                   dynlib: tkmath.}
proc yDirection*(this: Ax22d): Dir2d {.noSideEffect, cdecl, importcpp: "YDirection",
                                   dynlib: tkmath.}
proc mirror*(this: var Ax22d; p: Pnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Ax22d; p: Pnt2d): Ax22d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Ax22d; a: Ax2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Ax22d; a: Ax2d): Ax22d {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Ax22d; p: Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Ax22d; p: Pnt2d; ang: cfloat): Ax22d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Ax22d; p: Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: Ax22d; p: Pnt2d; s: cfloat): Ax22d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Ax22d; t: Trsf2d) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: Ax22d; t: Trsf2d): Ax22d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Ax22d; v: Vec2d) {.cdecl, importcpp: "Translate",
                                       dynlib: tkmath.}
proc translated*(this: Ax22d; v: Vec2d): Ax22d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Ax22d; p1: Pnt2d; p2: Pnt2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Ax22d; p1: Pnt2d; p2: Pnt2d): Ax22d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: Ax22d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}