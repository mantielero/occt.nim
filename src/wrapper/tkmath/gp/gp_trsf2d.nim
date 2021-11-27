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
  Trsf2d* {.importcpp: "gp_Trsf2d", header: "gp_Trsf2d.hxx", bycopy.} = object ## ! Returns identity
                                                                       ## transformation.
                                                                       ## ! Makes
                                                                       ## orthogonalization of "matrix"


proc newTrsf2d*(): Trsf2d {.cdecl, constructor, importcpp: "gp_Trsf2d(@)",
                         header: "gp_Trsf2d.hxx".}
proc newTrsf2d*(t: Trsf): Trsf2d {.cdecl, constructor, importcpp: "gp_Trsf2d(@)",
                               header: "gp_Trsf2d.hxx".}
proc setMirror*(this: var Trsf2d; p: Pnt2d) {.cdecl, importcpp: "SetMirror",
                                        header: "gp_Trsf2d.hxx".}
proc setMirror*(this: var Trsf2d; a: Ax2d) {.cdecl, importcpp: "SetMirror",
                                       header: "gp_Trsf2d.hxx".}
proc setRotation*(this: var Trsf2d; p: Pnt2d; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "gp_Trsf2d.hxx".}
proc setScale*(this: var Trsf2d; p: Pnt2d; s: cfloat) {.cdecl, importcpp: "SetScale",
    header: "gp_Trsf2d.hxx".}
proc setTransformation*(this: var Trsf2d; fromSystem1: Ax2d; toSystem2: Ax2d) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc setTransformation*(this: var Trsf2d; toSystem: Ax2d) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc setTranslation*(this: var Trsf2d; v: Vec2d) {.cdecl, importcpp: "SetTranslation",
    header: "gp_Trsf2d.hxx".}
proc setTranslation*(this: var Trsf2d; p1: Pnt2d; p2: Pnt2d) {.cdecl,
    importcpp: "SetTranslation", header: "gp_Trsf2d.hxx".}
proc setTranslationPart*(this: var Trsf2d; v: Vec2d) {.cdecl,
    importcpp: "SetTranslationPart", header: "gp_Trsf2d.hxx".}
proc setScaleFactor*(this: var Trsf2d; s: cfloat) {.cdecl, importcpp: "SetScaleFactor",
    header: "gp_Trsf2d.hxx".}
proc isNegative*(this: Trsf2d): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                   header: "gp_Trsf2d.hxx".}
proc form*(this: Trsf2d): TrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                                 header: "gp_Trsf2d.hxx".}
proc scaleFactor*(this: Trsf2d): cfloat {.noSideEffect, cdecl,
                                      importcpp: "ScaleFactor", header: "gp_Trsf2d.hxx".}
proc translationPart*(this: Trsf2d): Xy {.noSideEffect, cdecl,
                                      importcpp: "TranslationPart", header: "gp_Trsf2d.hxx".}
proc vectorialPart*(this: Trsf2d): Mat2d {.noSideEffect, cdecl,
                                       importcpp: "VectorialPart", header: "gp_Trsf2d.hxx".}
proc hVectorialPart*(this: Trsf2d): Mat2d {.noSideEffect, cdecl,
                                        importcpp: "HVectorialPart",
                                        header: "gp_Trsf2d.hxx".}
proc rotationPart*(this: Trsf2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "RotationPart", header: "gp_Trsf2d.hxx".}
proc value*(this: Trsf2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Trsf2d.hxx".}
proc invert*(this: var Trsf2d) {.cdecl, importcpp: "Invert", header: "gp_Trsf2d.hxx".}
proc inverted*(this: Trsf2d): Trsf2d {.noSideEffect, cdecl, importcpp: "Inverted",
                                   header: "gp_Trsf2d.hxx".}
proc multiplied*(this: Trsf2d; t: Trsf2d): Trsf2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Trsf2d.hxx".}
proc `*`*(this: Trsf2d; t: Trsf2d): Trsf2d {.noSideEffect, cdecl, importcpp: "(# * #)",
                                       header: "gp_Trsf2d.hxx".}
proc multiply*(this: var Trsf2d; t: Trsf2d) {.cdecl, importcpp: "Multiply",
                                        header: "gp_Trsf2d.hxx".}
proc `*=`*(this: var Trsf2d; t: Trsf2d) {.cdecl, importcpp: "(# *= #)", header: "gp_Trsf2d.hxx".}
proc preMultiply*(this: var Trsf2d; t: Trsf2d) {.cdecl, importcpp: "PreMultiply",
    header: "gp_Trsf2d.hxx".}
proc power*(this: var Trsf2d; n: cint) {.cdecl, importcpp: "Power", header: "gp_Trsf2d.hxx".}
proc powered*(this: var Trsf2d; n: cint): Trsf2d {.cdecl, importcpp: "Powered",
    header: "gp_Trsf2d.hxx".}
proc transforms*(this: Trsf2d; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_Trsf2d.hxx".}
proc transforms*(this: Trsf2d; coord: var Xy) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_Trsf2d.hxx".}
proc setValues*(this: var Trsf2d; a11: cfloat; a12: cfloat; a13: cfloat; a21: cfloat;
               a22: cfloat; a23: cfloat) {.cdecl, importcpp: "SetValues",
                                       header: "gp_Trsf2d.hxx".}