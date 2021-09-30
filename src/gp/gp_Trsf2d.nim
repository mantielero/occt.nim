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
  Trsf2d* {.importcpp: "gp_Trsf2d", header: "gp_Trsf2d.hxx", bycopy.} = object ## ! Makes
                                                                       ## orthogonalization of "matrix"


proc `new`*(this: var Trsf2d; theSize: csize_t): pointer {.
    importcpp: "gp_Trsf2d::operator new", header: "gp_Trsf2d.hxx".}
proc `delete`*(this: var Trsf2d; theAddress: pointer) {.
    importcpp: "gp_Trsf2d::operator delete", header: "gp_Trsf2d.hxx".}
proc `new[]`*(this: var Trsf2d; theSize: csize_t): pointer {.
    importcpp: "gp_Trsf2d::operator new[]", header: "gp_Trsf2d.hxx".}
proc `delete[]`*(this: var Trsf2d; theAddress: pointer) {.
    importcpp: "gp_Trsf2d::operator delete[]", header: "gp_Trsf2d.hxx".}
proc `new`*(this: var Trsf2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Trsf2d::operator new", header: "gp_Trsf2d.hxx".}
proc `delete`*(this: var Trsf2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Trsf2d::operator delete", header: "gp_Trsf2d.hxx".}
proc constructTrsf2d*(): Trsf2d {.constructor, importcpp: "gp_Trsf2d(@)",
                               header: "gp_Trsf2d.hxx".}
proc constructTrsf2d*(t: Trsf): Trsf2d {.constructor, importcpp: "gp_Trsf2d(@)",
                                     header: "gp_Trsf2d.hxx".}
proc setMirror*(this: var Trsf2d; p: Pnt2d) {.importcpp: "SetMirror",
                                        header: "gp_Trsf2d.hxx".}
proc setMirror*(this: var Trsf2d; a: Ax2d) {.importcpp: "SetMirror",
                                       header: "gp_Trsf2d.hxx".}
proc setRotation*(this: var Trsf2d; p: Pnt2d; ang: StandardReal) {.
    importcpp: "SetRotation", header: "gp_Trsf2d.hxx".}
proc setScale*(this: var Trsf2d; p: Pnt2d; s: StandardReal) {.importcpp: "SetScale",
    header: "gp_Trsf2d.hxx".}
proc setTransformation*(this: var Trsf2d; fromSystem1: Ax2d; toSystem2: Ax2d) {.
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc setTransformation*(this: var Trsf2d; toSystem: Ax2d) {.
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc setTranslation*(this: var Trsf2d; v: Vec2d) {.importcpp: "SetTranslation",
    header: "gp_Trsf2d.hxx".}
proc setTranslation*(this: var Trsf2d; p1: Pnt2d; p2: Pnt2d) {.
    importcpp: "SetTranslation", header: "gp_Trsf2d.hxx".}
proc setTranslationPart*(this: var Trsf2d; v: Vec2d) {.
    importcpp: "SetTranslationPart", header: "gp_Trsf2d.hxx".}
proc setScaleFactor*(this: var Trsf2d; s: StandardReal) {.importcpp: "SetScaleFactor",
    header: "gp_Trsf2d.hxx".}
proc isNegative*(this: Trsf2d): StandardBoolean {.noSideEffect,
    importcpp: "IsNegative", header: "gp_Trsf2d.hxx".}
proc form*(this: Trsf2d): TrsfForm {.noSideEffect, importcpp: "Form",
                                 header: "gp_Trsf2d.hxx".}
proc scaleFactor*(this: Trsf2d): StandardReal {.noSideEffect,
    importcpp: "ScaleFactor", header: "gp_Trsf2d.hxx".}
proc translationPart*(this: Trsf2d): Xy {.noSideEffect, importcpp: "TranslationPart",
                                      header: "gp_Trsf2d.hxx".}
proc vectorialPart*(this: Trsf2d): Mat2d {.noSideEffect, importcpp: "VectorialPart",
                                       header: "gp_Trsf2d.hxx".}
proc hVectorialPart*(this: Trsf2d): Mat2d {.noSideEffect,
                                        importcpp: "HVectorialPart",
                                        header: "gp_Trsf2d.hxx".}
proc rotationPart*(this: Trsf2d): StandardReal {.noSideEffect,
    importcpp: "RotationPart", header: "gp_Trsf2d.hxx".}
proc value*(this: Trsf2d; row: int; col: int): StandardReal {.noSideEffect,
    importcpp: "Value", header: "gp_Trsf2d.hxx".}
proc invert*(this: var Trsf2d) {.importcpp: "Invert", header: "gp_Trsf2d.hxx".}
proc inverted*(this: Trsf2d): Trsf2d {.noSideEffect, importcpp: "Inverted",
                                   header: "gp_Trsf2d.hxx".}
proc multiplied*(this: Trsf2d; t: Trsf2d): Trsf2d {.noSideEffect,
    importcpp: "Multiplied", header: "gp_Trsf2d.hxx".}
proc `*`*(this: Trsf2d; t: Trsf2d): Trsf2d {.noSideEffect, importcpp: "(# * #)",
                                       header: "gp_Trsf2d.hxx".}
proc multiply*(this: var Trsf2d; t: Trsf2d) {.importcpp: "Multiply",
                                        header: "gp_Trsf2d.hxx".}
proc `*=`*(this: var Trsf2d; t: Trsf2d) {.importcpp: "(# *= #)", header: "gp_Trsf2d.hxx".}
proc preMultiply*(this: var Trsf2d; t: Trsf2d) {.importcpp: "PreMultiply",
    header: "gp_Trsf2d.hxx".}
proc power*(this: var Trsf2d; n: int) {.importcpp: "Power", header: "gp_Trsf2d.hxx".}
proc powered*(this: var Trsf2d; n: int): Trsf2d {.importcpp: "Powered",
    header: "gp_Trsf2d.hxx".}
proc transforms*(this: Trsf2d; x: var StandardReal; y: var StandardReal) {.noSideEffect,
    importcpp: "Transforms", header: "gp_Trsf2d.hxx".}
proc transforms*(this: Trsf2d; coord: var Xy) {.noSideEffect, importcpp: "Transforms",
    header: "gp_Trsf2d.hxx".}
proc setValues*(this: var Trsf2d; a11: StandardReal; a12: StandardReal;
               a13: StandardReal; a21: StandardReal; a22: StandardReal;
               a23: StandardReal) {.importcpp: "SetValues", header: "gp_Trsf2d.hxx".}