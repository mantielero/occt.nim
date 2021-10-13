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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpAx2d* {.importcpp: "gp_Ax2d", header: "gp_Ax2d.hxx", bycopy.} = object ## ! Creates an axis object representing X axis of
                                                                   ## ! the reference co-ordinate system.


proc constructGpAx2d*(): GpAx2d {.cdecl, constructor, importcpp: "gp_Ax2d(@)",
                               dynlib: tkmath.}
proc constructGpAx2d*(p: GpPnt2d; v: GpDir2d): GpAx2d {.cdecl, constructor,
    importcpp: "gp_Ax2d(@)", dynlib: tkmath.}
proc setLocation*(this: var GpAx2d; locat: GpPnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setDirection*(this: var GpAx2d; v: GpDir2d) {.cdecl, importcpp: "SetDirection",
    dynlib: tkmath.}
proc location*(this: GpAx2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                    dynlib: tkmath.}
proc direction*(this: GpAx2d): GpDir2d {.noSideEffect, cdecl, importcpp: "Direction",
                                     dynlib: tkmath.}
proc isCoaxial*(this: GpAx2d; other: GpAx2d; angularTolerance: cfloat;
               linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoaxial", dynlib: tkmath.}
proc isNormal*(this: GpAx2d; other: GpAx2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", dynlib: tkmath.}
proc isOpposite*(this: GpAx2d; other: GpAx2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", dynlib: tkmath.}
proc isParallel*(this: GpAx2d; other: GpAx2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc angle*(this: GpAx2d; other: GpAx2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc reverse*(this: var GpAx2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpAx2d): GpAx2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                   dynlib: tkmath.}
proc mirror*(this: var GpAx2d; p: GpPnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx2d; p: GpPnt2d): GpAx2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpAx2d; a: GpAx2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpAx2d; a: GpAx2d): GpAx2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpAx2d; p: GpPnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpAx2d; p: GpPnt2d; ang: cfloat): GpAx2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpAx2d; p: GpPnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpAx2d; p: GpPnt2d; s: cfloat): GpAx2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpAx2d; t: GpTrsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpAx2d; t: GpTrsf2d): GpAx2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpAx2d; v: GpVec2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpAx2d; v: GpVec2d): GpAx2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpAx2d; p1: GpPnt2d; p2: GpPnt2d) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpAx2d; p1: GpPnt2d; p2: GpPnt2d): GpAx2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: GpAx2d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}