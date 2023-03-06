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

proc trsf2d*(): Trsf2dObj {.cdecl, constructor, importcpp: "gp_Trsf2d(@)",
                         header: "gp_Trsf2d.hxx".}
proc trsf2d*(t: gp_Trsf): Trsf2dObj {.cdecl, constructor, importcpp: "gp_Trsf2d(@)",
                               header: "gp_Trsf2d.hxx".}
proc setMirror*(this: var Trsf2dObj; p: gp_Pnt2d) {.cdecl, importcpp: "SetMirror",
                                        header: "gp_Trsf2d.hxx".}
proc setMirror*(this: var Trsf2dObj; a: Ax2dObj) {.cdecl, importcpp: "SetMirror",
                                       header: "gp_Trsf2d.hxx".}
proc setRotation*(this: var Trsf2dObj; p: gp_Pnt2d; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "gp_Trsf2d.hxx".}
proc setScale*(this: var Trsf2dObj; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "SetScale",
    header: "gp_Trsf2d.hxx".}
proc setTransformation*(this: var Trsf2dObj; fromSystem1: Ax2dObj; toSystem2: Ax2dObj) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc setTransformation*(this: var Trsf2dObj; toSystem: Ax2dObj) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc setTranslation*(this: var Trsf2dObj; v: gp_Vec2d) {.cdecl, importcpp: "SetTranslation",
    header: "gp_Trsf2d.hxx".}
proc setTranslation*(this: var Trsf2dObj; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl,
    importcpp: "SetTranslation", header: "gp_Trsf2d.hxx".}
proc setTranslationPart*(this: var Trsf2dObj; v: gp_Vec2d) {.cdecl,
    importcpp: "SetTranslationPart", header: "gp_Trsf2d.hxx".}
proc setScaleFactor*(this: var Trsf2dObj; s: cfloat) {.cdecl, importcpp: "SetScaleFactor",
    header: "gp_Trsf2d.hxx".}
proc isNegative*(this: Trsf2dObj): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                   header: "gp_Trsf2d.hxx".}
proc form*(this: Trsf2dObj): TrsfFormObj {.noSideEffect, cdecl, importcpp: "Form",
                                 header: "gp_Trsf2d.hxx".}
proc scaleFactor*(this: Trsf2dObj): cfloat {.noSideEffect, cdecl,
                                      importcpp: "ScaleFactor", header: "gp_Trsf2d.hxx".}
proc translationPart*(this: Trsf2dObj): XyObj {.noSideEffect, cdecl,
                                      importcpp: "TranslationPart", header: "gp_Trsf2d.hxx".}
proc vectorialPart*(this: Trsf2dObj): Mat2dObj {.noSideEffect, cdecl,
                                       importcpp: "VectorialPart", header: "gp_Trsf2d.hxx".}
proc hVectorialPart*(this: Trsf2dObj): Mat2dObj {.noSideEffect, cdecl,
                                        importcpp: "HVectorialPart",
                                        header: "gp_Trsf2d.hxx".}
proc rotationPart*(this: Trsf2dObj): cfloat {.noSideEffect, cdecl,
                                       importcpp: "RotationPart", header: "gp_Trsf2d.hxx".}
proc value*(this: Trsf2dObj; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Trsf2d.hxx".}
proc invert*(this: var Trsf2dObj) {.cdecl, importcpp: "Invert", header: "gp_Trsf2d.hxx".}
proc inverted*(this: Trsf2dObj): Trsf2dObj {.noSideEffect, cdecl, importcpp: "Inverted",
                                   header: "gp_Trsf2d.hxx".}
proc multiplied*(this: Trsf2dObj; t: Trsf2dObj): Trsf2dObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Trsf2d.hxx".}
proc `*`*(this: Trsf2dObj; t: Trsf2dObj): Trsf2dObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                       header: "gp_Trsf2d.hxx".}
proc multiply*(this: var Trsf2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Multiply",
                                        header: "gp_Trsf2d.hxx".}
proc `*=`*(this: var Trsf2dObj; t: Trsf2dObj) {.cdecl, importcpp: "(# *= #)", header: "gp_Trsf2d.hxx".}
proc preMultiply*(this: var Trsf2dObj; t: Trsf2dObj) {.cdecl, importcpp: "PreMultiply",
    header: "gp_Trsf2d.hxx".}
proc power*(this: var Trsf2dObj; n: cint) {.cdecl, importcpp: "Power", header: "gp_Trsf2d.hxx".}
proc powered*(this: var Trsf2dObj; n: cint): Trsf2dObj {.cdecl, importcpp: "Powered",
    header: "gp_Trsf2d.hxx".}
proc transforms*(this: Trsf2dObj; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_Trsf2d.hxx".}
proc transforms*(this: Trsf2dObj; coord: var XyObj) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_Trsf2d.hxx".}
proc setValues*(this: var Trsf2dObj; a11: cfloat; a12: cfloat; a13: cfloat; a21: cfloat;
               a22: cfloat; a23: cfloat) {.cdecl, importcpp: "SetValues",
                                       header: "gp_Trsf2d.hxx".}
