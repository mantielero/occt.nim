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

proc ax22d*(): Ax22dObj {.cdecl, constructor, importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc ax22d*(p: gp_Pnt2d; vx: Dir2dObj; vy: Dir2dObj): Ax22dObj {.cdecl, constructor,
    importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc ax22d*(p: gp_Pnt2d; v: Dir2dObj; sense: bool = true): Ax22dObj {.cdecl, constructor,
    importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc ax22d*(a: Ax2dObj; sense: bool = true): Ax22dObj {.cdecl, constructor,
    importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc setAxis*(this: var Ax22dObj; a1: Ax22dObj) {.cdecl, importcpp: "SetAxis", header: "gp_Ax22d.hxx".}
proc setXAxis*(this: var Ax22dObj; a1: Ax2dObj) {.cdecl, importcpp: "SetXAxis", header: "gp_Ax22d.hxx".}
proc setYAxis*(this: var Ax22dObj; a1: Ax2dObj) {.cdecl, importcpp: "SetYAxis", header: "gp_Ax22d.hxx".}
proc setLocation*(this: var Ax22dObj; p: gp_Pnt2d) {.cdecl, importcpp: "SetLocation",
    header: "gp_Ax22d.hxx".}
proc setXDirection*(this: var Ax22dObj; vx: Dir2dObj) {.cdecl, importcpp: "SetXDirection",
    header: "gp_Ax22d.hxx".}
proc setYDirection*(this: var Ax22dObj; vy: Dir2dObj) {.cdecl, importcpp: "SetYDirection",
    header: "gp_Ax22d.hxx".}
proc xAxis*(this: Ax22dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Ax22d.hxx".}
proc yAxis*(this: Ax22dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Ax22d.hxx".}
proc location*(this: Ax22dObj): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                 header: "gp_Ax22d.hxx".}
proc xDirection*(this: Ax22dObj): Dir2dObj {.noSideEffect, cdecl, importcpp: "XDirection",
                                   header: "gp_Ax22d.hxx".}
proc yDirection*(this: Ax22dObj): Dir2dObj {.noSideEffect, cdecl, importcpp: "YDirection",
                                   header: "gp_Ax22d.hxx".}
proc mirror*(this: var Ax22dObj; p: gp_Pnt2d) {.cdecl, importcpp: "Mirror", header: "gp_Ax22d.hxx".}
proc mirrored*(this: Ax22dObj; p: gp_Pnt2d): Ax22dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Ax22d.hxx".}
proc mirror*(this: var Ax22dObj; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Ax22d.hxx".}
proc mirrored*(this: Ax22dObj; a: Ax2dObj): Ax22dObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Ax22d.hxx".}
proc rotate*(this: var Ax22dObj; p: gp_Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax22d.hxx".}
proc rotated*(this: Ax22dObj; p: gp_Pnt2d; ang: cfloat): Ax22dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax22d.hxx".}
proc scale*(this: var Ax22dObj; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Ax22d.hxx".}
proc scaled*(this: Ax22dObj; p: gp_Pnt2d; s: cfloat): Ax22dObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax22d.hxx".}
proc transform*(this: var Ax22dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
                                        header: "gp_Ax22d.hxx".}
proc transformed*(this: Ax22dObj; t: Trsf2dObj): Ax22dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Ax22d.hxx".}
proc translate*(this: var Ax22dObj; v: gp_Vec2d) {.cdecl, importcpp: "Translate",
                                       header: "gp_Ax22d.hxx".}
proc translated*(this: Ax22dObj; v: gp_Vec2d): Ax22dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax22d.hxx".}
proc translate*(this: var Ax22dObj; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl, importcpp: "Translate",
    header: "gp_Ax22d.hxx".}
proc translated*(this: Ax22dObj; p1: gp_Pnt2d; p2: gp_Pnt2d): Ax22dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax22d.hxx".}
proc dumpJson*(this: Ax22dObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax22d.hxx".}
