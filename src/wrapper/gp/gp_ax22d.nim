import gp_types
import ../standard/standard_types
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

proc ax22d*(): gp_Ax22d {.cdecl, constructor, importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc ax22d*(p: gp_Pnt2d; vx: gp_Dir2d; vy: gp_Dir2d): gp_Ax22d {.cdecl, constructor,
    importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc ax22d*(p: gp_Pnt2d; v: gp_Dir2d; sense: bool = true): gp_Ax22d {.cdecl, constructor,
    importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc ax22d*(a: gp_Ax2d; sense: bool = true): gp_Ax22d {.cdecl, constructor,
    importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc setAxis*(this: var gp_Ax22d; a1: gp_Ax22d) {.cdecl, importcpp: "SetAxis", header: "gp_Ax22d.hxx".}
proc setXAxis*(this: var gp_Ax22d; a1: gp_Ax2d) {.cdecl, importcpp: "SetXAxis", header: "gp_Ax22d.hxx".}
proc setYAxis*(this: var gp_Ax22d; a1: gp_Ax2d) {.cdecl, importcpp: "SetYAxis", header: "gp_Ax22d.hxx".}
proc setLocation*(this: var gp_Ax22d; p: gp_Pnt2d) {.cdecl, importcpp: "SetLocation",
    header: "gp_Ax22d.hxx".}
proc setXDirection*(this: var gp_Ax22d; vx: gp_Dir2d) {.cdecl, importcpp: "SetXDirection",
    header: "gp_Ax22d.hxx".}
proc setYDirection*(this: var gp_Ax22d; vy: gp_Dir2d) {.cdecl, importcpp: "SetYDirection",
    header: "gp_Ax22d.hxx".}
proc xAxis*(this: gp_Ax22d): gp_Ax2d {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Ax22d.hxx".}
proc yAxis*(this: gp_Ax22d): gp_Ax2d {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Ax22d.hxx".}
proc location*(this: gp_Ax22d): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                 header: "gp_Ax22d.hxx".}
proc xDirection*(this: gp_Ax22d): gp_Dir2d {.noSideEffect, cdecl, importcpp: "XDirection",
                                   header: "gp_Ax22d.hxx".}
proc yDirection*(this: gp_Ax22d): gp_Dir2d {.noSideEffect, cdecl, importcpp: "YDirection",
                                   header: "gp_Ax22d.hxx".}
proc mirror*(this: var gp_Ax22d; p: gp_Pnt2d) {.cdecl, importcpp: "Mirror", header: "gp_Ax22d.hxx".}
proc mirrored*(this: gp_Ax22d; p: gp_Pnt2d): gp_Ax22d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Ax22d.hxx".}
proc mirror*(this: var gp_Ax22d; a: gp_Ax2d) {.cdecl, importcpp: "Mirror", header: "gp_Ax22d.hxx".}
proc mirrored*(this: gp_Ax22d; a: gp_Ax2d): gp_Ax22d {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Ax22d.hxx".}
proc rotate*(this: var gp_Ax22d; p: gp_Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax22d.hxx".}
proc rotated*(this: gp_Ax22d; p: gp_Pnt2d; ang: cfloat): gp_Ax22d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax22d.hxx".}
proc scale*(this: var gp_Ax22d; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Ax22d.hxx".}
proc scaled*(this: gp_Ax22d; p: gp_Pnt2d; s: cfloat): gp_Ax22d {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax22d.hxx".}
proc transform*(this: var gp_Ax22d; t: gp_Trsf2d) {.cdecl, importcpp: "Transform",
                                        header: "gp_Ax22d.hxx".}
proc transformed*(this: gp_Ax22d; t: gp_Trsf2d): gp_Ax22d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Ax22d.hxx".}
proc translate*(this: var gp_Ax22d; v: gp_Vec2d) {.cdecl, importcpp: "Translate",
                                       header: "gp_Ax22d.hxx".}
proc translated*(this: gp_Ax22d; v: gp_Vec2d): gp_Ax22d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax22d.hxx".}
proc translate*(this: var gp_Ax22d; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl, importcpp: "Translate",
    header: "gp_Ax22d.hxx".}
proc translated*(this: gp_Ax22d; p1: gp_Pnt2d; p2: gp_Pnt2d): gp_Ax22d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax22d.hxx".}
proc dumpJson*(this: gp_Ax22d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax22d.hxx".}
