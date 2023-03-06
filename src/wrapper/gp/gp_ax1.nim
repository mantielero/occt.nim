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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc ax1*(): gp_Ax1 {.cdecl, constructor, importcpp: "gp_Ax1(@)", header: "gp_Ax1.hxx".}
proc ax1*(p: gp_Pnt; v: gp_Dir): gp_Ax1 {.cdecl, constructor, importcpp: "gp_Ax1(@)",
                              header: "gp_Ax1.hxx".}
proc setDirection*(this: var gp_Ax1; v: gp_Dir) {.cdecl, importcpp: "SetDirection",
                                      header: "gp_Ax1.hxx".}
proc setLocation*(this: var gp_Ax1; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                     header: "gp_Ax1.hxx".}
proc direction*(this: gp_Ax1): gp_Dir {.noSideEffect, cdecl, importcpp: "Direction",
                              header: "gp_Ax1.hxx".}
proc location*(this: gp_Ax1): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Ax1.hxx".}
proc isCoaxial*(this: gp_Ax1; other: gp_Ax1; angularTolerance: cfloat;
               linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoaxial", header: "gp_Ax1.hxx".}
proc isNormal*(this: gp_Ax1; other: gp_Ax1; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", header: "gp_Ax1.hxx".}
proc isOpposite*(this: gp_Ax1; other: gp_Ax1; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOpposite", header: "gp_Ax1.hxx".}
proc isParallel*(this: gp_Ax1; other: gp_Ax1; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", header: "gp_Ax1.hxx".}
proc angle*(this: gp_Ax1; other: gp_Ax1): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Ax1.hxx".}
proc reverse*(this: var gp_Ax1) {.cdecl, importcpp: "Reverse", header: "gp_Ax1.hxx".}
proc reversed*(this: gp_Ax1): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_Ax1.hxx".}
proc mirror*(this: var gp_Ax1; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Ax1.hxx".}
proc mirrored*(this: gp_Ax1; p: gp_Pnt): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Ax1.hxx".}
proc mirror*(this: var gp_Ax1; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Ax1.hxx".}
proc mirrored*(this: gp_Ax1; a1: gp_Ax1): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax1.hxx".}
proc mirror*(this: var gp_Ax1; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Ax1.hxx".}
proc mirrored*(this: gp_Ax1; a2: gp_Ax2): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax1.hxx".}
proc rotate*(this: var gp_Ax1; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax1.hxx".}
proc rotated*(this: gp_Ax1; a1: gp_Ax1; ang: cfloat): gp_Ax1 {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax1.hxx".}
proc scale*(this: var gp_Ax1; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Ax1.hxx".}
proc scaled*(this: gp_Ax1; p: gp_Pnt; s: cfloat): gp_Ax1 {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax1.hxx".}
proc transform*(this: var gp_Ax1; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Ax1.hxx".}
proc transformed*(this: gp_Ax1; t: gp_Trsf): gp_Ax1 {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Ax1.hxx".}
proc translate*(this: var gp_Ax1; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Ax1.hxx".}
proc translated*(this: gp_Ax1; v: gp_Vec): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Ax1.hxx".}
proc translate*(this: var gp_Ax1; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Ax1.hxx".}
proc translated*(this: gp_Ax1; p1: gp_Pnt; p2: gp_Pnt): gp_Ax1 {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax1.hxx".}
proc dumpJson*(this: gp_Ax1; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax1.hxx".}
proc initFromJson*(this: var gp_Ax1; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Ax1.hxx".}
