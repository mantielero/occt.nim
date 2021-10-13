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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Mat2d"
type
  GpTrsf2d* {.importcpp: "gp_Trsf2d", header: "gp_Trsf2d.hxx", bycopy.} = object ## ! Returns
                                                                         ## identity
                                                                         ## transformation.
                                                                         ## ! Makes
                                                                         ## orthogonalization of
                                                                         ## "matrix"


proc constructGpTrsf2d*(): GpTrsf2d {.cdecl, constructor, importcpp: "gp_Trsf2d(@)",
                                   dynlib: tkmath.}
proc constructGpTrsf2d*(t: GpTrsf): GpTrsf2d {.cdecl, constructor,
    importcpp: "gp_Trsf2d(@)", dynlib: tkmath.}
proc setMirror*(this: var GpTrsf2d; p: GpPnt2d) {.cdecl, importcpp: "SetMirror",
    dynlib: tkmath.}
proc setMirror*(this: var GpTrsf2d; a: GpAx2d) {.cdecl, importcpp: "SetMirror",
    dynlib: tkmath.}
proc setRotation*(this: var GpTrsf2d; p: GpPnt2d; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", dynlib: tkmath.}
proc setScale*(this: var GpTrsf2d; p: GpPnt2d; s: cfloat) {.cdecl, importcpp: "SetScale",
    dynlib: tkmath.}
proc setTransformation*(this: var GpTrsf2d; fromSystem1: GpAx2d; toSystem2: GpAx2d) {.
    cdecl, importcpp: "SetTransformation", dynlib: tkmath.}
proc setTransformation*(this: var GpTrsf2d; toSystem: GpAx2d) {.cdecl,
    importcpp: "SetTransformation", dynlib: tkmath.}
proc setTranslation*(this: var GpTrsf2d; v: GpVec2d) {.cdecl,
    importcpp: "SetTranslation", dynlib: tkmath.}
proc setTranslation*(this: var GpTrsf2d; p1: GpPnt2d; p2: GpPnt2d) {.cdecl,
    importcpp: "SetTranslation", dynlib: tkmath.}
proc setTranslationPart*(this: var GpTrsf2d; v: GpVec2d) {.cdecl,
    importcpp: "SetTranslationPart", dynlib: tkmath.}
proc setScaleFactor*(this: var GpTrsf2d; s: cfloat) {.cdecl,
    importcpp: "SetScaleFactor", dynlib: tkmath.}
proc isNegative*(this: GpTrsf2d): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                     dynlib: tkmath.}
proc form*(this: GpTrsf2d): GpTrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                                     dynlib: tkmath.}
proc scaleFactor*(this: GpTrsf2d): cfloat {.noSideEffect, cdecl,
                                        importcpp: "ScaleFactor", dynlib: tkmath.}
proc translationPart*(this: GpTrsf2d): GpXY {.noSideEffect, cdecl,
    importcpp: "TranslationPart", dynlib: tkmath.}
proc vectorialPart*(this: GpTrsf2d): GpMat2d {.noSideEffect, cdecl,
    importcpp: "VectorialPart", dynlib: tkmath.}
proc hVectorialPart*(this: GpTrsf2d): GpMat2d {.noSideEffect, cdecl,
    importcpp: "HVectorialPart", dynlib: tkmath.}
proc rotationPart*(this: GpTrsf2d): cfloat {.noSideEffect, cdecl,
    importcpp: "RotationPart", dynlib: tkmath.}
proc value*(this: GpTrsf2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc invert*(this: var GpTrsf2d) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: GpTrsf2d): GpTrsf2d {.noSideEffect, cdecl, importcpp: "Inverted",
                                       dynlib: tkmath.}
proc multiplied*(this: GpTrsf2d; t: GpTrsf2d): GpTrsf2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpTrsf2d; t: GpTrsf2d): GpTrsf2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiply*(this: var GpTrsf2d; t: GpTrsf2d) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpTrsf2d; t: GpTrsf2d) {.cdecl, importcpp: "(# *= #)",
                                        dynlib: tkmath.}
proc preMultiply*(this: var GpTrsf2d; t: GpTrsf2d) {.cdecl, importcpp: "PreMultiply",
    dynlib: tkmath.}
proc power*(this: var GpTrsf2d; n: cint) {.cdecl, importcpp: "Power", dynlib: tkmath.}
proc powered*(this: var GpTrsf2d; n: cint): GpTrsf2d {.cdecl, importcpp: "Powered",
    dynlib: tkmath.}
proc transforms*(this: GpTrsf2d; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Transforms", dynlib: tkmath.}
proc transforms*(this: GpTrsf2d; coord: var GpXY) {.noSideEffect, cdecl,
    importcpp: "Transforms", dynlib: tkmath.}
proc setValues*(this: var GpTrsf2d; a11: cfloat; a12: cfloat; a13: cfloat; a21: cfloat;
               a22: cfloat; a23: cfloat) {.cdecl, importcpp: "SetValues",
                                       dynlib: tkmath.}