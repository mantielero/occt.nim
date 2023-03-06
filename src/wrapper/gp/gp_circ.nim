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
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc circ*(): gp_Circ {.cdecl, constructor, importcpp: "gp_Circ(@)", header: "gp_Circ.hxx".}
proc circ*(a2: Ax2Obj; radius: cfloat): gp_Circ {.cdecl, constructor,
    importcpp: "gp_Circ(@)", header: "gp_Circ.hxx".}
proc setAxis*(this: var gp_Circ; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Circ.hxx".}
proc setLocation*(this: var gp_Circ; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                      header: "gp_Circ.hxx".}
proc setPosition*(this: var gp_Circ; a2: Ax2Obj) {.cdecl, importcpp: "SetPosition",
                                       header: "gp_Circ.hxx".}
proc setRadius*(this: var gp_Circ; radius: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "gp_Circ.hxx".}
proc area*(this: gp_Circ): cfloat {.noSideEffect, cdecl, importcpp: "Area", header: "gp_Circ.hxx".}
proc axis*(this: gp_Circ): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Circ.hxx".}
proc length*(this: gp_Circ): cfloat {.noSideEffect, cdecl, importcpp: "Length",
                               header: "gp_Circ.hxx".}
proc location*(this: gp_Circ): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                              header: "gp_Circ.hxx".}
proc position*(this: gp_Circ): Ax2Obj {.noSideEffect, cdecl, importcpp: "Position",
                              header: "gp_Circ.hxx".}
proc radius*(this: gp_Circ): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                               header: "gp_Circ.hxx".}
proc xAxis*(this: gp_Circ): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Circ.hxx".}
proc yAxis*(this: gp_Circ): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Circ.hxx".}
proc distance*(this: gp_Circ; p: gp_Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                       header: "gp_Circ.hxx".}
proc squareDistance*(this: gp_Circ; p: gp_Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Circ.hxx".}
proc contains*(this: gp_Circ; p: gp_Pnt; linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "gp_Circ.hxx".}
proc mirror*(this: var gp_Circ; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Circ.hxx".}
proc mirrored*(this: gp_Circ; p: gp_Pnt): gp_Circ {.noSideEffect, cdecl, importcpp: "Mirrored",
                                     header: "gp_Circ.hxx".}
proc mirror*(this: var gp_Circ; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Circ.hxx".}
proc mirrored*(this: gp_Circ; a1: Ax1Obj): gp_Circ {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Circ.hxx".}
proc mirror*(this: var gp_Circ; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Circ.hxx".}
proc mirrored*(this: gp_Circ; a2: Ax2Obj): gp_Circ {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Circ.hxx".}
proc rotate*(this: var gp_Circ; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Circ.hxx".}
proc rotated*(this: gp_Circ; a1: Ax1Obj; ang: cfloat): gp_Circ {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Circ.hxx".}
proc scale*(this: var gp_Circ; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Circ.hxx".}
proc scaled*(this: gp_Circ; p: gp_Pnt; s: cfloat): gp_Circ {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Circ.hxx".}
proc transform*(this: var gp_Circ; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Circ.hxx".}
proc transformed*(this: gp_Circ; t: TrsfObj): gp_Circ {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Circ.hxx".}
proc translate*(this: var gp_Circ; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Circ.hxx".}
proc translated*(this: gp_Circ; v: gp_Vec): gp_Circ {.noSideEffect, cdecl,
                                       importcpp: "Translated", header: "gp_Circ.hxx".}
proc translate*(this: var gp_Circ; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Circ.hxx".}
proc translated*(this: gp_Circ; p1: gp_Pnt; p2: gp_Pnt): gp_Circ {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Circ.hxx".}
