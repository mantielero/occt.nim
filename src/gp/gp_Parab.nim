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
type
  Parab* {.importcpp: "gp_Parab", header: "gp_Parab.hxx", bycopy.} = object


proc `new`*(this: var Parab; theSize: csize_t): pointer {.
    importcpp: "gp_Parab::operator new", header: "gp_Parab.hxx".}
proc `delete`*(this: var Parab; theAddress: pointer) {.
    importcpp: "gp_Parab::operator delete", header: "gp_Parab.hxx".}
proc `new[]`*(this: var Parab; theSize: csize_t): pointer {.
    importcpp: "gp_Parab::operator new[]", header: "gp_Parab.hxx".}
proc `delete[]`*(this: var Parab; theAddress: pointer) {.
    importcpp: "gp_Parab::operator delete[]", header: "gp_Parab.hxx".}
proc `new`*(this: var Parab; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Parab::operator new", header: "gp_Parab.hxx".}
proc `delete`*(this: var Parab; a2: pointer; a3: pointer) {.
    importcpp: "gp_Parab::operator delete", header: "gp_Parab.hxx".}
proc constructParab*(): Parab {.constructor, importcpp: "gp_Parab(@)",
                             header: "gp_Parab.hxx".}
proc constructParab*(a2: Ax2; focal: StandardReal): Parab {.constructor,
    importcpp: "gp_Parab(@)", header: "gp_Parab.hxx".}
proc constructParab*(d: Ax1; f: Pnt): Parab {.constructor, importcpp: "gp_Parab(@)",
                                        header: "gp_Parab.hxx".}
proc setAxis*(this: var Parab; a1: Ax1) {.importcpp: "SetAxis", header: "gp_Parab.hxx".}
proc setFocal*(this: var Parab; focal: StandardReal) {.importcpp: "SetFocal",
    header: "gp_Parab.hxx".}
proc setLocation*(this: var Parab; p: Pnt) {.importcpp: "SetLocation",
                                       header: "gp_Parab.hxx".}
proc setPosition*(this: var Parab; a2: Ax2) {.importcpp: "SetPosition",
                                        header: "gp_Parab.hxx".}
proc axis*(this: Parab): Ax1 {.noSideEffect, importcpp: "Axis", header: "gp_Parab.hxx".}
proc directrix*(this: Parab): Ax1 {.noSideEffect, importcpp: "Directrix",
                                header: "gp_Parab.hxx".}
proc focal*(this: Parab): StandardReal {.noSideEffect, importcpp: "Focal",
                                     header: "gp_Parab.hxx".}
proc focus*(this: Parab): Pnt {.noSideEffect, importcpp: "Focus",
                            header: "gp_Parab.hxx".}
proc location*(this: Parab): Pnt {.noSideEffect, importcpp: "Location",
                               header: "gp_Parab.hxx".}
proc parameter*(this: Parab): StandardReal {.noSideEffect, importcpp: "Parameter",
    header: "gp_Parab.hxx".}
proc position*(this: Parab): Ax2 {.noSideEffect, importcpp: "Position",
                               header: "gp_Parab.hxx".}
proc xAxis*(this: Parab): Ax1 {.noSideEffect, importcpp: "XAxis",
                            header: "gp_Parab.hxx".}
proc yAxis*(this: Parab): Ax1 {.noSideEffect, importcpp: "YAxis",
                            header: "gp_Parab.hxx".}
proc mirror*(this: var Parab; p: Pnt) {.importcpp: "Mirror", header: "gp_Parab.hxx".}
proc mirrored*(this: Parab; p: Pnt): Parab {.noSideEffect, importcpp: "Mirrored",
                                       header: "gp_Parab.hxx".}
proc mirror*(this: var Parab; a1: Ax1) {.importcpp: "Mirror", header: "gp_Parab.hxx".}
proc mirrored*(this: Parab; a1: Ax1): Parab {.noSideEffect, importcpp: "Mirrored",
                                        header: "gp_Parab.hxx".}
proc mirror*(this: var Parab; a2: Ax2) {.importcpp: "Mirror", header: "gp_Parab.hxx".}
proc mirrored*(this: Parab; a2: Ax2): Parab {.noSideEffect, importcpp: "Mirrored",
                                        header: "gp_Parab.hxx".}
proc rotate*(this: var Parab; a1: Ax1; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Parab.hxx".}
proc rotated*(this: Parab; a1: Ax1; ang: StandardReal): Parab {.noSideEffect,
    importcpp: "Rotated", header: "gp_Parab.hxx".}
proc scale*(this: var Parab; p: Pnt; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Parab.hxx".}
proc scaled*(this: Parab; p: Pnt; s: StandardReal): Parab {.noSideEffect,
    importcpp: "Scaled", header: "gp_Parab.hxx".}
proc transform*(this: var Parab; t: Trsf) {.importcpp: "Transform",
                                      header: "gp_Parab.hxx".}
proc transformed*(this: Parab; t: Trsf): Parab {.noSideEffect,
    importcpp: "Transformed", header: "gp_Parab.hxx".}
proc translate*(this: var Parab; v: Vec) {.importcpp: "Translate",
                                     header: "gp_Parab.hxx".}
proc translated*(this: Parab; v: Vec): Parab {.noSideEffect, importcpp: "Translated",
    header: "gp_Parab.hxx".}
proc translate*(this: var Parab; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Parab.hxx".}
proc translated*(this: Parab; p1: Pnt; p2: Pnt): Parab {.noSideEffect,
    importcpp: "Translated", header: "gp_Parab.hxx".}