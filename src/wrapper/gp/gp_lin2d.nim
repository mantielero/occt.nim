import gp_types

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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"

proc lin2d*(): Lin2dObj {.cdecl, constructor, importcpp: "gp_Lin2d(@)", header: "gp_Lin2d.hxx".}
proc lin2d*(a: Ax2dObj): Lin2dObj {.cdecl, constructor, importcpp: "gp_Lin2d(@)",
                             header: "gp_Lin2d.hxx".}
proc lin2d*(p: Pnt2dObj; v: Dir2dObj): Lin2dObj {.cdecl, constructor,
                                      importcpp: "gp_Lin2d(@)", header: "gp_Lin2d.hxx".}
proc lin2d*(a: cfloat; b: cfloat; c: cfloat): Lin2dObj {.cdecl, constructor,
    importcpp: "gp_Lin2d(@)", header: "gp_Lin2d.hxx".}
proc reverse*(this: var Lin2dObj) {.cdecl, importcpp: "Reverse", header: "gp_Lin2d.hxx".}
proc reversed*(this: Lin2dObj): Lin2dObj {.noSideEffect, cdecl, importcpp: "Reversed",
                                 header: "gp_Lin2d.hxx".}
proc setDirection*(this: var Lin2dObj; v: Dir2dObj) {.cdecl, importcpp: "SetDirection",
    header: "gp_Lin2d.hxx".}
proc setLocation*(this: var Lin2dObj; p: Pnt2dObj) {.cdecl, importcpp: "SetLocation",
    header: "gp_Lin2d.hxx".}
proc setPosition*(this: var Lin2dObj; a: Ax2dObj) {.cdecl, importcpp: "SetPosition",
                                        header: "gp_Lin2d.hxx".}
proc coefficients*(this: Lin2dObj; a: var cfloat; b: var cfloat; c: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coefficients", header: "gp_Lin2d.hxx".}
proc direction*(this: Lin2dObj): Dir2dObj {.noSideEffect, cdecl, importcpp: "Direction",
                                  header: "gp_Lin2d.hxx".}
proc location*(this: Lin2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Location",
                                 header: "gp_Lin2d.hxx".}
proc position*(this: Lin2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Position",
                                header: "gp_Lin2d.hxx".}
proc angle*(this: Lin2dObj; other: Lin2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", header: "gp_Lin2d.hxx".}
proc contains*(this: Lin2dObj; p: Pnt2dObj; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", header: "gp_Lin2d.hxx".}
proc distance*(this: Lin2dObj; p: Pnt2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Lin2d.hxx".}
proc distance*(this: Lin2dObj; other: Lin2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Lin2d.hxx".}
proc squareDistance*(this: Lin2dObj; p: Pnt2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Lin2d.hxx".}
proc squareDistance*(this: Lin2dObj; other: Lin2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Lin2d.hxx".}
proc normal*(this: Lin2dObj; p: Pnt2dObj): Lin2dObj {.noSideEffect, cdecl, importcpp: "Normal",
                                       header: "gp_Lin2d.hxx".}
proc mirror*(this: var Lin2dObj; p: Pnt2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Lin2d.hxx".}
proc mirrored*(this: Lin2dObj; p: Pnt2dObj): Lin2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Lin2d.hxx".}
proc mirror*(this: var Lin2dObj; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Lin2d.hxx".}
proc mirrored*(this: Lin2dObj; a: Ax2dObj): Lin2dObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Lin2d.hxx".}
proc rotate*(this: var Lin2dObj; p: Pnt2dObj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Lin2d.hxx".}
proc rotated*(this: Lin2dObj; p: Pnt2dObj; ang: cfloat): Lin2dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Lin2d.hxx".}
proc scale*(this: var Lin2dObj; p: Pnt2dObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Lin2d.hxx".}
proc scaled*(this: Lin2dObj; p: Pnt2dObj; s: cfloat): Lin2dObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Lin2d.hxx".}
proc transform*(this: var Lin2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
                                        header: "gp_Lin2d.hxx".}
proc transformed*(this: Lin2dObj; t: Trsf2dObj): Lin2dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Lin2d.hxx".}
proc translate*(this: var Lin2dObj; v: Vec2dObj) {.cdecl, importcpp: "Translate",
                                       header: "gp_Lin2d.hxx".}
proc translated*(this: Lin2dObj; v: Vec2dObj): Lin2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Lin2d.hxx".}
proc translate*(this: var Lin2dObj; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl, importcpp: "Translate",
    header: "gp_Lin2d.hxx".}
proc translated*(this: Lin2dObj; p1: Pnt2dObj; p2: Pnt2dObj): Lin2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Lin2d.hxx".}
