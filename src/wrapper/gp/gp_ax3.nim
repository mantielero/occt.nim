import gp_types
import ../standard/standard_types
##  Created on: 1993-08-02
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc ax3*(): Ax3Obj {.cdecl, constructor, importcpp: "gp_Ax3(@)", header: "gp_Ax3.hxx".}
proc ax3*(a: Ax2Obj): Ax3Obj {.cdecl, constructor, importcpp: "gp_Ax3(@)", header: "gp_Ax3.hxx".}
proc ax3*(p: gp_Pnt; n: DirObj; vx: DirObj): Ax3Obj {.cdecl, constructor, importcpp: "gp_Ax3(@)",
                                     header: "gp_Ax3.hxx".}
proc ax3*(p: gp_Pnt; v: DirObj): Ax3Obj {.cdecl, constructor, importcpp: "gp_Ax3(@)",
                              header: "gp_Ax3.hxx".}
proc xReverse*(this: var Ax3Obj) {.cdecl, importcpp: "XReverse", header: "gp_Ax3.hxx".}
proc yReverse*(this: var Ax3Obj) {.cdecl, importcpp: "YReverse", header: "gp_Ax3.hxx".}
proc zReverse*(this: var Ax3Obj) {.cdecl, importcpp: "ZReverse", header: "gp_Ax3.hxx".}
proc setAxis*(this: var Ax3Obj; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Ax3.hxx".}
proc setDirection*(this: var Ax3Obj; v: DirObj) {.cdecl, importcpp: "SetDirection",
                                      header: "gp_Ax3.hxx".}
proc setLocation*(this: var Ax3Obj; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                     header: "gp_Ax3.hxx".}
proc setXDirection*(this: var Ax3Obj; vx: DirObj) {.cdecl, importcpp: "SetXDirection",
                                        header: "gp_Ax3.hxx".}
proc setYDirection*(this: var Ax3Obj; vy: DirObj) {.cdecl, importcpp: "SetYDirection",
                                        header: "gp_Ax3.hxx".}
proc angle*(this: Ax3Obj; other: Ax3Obj): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Ax3.hxx".}
proc axis*(this: Ax3Obj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Ax3.hxx".}
proc ax2*(this: Ax3Obj): Ax2Obj {.noSideEffect, cdecl, importcpp: "Ax2", header: "gp_Ax3.hxx".}
proc direction*(this: Ax3Obj): DirObj {.noSideEffect, cdecl, importcpp: "Direction",
                              header: "gp_Ax3.hxx".}
proc location*(this: Ax3Obj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Ax3.hxx".}
proc xDirection*(this: Ax3Obj): DirObj {.noSideEffect, cdecl, importcpp: "XDirection",
                               header: "gp_Ax3.hxx".}
proc yDirection*(this: Ax3Obj): DirObj {.noSideEffect, cdecl, importcpp: "YDirection",
                               header: "gp_Ax3.hxx".}
proc direct*(this: Ax3Obj): bool {.noSideEffect, cdecl, importcpp: "Direct", header: "gp_Ax3.hxx".}
proc isCoplanar*(this: Ax3Obj; other: Ax3Obj; linearTolerance: cfloat;
                angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoplanar", header: "gp_Ax3.hxx".}
proc isCoplanar*(this: Ax3Obj; a1: Ax1Obj; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsCoplanar", header: "gp_Ax3.hxx".}
proc mirror*(this: var Ax3Obj; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Ax3.hxx".}
proc mirrored*(this: Ax3Obj; p: gp_Pnt): Ax3Obj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Ax3.hxx".}
proc mirror*(this: var Ax3Obj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Ax3.hxx".}
proc mirrored*(this: Ax3Obj; a1: Ax1Obj): Ax3Obj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax3.hxx".}
proc mirror*(this: var Ax3Obj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Ax3.hxx".}
proc mirrored*(this: Ax3Obj; a2: Ax2Obj): Ax3Obj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax3.hxx".}
proc rotate*(this: var Ax3Obj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax3.hxx".}
proc rotated*(this: Ax3Obj; a1: Ax1Obj; ang: cfloat): Ax3Obj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax3.hxx".}
proc scale*(this: var Ax3Obj; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Ax3.hxx".}
proc scaled*(this: Ax3Obj; p: gp_Pnt; s: cfloat): Ax3Obj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax3.hxx".}
proc transform*(this: var Ax3Obj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Ax3.hxx".}
proc transformed*(this: Ax3Obj; t: TrsfObj): Ax3Obj {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Ax3.hxx".}
proc translate*(this: var Ax3Obj; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Ax3.hxx".}
proc translated*(this: Ax3Obj; v: gp_Vec): Ax3Obj {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Ax3.hxx".}
proc translate*(this: var Ax3Obj; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Ax3.hxx".}
proc translated*(this: Ax3Obj; p1: gp_Pnt; p2: gp_Pnt): Ax3Obj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax3.hxx".}
proc dumpJson*(this: Ax3Obj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax3.hxx".}
proc initFromJson*(this: var Ax3Obj; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Ax3.hxx".}
