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
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpParab* {.importcpp: "gp_Parab", header: "gp_Parab.hxx", bycopy.} = object ## ! Creates an indefinite Parabola.


proc constructGpParab*(): GpParab {.cdecl, constructor, importcpp: "gp_Parab(@)",
                                 dynlib: tkmath.}
proc constructGpParab*(a2: GpAx2; focal: cfloat): GpParab {.cdecl, constructor,
    importcpp: "gp_Parab(@)", dynlib: tkmath.}
proc constructGpParab*(d: GpAx1; f: GpPnt): GpParab {.cdecl, constructor,
    importcpp: "gp_Parab(@)", dynlib: tkmath.}
proc setAxis*(this: var GpParab; a1: GpAx1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setFocal*(this: var GpParab; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    dynlib: tkmath.}
proc setLocation*(this: var GpParab; p: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var GpParab; a2: GpAx2) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc axis*(this: GpParab): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis",
                               dynlib: tkmath.}
proc directrix*(this: GpParab): GpAx1 {.noSideEffect, cdecl, importcpp: "Directrix",
                                    dynlib: tkmath.}
proc focal*(this: GpParab): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                 dynlib: tkmath.}
proc focus*(this: GpParab): GpPnt {.noSideEffect, cdecl, importcpp: "Focus",
                                dynlib: tkmath.}
proc location*(this: GpParab): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                   dynlib: tkmath.}
proc parameter*(this: GpParab): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                     dynlib: tkmath.}
proc position*(this: GpParab): GpAx2 {.noSideEffect, cdecl, importcpp: "Position",
                                   dynlib: tkmath.}
proc xAxis*(this: GpParab): GpAx1 {.noSideEffect, cdecl, importcpp: "XAxis",
                                dynlib: tkmath.}
proc yAxis*(this: GpParab): GpAx1 {.noSideEffect, cdecl, importcpp: "YAxis",
                                dynlib: tkmath.}
proc mirror*(this: var GpParab; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpParab; p: GpPnt): GpParab {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpParab; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpParab; a1: GpAx1): GpParab {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpParab; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpParab; a2: GpAx2): GpParab {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpParab; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpParab; a1: GpAx1; ang: cfloat): GpParab {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpParab; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpParab; p: GpPnt; s: cfloat): GpParab {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpParab; t: GpTrsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpParab; t: GpTrsf): GpParab {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpParab; v: GpVec) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpParab; v: GpVec): GpParab {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpParab; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpParab; p1: GpPnt; p2: GpPnt): GpParab {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}