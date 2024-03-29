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

proc parab*(): gp_Parab {.cdecl, constructor, importcpp: "gp_Parab(@)", header: "gp_Parab.hxx".}
proc parab*(a2: gp_Ax2; focal: cfloat): gp_Parab {.cdecl, constructor,
    importcpp: "gp_Parab(@)", header: "gp_Parab.hxx".}
proc parab*(d: gp_Ax1; f: gp_Pnt): gp_Parab {.cdecl, constructor, importcpp: "gp_Parab(@)",
                                  header: "gp_Parab.hxx".}
proc setAxis*(this: var gp_Parab; a1: gp_Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Parab.hxx".}
proc setFocal*(this: var gp_Parab; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    header: "gp_Parab.hxx".}
proc setLocation*(this: var gp_Parab; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                       header: "gp_Parab.hxx".}
proc setPosition*(this: var gp_Parab; a2: gp_Ax2) {.cdecl, importcpp: "SetPosition",
                                        header: "gp_Parab.hxx".}
proc axis*(this: gp_Parab): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Parab.hxx".}
proc directrix*(this: gp_Parab): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Directrix",
                                header: "gp_Parab.hxx".}
proc focal*(this: gp_Parab): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                               header: "gp_Parab.hxx".}
proc focus*(this: gp_Parab): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus", header: "gp_Parab.hxx".}
proc location*(this: gp_Parab): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                               header: "gp_Parab.hxx".}
proc parameter*(this: gp_Parab): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                   header: "gp_Parab.hxx".}
proc position*(this: gp_Parab): gp_Ax2 {.noSideEffect, cdecl, importcpp: "Position",
                               header: "gp_Parab.hxx".}
proc xAxis*(this: gp_Parab): gp_Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Parab.hxx".}
proc yAxis*(this: gp_Parab): gp_Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Parab.hxx".}
proc mirror*(this: var gp_Parab; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Parab.hxx".}
proc mirrored*(this: gp_Parab; p: gp_Pnt): gp_Parab {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       header: "gp_Parab.hxx".}
proc mirror*(this: var gp_Parab; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Parab.hxx".}
proc mirrored*(this: gp_Parab; a1: gp_Ax1): gp_Parab {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Parab.hxx".}
proc mirror*(this: var gp_Parab; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Parab.hxx".}
proc mirrored*(this: gp_Parab; a2: gp_Ax2): gp_Parab {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Parab.hxx".}
proc rotate*(this: var gp_Parab; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Parab.hxx".}
proc rotated*(this: gp_Parab; a1: gp_Ax1; ang: cfloat): gp_Parab {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Parab.hxx".}
proc scale*(this: var gp_Parab; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Parab.hxx".}
proc scaled*(this: gp_Parab; p: gp_Pnt; s: cfloat): gp_Parab {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Parab.hxx".}
proc transform*(this: var gp_Parab; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Parab.hxx".}
proc transformed*(this: gp_Parab; t: gp_Trsf): gp_Parab {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Parab.hxx".}
proc translate*(this: var gp_Parab; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Parab.hxx".}
proc translated*(this: gp_Parab; v: gp_Vec): gp_Parab {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Parab.hxx".}
proc translate*(this: var gp_Parab; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Parab.hxx".}
proc translated*(this: gp_Parab; p1: gp_Pnt; p2: gp_Pnt): gp_Parab {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Parab.hxx".}
