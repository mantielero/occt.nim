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
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc lin*(): LinObj {.cdecl, constructor, importcpp: "gp_Lin(@)", header: "gp_Lin.hxx".}
proc lin*(a1: Ax1Obj): LinObj {.cdecl, constructor, importcpp: "gp_Lin(@)", header: "gp_Lin.hxx".}
proc lin*(p: PntObj; v: DirObj): LinObj {.cdecl, constructor, importcpp: "gp_Lin(@)",
                              header: "gp_Lin.hxx".}
proc reverse*(this: var LinObj) {.cdecl, importcpp: "Reverse", header: "gp_Lin.hxx".}
proc reversed*(this: LinObj): LinObj {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_Lin.hxx".}
proc setDirection*(this: var LinObj; v: DirObj) {.cdecl, importcpp: "SetDirection",
                                      header: "gp_Lin.hxx".}
proc setLocation*(this: var LinObj; p: PntObj) {.cdecl, importcpp: "SetLocation",
                                     header: "gp_Lin.hxx".}
proc setPosition*(this: var LinObj; a1: Ax1Obj) {.cdecl, importcpp: "SetPosition",
                                      header: "gp_Lin.hxx".}
proc direction*(this: LinObj): DirObj {.noSideEffect, cdecl, importcpp: "Direction",
                              header: "gp_Lin.hxx".}
proc location*(this: LinObj): PntObj {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Lin.hxx".}
proc position*(this: LinObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Position",
                             header: "gp_Lin.hxx".}
proc angle*(this: LinObj; other: LinObj): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Lin.hxx".}
proc contains*(this: LinObj; p: PntObj; linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "gp_Lin.hxx".}
proc distance*(this: LinObj; p: PntObj): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                      header: "gp_Lin.hxx".}
proc distance*(this: LinObj; other: LinObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Lin.hxx".}
proc squareDistance*(this: LinObj; p: PntObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Lin.hxx".}
proc squareDistance*(this: LinObj; other: LinObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Lin.hxx".}
proc normal*(this: LinObj; p: PntObj): LinObj {.noSideEffect, cdecl, importcpp: "Normal",
                                 header: "gp_Lin.hxx".}
proc mirror*(this: var LinObj; p: PntObj) {.cdecl, importcpp: "Mirror", header: "gp_Lin.hxx".}
proc mirrored*(this: LinObj; p: PntObj): LinObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Lin.hxx".}
proc mirror*(this: var LinObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Lin.hxx".}
proc mirrored*(this: LinObj; a1: Ax1Obj): LinObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Lin.hxx".}
proc mirror*(this: var LinObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Lin.hxx".}
proc mirrored*(this: LinObj; a2: Ax2Obj): LinObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Lin.hxx".}
proc rotate*(this: var LinObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Lin.hxx".}
proc rotated*(this: LinObj; a1: Ax1Obj; ang: cfloat): LinObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Lin.hxx".}
proc scale*(this: var LinObj; p: PntObj; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Lin.hxx".}
proc scaled*(this: LinObj; p: PntObj; s: cfloat): LinObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Lin.hxx".}
proc transform*(this: var LinObj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Lin.hxx".}
proc transformed*(this: LinObj; t: TrsfObj): LinObj {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Lin.hxx".}
proc translate*(this: var LinObj; v: VecObj) {.cdecl, importcpp: "Translate", header: "gp_Lin.hxx".}
proc translated*(this: LinObj; v: VecObj): LinObj {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Lin.hxx".}
proc translate*(this: var LinObj; p1: PntObj; p2: PntObj) {.cdecl, importcpp: "Translate",
    header: "gp_Lin.hxx".}
proc translated*(this: LinObj; p1: PntObj; p2: PntObj): LinObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Lin.hxx".}
