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

proc lin*(): gp_Lin {.cdecl, constructor, importcpp: "gp_Lin(@)", header: "gp_Lin.hxx".}
proc lin*(a1: Ax1Obj): gp_Lin {.cdecl, constructor, importcpp: "gp_Lin(@)", header: "gp_Lin.hxx".}
proc lin*(p: gp_Pnt; v: DirObj): gp_Lin {.cdecl, constructor, importcpp: "gp_Lin(@)",
                              header: "gp_Lin.hxx".}
proc reverse*(this: var gp_Lin) {.cdecl, importcpp: "Reverse", header: "gp_Lin.hxx".}
proc reversed*(this: gp_Lin): gp_Lin {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_Lin.hxx".}
proc setDirection*(this: var gp_Lin; v: DirObj) {.cdecl, importcpp: "SetDirection",
                                      header: "gp_Lin.hxx".}
proc setLocation*(this: var gp_Lin; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                     header: "gp_Lin.hxx".}
proc setPosition*(this: var gp_Lin; a1: Ax1Obj) {.cdecl, importcpp: "SetPosition",
                                      header: "gp_Lin.hxx".}
proc direction*(this: gp_Lin): DirObj {.noSideEffect, cdecl, importcpp: "Direction",
                              header: "gp_Lin.hxx".}
proc location*(this: gp_Lin): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Lin.hxx".}
proc position*(this: gp_Lin): Ax1Obj {.noSideEffect, cdecl, importcpp: "Position",
                             header: "gp_Lin.hxx".}
proc angle*(this: gp_Lin; other: gp_Lin): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Lin.hxx".}
proc contains*(this: gp_Lin; p: gp_Pnt; linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "gp_Lin.hxx".}
proc distance*(this: gp_Lin; p: gp_Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                      header: "gp_Lin.hxx".}
proc distance*(this: gp_Lin; other: gp_Lin): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Lin.hxx".}
proc squareDistance*(this: gp_Lin; p: gp_Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Lin.hxx".}
proc squareDistance*(this: gp_Lin; other: gp_Lin): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Lin.hxx".}
proc normal*(this: gp_Lin; p: gp_Pnt): gp_Lin {.noSideEffect, cdecl, importcpp: "Normal",
                                 header: "gp_Lin.hxx".}
proc mirror*(this: var gp_Lin; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Lin.hxx".}
proc mirrored*(this: gp_Lin; p: gp_Pnt): gp_Lin {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Lin.hxx".}
proc mirror*(this: var gp_Lin; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Lin.hxx".}
proc mirrored*(this: gp_Lin; a1: Ax1Obj): gp_Lin {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Lin.hxx".}
proc mirror*(this: var gp_Lin; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Lin.hxx".}
proc mirrored*(this: gp_Lin; a2: Ax2Obj): gp_Lin {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Lin.hxx".}
proc rotate*(this: var gp_Lin; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Lin.hxx".}
proc rotated*(this: gp_Lin; a1: Ax1Obj; ang: cfloat): gp_Lin {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Lin.hxx".}
proc scale*(this: var gp_Lin; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Lin.hxx".}
proc scaled*(this: gp_Lin; p: gp_Pnt; s: cfloat): gp_Lin {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Lin.hxx".}
proc transform*(this: var gp_Lin; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Lin.hxx".}
proc transformed*(this: gp_Lin; t: TrsfObj): gp_Lin {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Lin.hxx".}
proc translate*(this: var gp_Lin; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Lin.hxx".}
proc translated*(this: gp_Lin; v: gp_Vec): gp_Lin {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Lin.hxx".}
proc translate*(this: var gp_Lin; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Lin.hxx".}
proc translated*(this: gp_Lin; p1: gp_Pnt; p2: gp_Pnt): gp_Lin {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Lin.hxx".}
