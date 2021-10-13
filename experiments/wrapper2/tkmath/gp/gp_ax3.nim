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
  GpAx3* {.importcpp: "gp_Ax3", header: "gp_Ax3.hxx", bycopy.} = object ## ! Creates an object corresponding to the reference
                                                                ## ! coordinate system (OXYZ).


proc constructGpAx3*(): GpAx3 {.cdecl, constructor, importcpp: "gp_Ax3(@)",
                             dynlib: tkmath.}
proc constructGpAx3*(a: GpAx2): GpAx3 {.cdecl, constructor, importcpp: "gp_Ax3(@)",
                                    dynlib: tkmath.}
proc constructGpAx3*(p: GpPnt; n: GpDir; vx: GpDir): GpAx3 {.cdecl, constructor,
    importcpp: "gp_Ax3(@)", dynlib: tkmath.}
proc constructGpAx3*(p: GpPnt; v: GpDir): GpAx3 {.cdecl, constructor,
    importcpp: "gp_Ax3(@)", dynlib: tkmath.}
proc xReverse*(this: var GpAx3) {.cdecl, importcpp: "XReverse", dynlib: tkmath.}
proc yReverse*(this: var GpAx3) {.cdecl, importcpp: "YReverse", dynlib: tkmath.}
proc zReverse*(this: var GpAx3) {.cdecl, importcpp: "ZReverse", dynlib: tkmath.}
proc setAxis*(this: var GpAx3; a1: GpAx1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setDirection*(this: var GpAx3; v: GpDir) {.cdecl, importcpp: "SetDirection",
    dynlib: tkmath.}
proc setLocation*(this: var GpAx3; p: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setXDirection*(this: var GpAx3; vx: GpDir) {.cdecl, importcpp: "SetXDirection",
    dynlib: tkmath.}
proc setYDirection*(this: var GpAx3; vy: GpDir) {.cdecl, importcpp: "SetYDirection",
    dynlib: tkmath.}
proc angle*(this: GpAx3; other: GpAx3): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc axis*(this: GpAx3): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc ax2*(this: GpAx3): GpAx2 {.noSideEffect, cdecl, importcpp: "Ax2", dynlib: tkmath.}
proc direction*(this: GpAx3): GpDir {.noSideEffect, cdecl, importcpp: "Direction",
                                  dynlib: tkmath.}
proc location*(this: GpAx3): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                 dynlib: tkmath.}
proc xDirection*(this: GpAx3): GpDir {.noSideEffect, cdecl, importcpp: "XDirection",
                                   dynlib: tkmath.}
proc yDirection*(this: GpAx3): GpDir {.noSideEffect, cdecl, importcpp: "YDirection",
                                   dynlib: tkmath.}
proc direct*(this: GpAx3): bool {.noSideEffect, cdecl, importcpp: "Direct",
                              dynlib: tkmath.}
proc isCoplanar*(this: GpAx3; other: GpAx3; linearTolerance: cfloat;
                angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoplanar", dynlib: tkmath.}
proc isCoplanar*(this: GpAx3; a1: GpAx1; linearTolerance: cfloat;
                angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoplanar", dynlib: tkmath.}
proc mirror*(this: var GpAx3; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx3; p: GpPnt): GpAx3 {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpAx3; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx3; a1: GpAx1): GpAx3 {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpAx3; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx3; a2: GpAx2): GpAx3 {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpAx3; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpAx3; a1: GpAx1; ang: cfloat): GpAx3 {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpAx3; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpAx3; p: GpPnt; s: cfloat): GpAx3 {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpAx3; t: GpTrsf) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: GpAx3; t: GpTrsf): GpAx3 {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpAx3; v: GpVec) {.cdecl, importcpp: "Translate",
                                       dynlib: tkmath.}
proc translated*(this: GpAx3; v: GpVec): GpAx3 {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpAx3; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpAx3; p1: GpPnt; p2: GpPnt): GpAx3 {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: GpAx3; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var GpAx3; theSStream: StandardSStream;
                  theStreamPos: var cint): bool {.cdecl, importcpp: "InitFromJson",
    dynlib: tkmath.}