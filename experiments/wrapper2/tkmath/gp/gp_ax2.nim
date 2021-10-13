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
  GpAx2* {.importcpp: "gp_Ax2", header: "gp_Ax2.hxx", bycopy.} = object ## ! Creates an object corresponding to the reference
                                                                ## ! coordinate system (OXYZ).


proc constructGpAx2*(): GpAx2 {.cdecl, constructor, importcpp: "gp_Ax2(@)",
                             dynlib: tkmath.}
proc constructGpAx2*(p: GpPnt; n: GpDir; vx: GpDir): GpAx2 {.cdecl, constructor,
    importcpp: "gp_Ax2(@)", dynlib: tkmath.}
proc constructGpAx2*(p: GpPnt; v: GpDir): GpAx2 {.cdecl, constructor,
    importcpp: "gp_Ax2(@)", dynlib: tkmath.}
proc setAxis*(this: var GpAx2; a1: GpAx1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setDirection*(this: var GpAx2; v: GpDir) {.cdecl, importcpp: "SetDirection",
    dynlib: tkmath.}
proc setLocation*(this: var GpAx2; p: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setXDirection*(this: var GpAx2; vx: GpDir) {.cdecl, importcpp: "SetXDirection",
    dynlib: tkmath.}
proc setYDirection*(this: var GpAx2; vy: GpDir) {.cdecl, importcpp: "SetYDirection",
    dynlib: tkmath.}
proc angle*(this: GpAx2; other: GpAx2): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc axis*(this: GpAx2): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc direction*(this: GpAx2): GpDir {.noSideEffect, cdecl, importcpp: "Direction",
                                  dynlib: tkmath.}
proc location*(this: GpAx2): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                 dynlib: tkmath.}
proc xDirection*(this: GpAx2): GpDir {.noSideEffect, cdecl, importcpp: "XDirection",
                                   dynlib: tkmath.}
proc yDirection*(this: GpAx2): GpDir {.noSideEffect, cdecl, importcpp: "YDirection",
                                   dynlib: tkmath.}
proc isCoplanar*(this: GpAx2; other: GpAx2; linearTolerance: cfloat;
                angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoplanar", dynlib: tkmath.}
proc isCoplanar*(this: GpAx2; a1: GpAx1; linearTolerance: cfloat;
                angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoplanar", dynlib: tkmath.}
proc mirror*(this: var GpAx2; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx2; p: GpPnt): GpAx2 {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpAx2; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx2; a1: GpAx1): GpAx2 {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpAx2; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx2; a2: GpAx2): GpAx2 {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpAx2; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpAx2; a1: GpAx1; ang: cfloat): GpAx2 {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpAx2; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpAx2; p: GpPnt; s: cfloat): GpAx2 {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpAx2; t: GpTrsf) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: GpAx2; t: GpTrsf): GpAx2 {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpAx2; v: GpVec) {.cdecl, importcpp: "Translate",
                                       dynlib: tkmath.}
proc translated*(this: GpAx2; v: GpVec): GpAx2 {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpAx2; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpAx2; p1: GpPnt; p2: GpPnt): GpAx2 {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: GpAx2; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var GpAx2; theSStream: StandardSStream;
                  theStreamPos: var cint): bool {.cdecl, importcpp: "InitFromJson",
    dynlib: tkmath.}