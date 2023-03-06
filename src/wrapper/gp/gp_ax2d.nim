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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"

proc ax2d*(): Ax2dObj {.cdecl, constructor, importcpp: "gp_Ax2d(@)", header: "gp_Ax2d.hxx".}
proc ax2d*(p: Pnt2dObj; v: Dir2dObj): Ax2dObj {.cdecl, constructor, importcpp: "gp_Ax2d(@)",
                                    header: "gp_Ax2d.hxx".}
proc setLocation*(this: var Ax2dObj; locat: Pnt2dObj) {.cdecl, importcpp: "SetLocation",
    header: "gp_Ax2d.hxx".}
proc setDirection*(this: var Ax2dObj; v: Dir2dObj) {.cdecl, importcpp: "SetDirection",
    header: "gp_Ax2d.hxx".}
proc location*(this: Ax2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Location",
                                header: "gp_Ax2d.hxx".}
proc direction*(this: Ax2dObj): Dir2dObj {.noSideEffect, cdecl, importcpp: "Direction",
                                 header: "gp_Ax2d.hxx".}
proc isCoaxial*(this: Ax2dObj; other: Ax2dObj; angularTolerance: cfloat;
               linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoaxial", header: "gp_Ax2d.hxx".}
proc isNormal*(this: Ax2dObj; other: Ax2dObj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", header: "gp_Ax2d.hxx".}
proc isOpposite*(this: Ax2dObj; other: Ax2dObj; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", header: "gp_Ax2d.hxx".}
proc isParallel*(this: Ax2dObj; other: Ax2dObj; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", header: "gp_Ax2d.hxx".}
proc angle*(this: Ax2dObj; other: Ax2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
    header: "gp_Ax2d.hxx".}
proc reverse*(this: var Ax2dObj) {.cdecl, importcpp: "Reverse", header: "gp_Ax2d.hxx".}
proc reversed*(this: Ax2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Reversed",
                               header: "gp_Ax2d.hxx".}
proc mirror*(this: var Ax2dObj; p: Pnt2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Ax2d.hxx".}
proc mirrored*(this: Ax2dObj; p: Pnt2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       header: "gp_Ax2d.hxx".}
proc mirror*(this: var Ax2dObj; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Ax2d.hxx".}
proc mirrored*(this: Ax2dObj; a: Ax2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Ax2d.hxx".}
proc rotate*(this: var Ax2dObj; p: Pnt2dObj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax2d.hxx".}
proc rotated*(this: Ax2dObj; p: Pnt2dObj; ang: cfloat): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax2d.hxx".}
proc scale*(this: var Ax2dObj; p: Pnt2dObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Ax2d.hxx".}
proc scaled*(this: Ax2dObj; p: Pnt2dObj; s: cfloat): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax2d.hxx".}
proc transform*(this: var Ax2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
                                       header: "gp_Ax2d.hxx".}
proc transformed*(this: Ax2dObj; t: Trsf2dObj): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Ax2d.hxx".}
proc translate*(this: var Ax2dObj; v: Vec2dObj) {.cdecl, importcpp: "Translate", header: "gp_Ax2d.hxx".}
proc translated*(this: Ax2dObj; v: Vec2dObj): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax2d.hxx".}
proc translate*(this: var Ax2dObj; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl, importcpp: "Translate",
    header: "gp_Ax2d.hxx".}
proc translated*(this: Ax2dObj; p1: Pnt2dObj; p2: Pnt2dObj): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax2d.hxx".}
proc dumpJson*(this: Ax2dObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax2d.hxx".}
