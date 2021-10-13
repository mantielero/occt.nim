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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpParab2d* {.importcpp: "gp_Parab2d", header: "gp_Parab2d.hxx", bycopy.} = object ## !
                                                                            ## Creates an
                                                                            ## indefinite
                                                                            ## parabola.


proc constructGpParab2d*(): GpParab2d {.cdecl, constructor,
                                     importcpp: "gp_Parab2d(@)", dynlib: tkmath.}
proc constructGpParab2d*(theMirrorAxis: GpAx2d; theFocalLength: cfloat;
                        theSense: bool = standardTrue): GpParab2d {.cdecl,
    constructor, importcpp: "gp_Parab2d(@)", dynlib: tkmath.}
proc constructGpParab2d*(theAxes: GpAx22d; theFocalLength: cfloat): GpParab2d {.cdecl,
    constructor, importcpp: "gp_Parab2d(@)", dynlib: tkmath.}
proc constructGpParab2d*(theDirectrix: GpAx2d; theFocus: GpPnt2d;
                        theSense: bool = standardTrue): GpParab2d {.cdecl,
    constructor, importcpp: "gp_Parab2d(@)", dynlib: tkmath.}
proc setFocal*(this: var GpParab2d; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    dynlib: tkmath.}
proc setLocation*(this: var GpParab2d; p: GpPnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setMirrorAxis*(this: var GpParab2d; a: GpAx2d) {.cdecl,
    importcpp: "SetMirrorAxis", dynlib: tkmath.}
proc setAxis*(this: var GpParab2d; a: GpAx22d) {.cdecl, importcpp: "SetAxis",
    dynlib: tkmath.}
proc coefficients*(this: GpParab2d; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc directrix*(this: GpParab2d): GpAx2d {.noSideEffect, cdecl,
                                       importcpp: "Directrix", dynlib: tkmath.}
proc focal*(this: GpParab2d): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                   dynlib: tkmath.}
proc focus*(this: GpParab2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Focus",
                                    dynlib: tkmath.}
proc location*(this: GpParab2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                       dynlib: tkmath.}
proc mirrorAxis*(this: GpParab2d): GpAx2d {.noSideEffect, cdecl,
                                        importcpp: "MirrorAxis", dynlib: tkmath.}
proc axis*(this: GpParab2d): GpAx22d {.noSideEffect, cdecl, importcpp: "Axis",
                                   dynlib: tkmath.}
proc parameter*(this: GpParab2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Parameter", dynlib: tkmath.}
proc reverse*(this: var GpParab2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpParab2d): GpParab2d {.noSideEffect, cdecl,
    importcpp: "Reversed", dynlib: tkmath.}
proc isDirect*(this: GpParab2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                    dynlib: tkmath.}
proc mirror*(this: var GpParab2d; p: GpPnt2d) {.cdecl, importcpp: "Mirror",
    dynlib: tkmath.}
proc mirrored*(this: GpParab2d; p: GpPnt2d): GpParab2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpParab2d; a: GpAx2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpParab2d; a: GpAx2d): GpParab2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpParab2d; p: GpPnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpParab2d; p: GpPnt2d; ang: cfloat): GpParab2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpParab2d; p: GpPnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpParab2d; p: GpPnt2d; s: cfloat): GpParab2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpParab2d; t: GpTrsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpParab2d; t: GpTrsf2d): GpParab2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpParab2d; v: GpVec2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpParab2d; v: GpVec2d): GpParab2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpParab2d; p1: GpPnt2d; p2: GpPnt2d) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpParab2d; p1: GpPnt2d; p2: GpPnt2d): GpParab2d {.noSideEffect,
    cdecl, importcpp: "Translated", dynlib: tkmath.}