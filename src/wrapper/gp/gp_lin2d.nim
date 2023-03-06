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

proc lin2d*(): gp_Lin2d {.cdecl, constructor, importcpp: "gp_Lin2d(@)", header: "gp_Lin2d.hxx".}
proc lin2d*(a: Ax2dObj): gp_Lin2d {.cdecl, constructor, importcpp: "gp_Lin2d(@)",
                             header: "gp_Lin2d.hxx".}
proc lin2d*(p: gp_Pnt2d; v: Dir2dObj): gp_Lin2d {.cdecl, constructor,
                                      importcpp: "gp_Lin2d(@)", header: "gp_Lin2d.hxx".}
proc lin2d*(a: cfloat; b: cfloat; c: cfloat): gp_Lin2d {.cdecl, constructor,
    importcpp: "gp_Lin2d(@)", header: "gp_Lin2d.hxx".}
proc reverse*(this: var gp_Lin2d) {.cdecl, importcpp: "Reverse", header: "gp_Lin2d.hxx".}
proc reversed*(this: gp_Lin2d): gp_Lin2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                 header: "gp_Lin2d.hxx".}
proc setDirection*(this: var gp_Lin2d; v: Dir2dObj) {.cdecl, importcpp: "SetDirection",
    header: "gp_Lin2d.hxx".}
proc setLocation*(this: var gp_Lin2d; p: gp_Pnt2d) {.cdecl, importcpp: "SetLocation",
    header: "gp_Lin2d.hxx".}
proc setPosition*(this: var gp_Lin2d; a: Ax2dObj) {.cdecl, importcpp: "SetPosition",
                                        header: "gp_Lin2d.hxx".}
proc coefficients*(this: gp_Lin2d; a: var cfloat; b: var cfloat; c: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coefficients", header: "gp_Lin2d.hxx".}
proc direction*(this: gp_Lin2d): Dir2dObj {.noSideEffect, cdecl, importcpp: "Direction",
                                  header: "gp_Lin2d.hxx".}
proc location*(this: gp_Lin2d): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                 header: "gp_Lin2d.hxx".}
proc position*(this: gp_Lin2d): Ax2dObj {.noSideEffect, cdecl, importcpp: "Position",
                                header: "gp_Lin2d.hxx".}
proc angle*(this: gp_Lin2d; other: gp_Lin2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", header: "gp_Lin2d.hxx".}
proc contains*(this: gp_Lin2d; p: gp_Pnt2d; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", header: "gp_Lin2d.hxx".}
proc distance*(this: gp_Lin2d; p: gp_Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Lin2d.hxx".}
proc distance*(this: gp_Lin2d; other: gp_Lin2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Lin2d.hxx".}
proc squareDistance*(this: gp_Lin2d; p: gp_Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Lin2d.hxx".}
proc squareDistance*(this: gp_Lin2d; other: gp_Lin2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Lin2d.hxx".}
proc normal*(this: gp_Lin2d; p: gp_Pnt2d): gp_Lin2d {.noSideEffect, cdecl, importcpp: "Normal",
                                       header: "gp_Lin2d.hxx".}
proc mirror*(this: var gp_Lin2d; p: gp_Pnt2d) {.cdecl, importcpp: "Mirror", header: "gp_Lin2d.hxx".}
proc mirrored*(this: gp_Lin2d; p: gp_Pnt2d): gp_Lin2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Lin2d.hxx".}
proc mirror*(this: var gp_Lin2d; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Lin2d.hxx".}
proc mirrored*(this: gp_Lin2d; a: Ax2dObj): gp_Lin2d {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Lin2d.hxx".}
proc rotate*(this: var gp_Lin2d; p: gp_Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Lin2d.hxx".}
proc rotated*(this: gp_Lin2d; p: gp_Pnt2d; ang: cfloat): gp_Lin2d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Lin2d.hxx".}
proc scale*(this: var gp_Lin2d; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Lin2d.hxx".}
proc scaled*(this: gp_Lin2d; p: gp_Pnt2d; s: cfloat): gp_Lin2d {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Lin2d.hxx".}
proc transform*(this: var gp_Lin2d; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
                                        header: "gp_Lin2d.hxx".}
proc transformed*(this: gp_Lin2d; t: Trsf2dObj): gp_Lin2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Lin2d.hxx".}
proc translate*(this: var gp_Lin2d; v: gp_Vec2d) {.cdecl, importcpp: "Translate",
                                       header: "gp_Lin2d.hxx".}
proc translated*(this: gp_Lin2d; v: gp_Vec2d): gp_Lin2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Lin2d.hxx".}
proc translate*(this: var gp_Lin2d; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl, importcpp: "Translate",
    header: "gp_Lin2d.hxx".}
proc translated*(this: gp_Lin2d; p1: gp_Pnt2d; p2: gp_Pnt2d): gp_Lin2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Lin2d.hxx".}
