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

proc parab*(): ParabObj {.cdecl, constructor, importcpp: "gp_Parab(@)", header: "gp_Parab.hxx".}
proc parab*(a2: Ax2Obj; focal: cfloat): ParabObj {.cdecl, constructor,
    importcpp: "gp_Parab(@)", header: "gp_Parab.hxx".}
proc parab*(d: Ax1Obj; f: gp_Pnt): ParabObj {.cdecl, constructor, importcpp: "gp_Parab(@)",
                                  header: "gp_Parab.hxx".}
proc setAxis*(this: var ParabObj; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Parab.hxx".}
proc setFocal*(this: var ParabObj; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    header: "gp_Parab.hxx".}
proc setLocation*(this: var ParabObj; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                       header: "gp_Parab.hxx".}
proc setPosition*(this: var ParabObj; a2: Ax2Obj) {.cdecl, importcpp: "SetPosition",
                                        header: "gp_Parab.hxx".}
proc axis*(this: ParabObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Parab.hxx".}
proc directrix*(this: ParabObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Directrix",
                                header: "gp_Parab.hxx".}
proc focal*(this: ParabObj): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                               header: "gp_Parab.hxx".}
proc focus*(this: ParabObj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus", header: "gp_Parab.hxx".}
proc location*(this: ParabObj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                               header: "gp_Parab.hxx".}
proc parameter*(this: ParabObj): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                   header: "gp_Parab.hxx".}
proc position*(this: ParabObj): Ax2Obj {.noSideEffect, cdecl, importcpp: "Position",
                               header: "gp_Parab.hxx".}
proc xAxis*(this: ParabObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Parab.hxx".}
proc yAxis*(this: ParabObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Parab.hxx".}
proc mirror*(this: var ParabObj; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Parab.hxx".}
proc mirrored*(this: ParabObj; p: gp_Pnt): ParabObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       header: "gp_Parab.hxx".}
proc mirror*(this: var ParabObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Parab.hxx".}
proc mirrored*(this: ParabObj; a1: Ax1Obj): ParabObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Parab.hxx".}
proc mirror*(this: var ParabObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Parab.hxx".}
proc mirrored*(this: ParabObj; a2: Ax2Obj): ParabObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Parab.hxx".}
proc rotate*(this: var ParabObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Parab.hxx".}
proc rotated*(this: ParabObj; a1: Ax1Obj; ang: cfloat): ParabObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Parab.hxx".}
proc scale*(this: var ParabObj; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Parab.hxx".}
proc scaled*(this: ParabObj; p: gp_Pnt; s: cfloat): ParabObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Parab.hxx".}
proc transform*(this: var ParabObj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Parab.hxx".}
proc transformed*(this: ParabObj; t: TrsfObj): ParabObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Parab.hxx".}
proc translate*(this: var ParabObj; v: VecObj) {.cdecl, importcpp: "Translate", header: "gp_Parab.hxx".}
proc translated*(this: ParabObj; v: VecObj): ParabObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Parab.hxx".}
proc translate*(this: var ParabObj; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Parab.hxx".}
proc translated*(this: ParabObj; p1: gp_Pnt; p2: gp_Pnt): ParabObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Parab.hxx".}
