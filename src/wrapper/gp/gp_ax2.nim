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
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc ax2*(): Ax2Obj {.cdecl, constructor, importcpp: "gp_Ax2(@)", header: "gp_Ax2.hxx".}
proc ax2*(p: gp_Pnt; n: DirObj; vx: DirObj): Ax2Obj {.cdecl, constructor, importcpp: "gp_Ax2(@)",
                                     header: "gp_Ax2.hxx".}
proc ax2*(p: gp_Pnt; v: DirObj): Ax2Obj {.cdecl, constructor, importcpp: "gp_Ax2(@)",
                              header: "gp_Ax2.hxx".}
proc setAxis*(this: var Ax2Obj; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Ax2.hxx".}
proc setDirection*(this: var Ax2Obj; v: DirObj) {.cdecl, importcpp: "SetDirection",
                                      header: "gp_Ax2.hxx".}
proc setLocation*(this: var Ax2Obj; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                     header: "gp_Ax2.hxx".}
proc setXDirection*(this: var Ax2Obj; vx: DirObj) {.cdecl, importcpp: "SetXDirection",
                                        header: "gp_Ax2.hxx".}
proc setYDirection*(this: var Ax2Obj; vy: DirObj) {.cdecl, importcpp: "SetYDirection",
                                        header: "gp_Ax2.hxx".}
proc angle*(this: Ax2Obj; other: Ax2Obj): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Ax2.hxx".}
proc axis*(this: Ax2Obj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Ax2.hxx".}
proc direction*(this: Ax2Obj): DirObj {.noSideEffect, cdecl, importcpp: "Direction",
                              header: "gp_Ax2.hxx".}
proc location*(this: Ax2Obj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Ax2.hxx".}
proc xDirection*(this: Ax2Obj): DirObj {.noSideEffect, cdecl, importcpp: "XDirection",
                               header: "gp_Ax2.hxx".}
proc yDirection*(this: Ax2Obj): DirObj {.noSideEffect, cdecl, importcpp: "YDirection",
                               header: "gp_Ax2.hxx".}
proc isCoplanar*(this: Ax2Obj; other: Ax2Obj; linearTolerance: cfloat;
                angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoplanar", header: "gp_Ax2.hxx".}
proc isCoplanar*(this: Ax2Obj; a1: Ax1Obj; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsCoplanar", header: "gp_Ax2.hxx".}
proc mirror*(this: var Ax2Obj; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Ax2.hxx".}
proc mirrored*(this: Ax2Obj; p: gp_Pnt): Ax2Obj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Ax2.hxx".}
proc mirror*(this: var Ax2Obj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Ax2.hxx".}
proc mirrored*(this: Ax2Obj; a1: Ax1Obj): Ax2Obj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax2.hxx".}
proc mirror*(this: var Ax2Obj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Ax2.hxx".}
proc mirrored*(this: Ax2Obj; a2: Ax2Obj): Ax2Obj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax2.hxx".}
proc rotate*(this: var Ax2Obj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax2.hxx".}
proc rotated*(this: Ax2Obj; a1: Ax1Obj; ang: cfloat): Ax2Obj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax2.hxx".}
proc scale*(this: var Ax2Obj; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Ax2.hxx".}
proc scaled*(this: Ax2Obj; p: gp_Pnt; s: cfloat): Ax2Obj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax2.hxx".}
proc transform*(this: var Ax2Obj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Ax2.hxx".}
proc transformed*(this: Ax2Obj; t: TrsfObj): Ax2Obj {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Ax2.hxx".}
proc translate*(this: var Ax2Obj; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Ax2.hxx".}
proc translated*(this: Ax2Obj; v: gp_Vec): Ax2Obj {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Ax2.hxx".}
proc translate*(this: var Ax2Obj; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Ax2.hxx".}
proc translated*(this: Ax2Obj; p1: gp_Pnt; p2: gp_Pnt): Ax2Obj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax2.hxx".}
proc dumpJson*(this: Ax2Obj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax2.hxx".}
proc initFromJson*(this: var Ax2Obj; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Ax2.hxx".}
