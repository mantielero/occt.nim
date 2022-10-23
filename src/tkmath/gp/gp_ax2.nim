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

proc newAx2*(): Ax2 {.cdecl, constructor, importcpp: "gp_Ax2(@)", header: "gp_Ax2.hxx".}
proc newAx2*(p: Pnt; n: Dir; vx: Dir): Ax2 {.cdecl, constructor, importcpp: "gp_Ax2(@)",
                                     header: "gp_Ax2.hxx".}
proc newAx2*(p: Pnt; v: Dir): Ax2 {.cdecl, constructor, importcpp: "gp_Ax2(@)",
                              header: "gp_Ax2.hxx".}
proc setAxis*(this: var Ax2; a1: Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Ax2.hxx".}
proc setDirection*(this: var Ax2; v: Dir) {.cdecl, importcpp: "SetDirection",
                                      header: "gp_Ax2.hxx".}
proc setLocation*(this: var Ax2; p: Pnt) {.cdecl, importcpp: "SetLocation",
                                     header: "gp_Ax2.hxx".}
proc setXDirection*(this: var Ax2; vx: Dir) {.cdecl, importcpp: "SetXDirection",
                                        header: "gp_Ax2.hxx".}
proc setYDirection*(this: var Ax2; vy: Dir) {.cdecl, importcpp: "SetYDirection",
                                        header: "gp_Ax2.hxx".}
proc angle*(this: Ax2; other: Ax2): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Ax2.hxx".}
proc axis*(this: Ax2): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Ax2.hxx".}
proc direction*(this: Ax2): Dir {.noSideEffect, cdecl, importcpp: "Direction",
                              header: "gp_Ax2.hxx".}
proc location*(this: Ax2): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Ax2.hxx".}
proc xDirection*(this: Ax2): Dir {.noSideEffect, cdecl, importcpp: "XDirection",
                               header: "gp_Ax2.hxx".}
proc yDirection*(this: Ax2): Dir {.noSideEffect, cdecl, importcpp: "YDirection",
                               header: "gp_Ax2.hxx".}
proc isCoplanar*(this: Ax2; other: Ax2; linearTolerance: cfloat;
                angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoplanar", header: "gp_Ax2.hxx".}
proc isCoplanar*(this: Ax2; a1: Ax1; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsCoplanar", header: "gp_Ax2.hxx".}
proc mirror*(this: var Ax2; p: Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Ax2.hxx".}
proc mirrored*(this: Ax2; p: Pnt): Ax2 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Ax2.hxx".}
proc mirror*(this: var Ax2; a1: Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Ax2.hxx".}
proc mirrored*(this: Ax2; a1: Ax1): Ax2 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax2.hxx".}
proc mirror*(this: var Ax2; a2: Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Ax2.hxx".}
proc mirrored*(this: Ax2; a2: Ax2): Ax2 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax2.hxx".}
proc rotate*(this: var Ax2; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax2.hxx".}
proc rotated*(this: Ax2; a1: Ax1; ang: cfloat): Ax2 {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax2.hxx".}
proc scale*(this: var Ax2; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Ax2.hxx".}
proc scaled*(this: Ax2; p: Pnt; s: cfloat): Ax2 {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax2.hxx".}
proc transform*(this: var Ax2; t: Trsf) {.cdecl, importcpp: "Transform", header: "gp_Ax2.hxx".}
proc transformed*(this: Ax2; t: Trsf): Ax2 {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Ax2.hxx".}
proc translate*(this: var Ax2; v: Vec) {.cdecl, importcpp: "Translate", header: "gp_Ax2.hxx".}
proc translated*(this: Ax2; v: Vec): Ax2 {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Ax2.hxx".}
proc translate*(this: var Ax2; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Ax2.hxx".}
proc translated*(this: Ax2; p1: Pnt; p2: Pnt): Ax2 {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax2.hxx".}
proc dumpJson*(this: Ax2; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax2.hxx".}
proc initFromJson*(this: var Ax2; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Ax2.hxx".}