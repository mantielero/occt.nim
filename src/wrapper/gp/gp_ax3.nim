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

proc ax3*(): gp_Ax3 {.cdecl, constructor, importcpp: "gp_Ax3(@)", header: "gp_Ax3.hxx".}
proc ax3*(a: gp_Ax2): gp_Ax3 {.cdecl, constructor, importcpp: "gp_Ax3(@)", header: "gp_Ax3.hxx".}
proc ax3*(p: gp_Pnt; n: gp_Dir; vx: gp_Dir): gp_Ax3 {.cdecl, constructor, importcpp: "gp_Ax3(@)",
                                     header: "gp_Ax3.hxx".}
proc ax3*(p: gp_Pnt; v: gp_Dir): gp_Ax3 {.cdecl, constructor, importcpp: "gp_Ax3(@)",
                              header: "gp_Ax3.hxx".}
proc xReverse*(this: var gp_Ax3) {.cdecl, importcpp: "XReverse", header: "gp_Ax3.hxx".}
proc yReverse*(this: var gp_Ax3) {.cdecl, importcpp: "YReverse", header: "gp_Ax3.hxx".}
proc zReverse*(this: var gp_Ax3) {.cdecl, importcpp: "ZReverse", header: "gp_Ax3.hxx".}
proc setAxis*(this: var gp_Ax3; a1: gp_Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Ax3.hxx".}
proc setDirection*(this: var gp_Ax3; v: gp_Dir) {.cdecl, importcpp: "SetDirection",
                                      header: "gp_Ax3.hxx".}
proc setLocation*(this: var gp_Ax3; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                     header: "gp_Ax3.hxx".}
proc setXDirection*(this: var gp_Ax3; vx: gp_Dir) {.cdecl, importcpp: "SetXDirection",
                                        header: "gp_Ax3.hxx".}
proc setYDirection*(this: var gp_Ax3; vy: gp_Dir) {.cdecl, importcpp: "SetYDirection",
                                        header: "gp_Ax3.hxx".}
proc angle*(this: gp_Ax3; other: gp_Ax3): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Ax3.hxx".}
proc axis*(this: gp_Ax3): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Ax3.hxx".}
proc ax2*(this: gp_Ax3): gp_Ax2 {.noSideEffect, cdecl, importcpp: "Ax2", header: "gp_Ax3.hxx".}
proc direction*(this: gp_Ax3): gp_Dir {.noSideEffect, cdecl, importcpp: "Direction",
                              header: "gp_Ax3.hxx".}
proc location*(this: gp_Ax3): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Ax3.hxx".}
proc xDirection*(this: gp_Ax3): gp_Dir {.noSideEffect, cdecl, importcpp: "XDirection",
                               header: "gp_Ax3.hxx".}
proc yDirection*(this: gp_Ax3): gp_Dir {.noSideEffect, cdecl, importcpp: "YDirection",
                               header: "gp_Ax3.hxx".}
proc direct*(this: gp_Ax3): bool {.noSideEffect, cdecl, importcpp: "Direct", header: "gp_Ax3.hxx".}
proc isCoplanar*(this: gp_Ax3; other: gp_Ax3; linearTolerance: cfloat;
                angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoplanar", header: "gp_Ax3.hxx".}
proc isCoplanar*(this: gp_Ax3; a1: gp_Ax1; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsCoplanar", header: "gp_Ax3.hxx".}
proc mirror*(this: var gp_Ax3; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Ax3.hxx".}
proc mirrored*(this: gp_Ax3; p: gp_Pnt): gp_Ax3 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Ax3.hxx".}
proc mirror*(this: var gp_Ax3; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Ax3.hxx".}
proc mirrored*(this: gp_Ax3; a1: gp_Ax1): gp_Ax3 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax3.hxx".}
proc mirror*(this: var gp_Ax3; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Ax3.hxx".}
proc mirrored*(this: gp_Ax3; a2: gp_Ax2): gp_Ax3 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax3.hxx".}
proc rotate*(this: var gp_Ax3; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax3.hxx".}
proc rotated*(this: gp_Ax3; a1: gp_Ax1; ang: cfloat): gp_Ax3 {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax3.hxx".}
proc scale*(this: var gp_Ax3; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Ax3.hxx".}
proc scaled*(this: gp_Ax3; p: gp_Pnt; s: cfloat): gp_Ax3 {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax3.hxx".}
proc transform*(this: var gp_Ax3; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Ax3.hxx".}
proc transformed*(this: gp_Ax3; t: gp_Trsf): gp_Ax3 {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Ax3.hxx".}
proc translate*(this: var gp_Ax3; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Ax3.hxx".}
proc translated*(this: gp_Ax3; v: gp_Vec): gp_Ax3 {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Ax3.hxx".}
proc translate*(this: var gp_Ax3; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Ax3.hxx".}
proc translated*(this: gp_Ax3; p1: gp_Pnt; p2: gp_Pnt): gp_Ax3 {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax3.hxx".}
proc dumpJson*(this: gp_Ax3; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax3.hxx".}
proc initFromJson*(this: var gp_Ax3; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Ax3.hxx".}
