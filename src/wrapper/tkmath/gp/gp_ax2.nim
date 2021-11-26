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
type
  Ax2* {.importcpp: "gp_Ax2", header: "gp_Ax2.hxx", bycopy.} = object ## ! Creates an object corresponding to the reference
                                                              ## ! coordinate system (OXYZ).


proc newAx2*(): Ax2 {.cdecl, constructor, importcpp: "gp_Ax2(@)", dynlib: tkmath.}
proc newAx2*(p: Pnt; n: Dir; vx: Dir): Ax2 {.cdecl, constructor, importcpp: "gp_Ax2(@)",
                                     dynlib: tkmath.}
proc newAx2*(p: Pnt; v: Dir): Ax2 {.cdecl, constructor, importcpp: "gp_Ax2(@)",
                              dynlib: tkmath.}
proc setAxis*(this: var Ax2; a1: Ax1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setDirection*(this: var Ax2; v: Dir) {.cdecl, importcpp: "SetDirection",
                                      dynlib: tkmath.}
proc setLocation*(this: var Ax2; p: Pnt) {.cdecl, importcpp: "SetLocation",
                                     dynlib: tkmath.}
proc setXDirection*(this: var Ax2; vx: Dir) {.cdecl, importcpp: "SetXDirection",
                                        dynlib: tkmath.}
proc setYDirection*(this: var Ax2; vy: Dir) {.cdecl, importcpp: "SetYDirection",
                                        dynlib: tkmath.}
proc angle*(this: Ax2; other: Ax2): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       dynlib: tkmath.}
proc axis*(this: Ax2): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc direction*(this: Ax2): Dir {.noSideEffect, cdecl, importcpp: "Direction",
                              dynlib: tkmath.}
proc location*(this: Ax2): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             dynlib: tkmath.}
proc xDirection*(this: Ax2): Dir {.noSideEffect, cdecl, importcpp: "XDirection",
                               dynlib: tkmath.}
proc yDirection*(this: Ax2): Dir {.noSideEffect, cdecl, importcpp: "YDirection",
                               dynlib: tkmath.}
proc isCoplanar*(this: Ax2; other: Ax2; linearTolerance: cfloat;
                angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoplanar", dynlib: tkmath.}
proc isCoplanar*(this: Ax2; a1: Ax1; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsCoplanar", dynlib: tkmath.}
proc mirror*(this: var Ax2; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Ax2; p: Pnt): Ax2 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   dynlib: tkmath.}
proc mirror*(this: var Ax2; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Ax2; a1: Ax1): Ax2 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc mirror*(this: var Ax2; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Ax2; a2: Ax2): Ax2 {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc rotate*(this: var Ax2; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Ax2; a1: Ax1; ang: cfloat): Ax2 {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Ax2; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Ax2; p: Pnt; s: cfloat): Ax2 {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Ax2; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Ax2; t: Trsf): Ax2 {.noSideEffect, cdecl,
                                       importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Ax2; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Ax2; v: Vec): Ax2 {.noSideEffect, cdecl, importcpp: "Translated",
                                     dynlib: tkmath.}
proc translate*(this: var Ax2; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Ax2; p1: Pnt; p2: Pnt): Ax2 {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: Ax2; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var Ax2; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", dynlib: tkmath.}