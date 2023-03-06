import gp_types

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

proc trsf2d*(): gp_Trsf2d {.cdecl, constructor, importcpp: "gp_Trsf2d(@)",
                         header: "gp_Trsf2d.hxx".}
proc trsf2d*(t: gp_Trsf): gp_Trsf2d {.cdecl, constructor, importcpp: "gp_Trsf2d(@)",
                               header: "gp_Trsf2d.hxx".}
proc setMirror*(this: var gp_Trsf2d; p: gp_Pnt2d) {.cdecl, importcpp: "SetMirror",
                                        header: "gp_Trsf2d.hxx".}
proc setMirror*(this: var gp_Trsf2d; a: gp_Ax2d) {.cdecl, importcpp: "SetMirror",
                                       header: "gp_Trsf2d.hxx".}
proc setRotation*(this: var gp_Trsf2d; p: gp_Pnt2d; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "gp_Trsf2d.hxx".}
proc setScale*(this: var gp_Trsf2d; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "SetScale",
    header: "gp_Trsf2d.hxx".}
proc setTransformation*(this: var gp_Trsf2d; fromSystem1: gp_Ax2d; toSystem2: gp_Ax2d) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc setTransformation*(this: var gp_Trsf2d; toSystem: gp_Ax2d) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc setTranslation*(this: var gp_Trsf2d; v: gp_Vec2d) {.cdecl, importcpp: "SetTranslation",
    header: "gp_Trsf2d.hxx".}
proc setTranslation*(this: var gp_Trsf2d; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl,
    importcpp: "SetTranslation", header: "gp_Trsf2d.hxx".}
proc setTranslationPart*(this: var gp_Trsf2d; v: gp_Vec2d) {.cdecl,
    importcpp: "SetTranslationPart", header: "gp_Trsf2d.hxx".}
proc setScaleFactor*(this: var gp_Trsf2d; s: cfloat) {.cdecl, importcpp: "SetScaleFactor",
    header: "gp_Trsf2d.hxx".}
proc isNegative*(this: gp_Trsf2d): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                   header: "gp_Trsf2d.hxx".}
proc form*(this: gp_Trsf2d): gp_TrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                                 header: "gp_Trsf2d.hxx".}
proc scaleFactor*(this: gp_Trsf2d): cfloat {.noSideEffect, cdecl,
                                      importcpp: "ScaleFactor", header: "gp_Trsf2d.hxx".}
proc translationPart*(this: gp_Trsf2d): gp_Xy {.noSideEffect, cdecl,
                                      importcpp: "TranslationPart", header: "gp_Trsf2d.hxx".}
proc vectorialPart*(this: gp_Trsf2d): gp_Mat2d {.noSideEffect, cdecl,
                                       importcpp: "VectorialPart", header: "gp_Trsf2d.hxx".}
proc hVectorialPart*(this: gp_Trsf2d): gp_Mat2d {.noSideEffect, cdecl,
                                        importcpp: "HVectorialPart",
                                        header: "gp_Trsf2d.hxx".}
proc rotationPart*(this: gp_Trsf2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "RotationPart", header: "gp_Trsf2d.hxx".}
proc value*(this: gp_Trsf2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Trsf2d.hxx".}
proc invert*(this: var gp_Trsf2d) {.cdecl, importcpp: "Invert", header: "gp_Trsf2d.hxx".}
proc inverted*(this: gp_Trsf2d): gp_Trsf2d {.noSideEffect, cdecl, importcpp: "Inverted",
                                   header: "gp_Trsf2d.hxx".}
proc multiplied*(this: gp_Trsf2d; t: gp_Trsf2d): gp_Trsf2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Trsf2d.hxx".}
proc `*`*(this: gp_Trsf2d; t: gp_Trsf2d): gp_Trsf2d {.noSideEffect, cdecl, importcpp: "(# * #)",
                                       header: "gp_Trsf2d.hxx".}
proc multiply*(this: var gp_Trsf2d; t: gp_Trsf2d) {.cdecl, importcpp: "Multiply",
                                        header: "gp_Trsf2d.hxx".}
proc `*=`*(this: var gp_Trsf2d; t: gp_Trsf2d) {.cdecl, importcpp: "(# *= #)", header: "gp_Trsf2d.hxx".}
proc preMultiply*(this: var gp_Trsf2d; t: gp_Trsf2d) {.cdecl, importcpp: "PreMultiply",
    header: "gp_Trsf2d.hxx".}
proc power*(this: var gp_Trsf2d; n: cint) {.cdecl, importcpp: "Power", header: "gp_Trsf2d.hxx".}
proc powered*(this: var gp_Trsf2d; n: cint): gp_Trsf2d {.cdecl, importcpp: "Powered",
    header: "gp_Trsf2d.hxx".}
proc transforms*(this: gp_Trsf2d; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_Trsf2d.hxx".}
proc transforms*(this: gp_Trsf2d; coord: var gp_Xy) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_Trsf2d.hxx".}
proc setValues*(this: var gp_Trsf2d; a11: cfloat; a12: cfloat; a13: cfloat; a21: cfloat;
               a22: cfloat; a23: cfloat) {.cdecl, importcpp: "SetValues",
                                       header: "gp_Trsf2d.hxx".}
