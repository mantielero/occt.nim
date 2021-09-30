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
type
  Ax3* {.importcpp: "gp_Ax3", header: "gp_Ax3.hxx", bycopy.} = object


proc `new`*(this: var Ax3; theSize: csize_t): pointer {.
    importcpp: "gp_Ax3::operator new", header: "gp_Ax3.hxx".}
proc `delete`*(this: var Ax3; theAddress: pointer) {.
    importcpp: "gp_Ax3::operator delete", header: "gp_Ax3.hxx".}
proc `new[]`*(this: var Ax3; theSize: csize_t): pointer {.
    importcpp: "gp_Ax3::operator new[]", header: "gp_Ax3.hxx".}
proc `delete[]`*(this: var Ax3; theAddress: pointer) {.
    importcpp: "gp_Ax3::operator delete[]", header: "gp_Ax3.hxx".}
proc `new`*(this: var Ax3; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Ax3::operator new", header: "gp_Ax3.hxx".}
proc `delete`*(this: var Ax3; a2: pointer; a3: pointer) {.
    importcpp: "gp_Ax3::operator delete", header: "gp_Ax3.hxx".}
proc newAx3*(): Ax3 {.constructor, importcpp: "gp_Ax3(@)", header: "gp_Ax3.hxx".}
proc newAx3*(a: Ax2): Ax3 {.constructor, importcpp: "gp_Ax3(@)",
                              header: "gp_Ax3.hxx".}
proc newAx3*(p: Pnt; n: Dir; vx: Dir): Ax3 {.constructor, importcpp: "gp_Ax3(@)",
    header: "gp_Ax3.hxx".}
proc newAx3*(p: Pnt; v: Dir): Ax3 {.constructor, importcpp: "gp_Ax3(@)",
                                    header: "gp_Ax3.hxx".}
proc xReverse*(this: var Ax3) {.importcpp: "XReverse", header: "gp_Ax3.hxx".}
proc yReverse*(this: var Ax3) {.importcpp: "YReverse", header: "gp_Ax3.hxx".}
proc zReverse*(this: var Ax3) {.importcpp: "ZReverse", header: "gp_Ax3.hxx".}
proc setAxis*(this: var Ax3; a1: Ax1) {.importcpp: "SetAxis", header: "gp_Ax3.hxx".}
proc setDirection*(this: var Ax3; v: Dir) {.importcpp: "SetDirection",
                                      header: "gp_Ax3.hxx".}
proc setLocation*(this: var Ax3; p: Pnt) {.importcpp: "SetLocation",
                                     header: "gp_Ax3.hxx".}
proc setXDirection*(this: var Ax3; vx: Dir) {.importcpp: "SetXDirection",
                                        header: "gp_Ax3.hxx".}
proc setYDirection*(this: var Ax3; vy: Dir) {.importcpp: "SetYDirection",
                                        header: "gp_Ax3.hxx".}
proc angle*(this: Ax3; other: Ax3): StandardReal {.noSideEffect, importcpp: "Angle",
    header: "gp_Ax3.hxx".}
proc axis*(this: Ax3): Ax1 {.noSideEffect, importcpp: "Axis", header: "gp_Ax3.hxx".}
proc ax2*(this: Ax3): Ax2 {.noSideEffect, importcpp: "Ax2", header: "gp_Ax3.hxx".}
proc direction*(this: Ax3): Dir {.noSideEffect, importcpp: "Direction",
                              header: "gp_Ax3.hxx".}
proc location*(this: Ax3): Pnt {.noSideEffect, importcpp: "Location",
                             header: "gp_Ax3.hxx".}
proc xDirection*(this: Ax3): Dir {.noSideEffect, importcpp: "XDirection",
                               header: "gp_Ax3.hxx".}
proc yDirection*(this: Ax3): Dir {.noSideEffect, importcpp: "YDirection",
                               header: "gp_Ax3.hxx".}
proc direct*(this: Ax3): StandardBoolean {.noSideEffect, importcpp: "Direct",
                                       header: "gp_Ax3.hxx".}
proc isCoplanar*(this: Ax3; other: Ax3; linearTolerance: StandardReal;
                angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsCoplanar", header: "gp_Ax3.hxx".}
proc isCoplanar*(this: Ax3; a1: Ax1; linearTolerance: StandardReal;
                angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsCoplanar", header: "gp_Ax3.hxx".}
proc mirror*(this: var Ax3; p: Pnt) {.importcpp: "Mirror", header: "gp_Ax3.hxx".}
proc mirrored*(this: Ax3; p: Pnt): Ax3 {.noSideEffect, importcpp: "Mirrored",
                                   header: "gp_Ax3.hxx".}
proc mirror*(this: var Ax3; a1: Ax1) {.importcpp: "Mirror", header: "gp_Ax3.hxx".}
proc mirrored*(this: Ax3; a1: Ax1): Ax3 {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Ax3.hxx".}
proc mirror*(this: var Ax3; a2: Ax2) {.importcpp: "Mirror", header: "gp_Ax3.hxx".}
proc mirrored*(this: Ax3; a2: Ax2): Ax3 {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Ax3.hxx".}
proc rotate*(this: var Ax3; a1: Ax1; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Ax3.hxx".}
proc rotated*(this: Ax3; a1: Ax1; ang: StandardReal): Ax3 {.noSideEffect,
    importcpp: "Rotated", header: "gp_Ax3.hxx".}
proc scale*(this: var Ax3; p: Pnt; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Ax3.hxx".}
proc scaled*(this: Ax3; p: Pnt; s: StandardReal): Ax3 {.noSideEffect,
    importcpp: "Scaled", header: "gp_Ax3.hxx".}
proc transform*(this: var Ax3; t: Trsf) {.importcpp: "Transform", header: "gp_Ax3.hxx".}
proc transformed*(this: Ax3; t: Trsf): Ax3 {.noSideEffect, importcpp: "Transformed",
                                       header: "gp_Ax3.hxx".}
proc translate*(this: var Ax3; v: Vec) {.importcpp: "Translate", header: "gp_Ax3.hxx".}
proc translated*(this: Ax3; v: Vec): Ax3 {.noSideEffect, importcpp: "Translated",
                                     header: "gp_Ax3.hxx".}
proc translate*(this: var Ax3; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Ax3.hxx".}
proc translated*(this: Ax3; p1: Pnt; p2: Pnt): Ax3 {.noSideEffect,
    importcpp: "Translated", header: "gp_Ax3.hxx".}
proc dumpJson*(this: Ax3; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Ax3.hxx".}
proc initFromJson*(this: var Ax3; theSStream: StandardSStream; theStreamPos: var int): StandardBoolean {.
    importcpp: "InitFromJson", header: "gp_Ax3.hxx".}