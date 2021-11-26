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
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Mat2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
type
  GTrsf2d* {.importcpp: "gp_GTrsf2d", header: "gp_GTrsf2d.hxx", bycopy.} = object ## !
                                                                          ## returns
                                                                          ## identity
                                                                          ## transformation.


proc newGTrsf2d*(): GTrsf2d {.cdecl, constructor, importcpp: "gp_GTrsf2d(@)",
                           dynlib: tkmath.}
proc newGTrsf2d*(t: Trsf2d): GTrsf2d {.cdecl, constructor, importcpp: "gp_GTrsf2d(@)",
                                   dynlib: tkmath.}
proc newGTrsf2d*(m: Mat2d; v: Xy): GTrsf2d {.cdecl, constructor,
                                       importcpp: "gp_GTrsf2d(@)", dynlib: tkmath.}
proc setAffinity*(this: var GTrsf2d; a: Ax2d; ratio: cfloat) {.cdecl,
    importcpp: "SetAffinity", dynlib: tkmath.}
proc setValue*(this: var GTrsf2d; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc setTranslationPart*(this: var GTrsf2d; coord: Xy) {.cdecl,
    importcpp: "SetTranslationPart", dynlib: tkmath.}
proc setTrsf2d*(this: var GTrsf2d; t: Trsf2d) {.cdecl, importcpp: "SetTrsf2d",
    dynlib: tkmath.}
proc setVectorialPart*(this: var GTrsf2d; matrix: Mat2d) {.cdecl,
    importcpp: "SetVectorialPart", dynlib: tkmath.}
proc isNegative*(this: GTrsf2d): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                    dynlib: tkmath.}
proc isSingular*(this: GTrsf2d): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                    dynlib: tkmath.}
proc form*(this: GTrsf2d): TrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                                  dynlib: tkmath.}
proc translationPart*(this: GTrsf2d): Xy {.noSideEffect, cdecl,
                                       importcpp: "TranslationPart",
                                       dynlib: tkmath.}
proc vectorialPart*(this: GTrsf2d): Mat2d {.noSideEffect, cdecl,
                                        importcpp: "VectorialPart", dynlib: tkmath.}
proc value*(this: GTrsf2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc `()`*(this: GTrsf2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc invert*(this: var GTrsf2d) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: GTrsf2d): GTrsf2d {.noSideEffect, cdecl, importcpp: "Inverted",
                                     dynlib: tkmath.}
proc multiplied*(this: GTrsf2d; t: GTrsf2d): GTrsf2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GTrsf2d; t: GTrsf2d): GTrsf2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiply*(this: var GTrsf2d; t: GTrsf2d) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GTrsf2d; t: GTrsf2d) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc preMultiply*(this: var GTrsf2d; t: GTrsf2d) {.cdecl, importcpp: "PreMultiply",
    dynlib: tkmath.}
proc power*(this: var GTrsf2d; n: cint) {.cdecl, importcpp: "Power", dynlib: tkmath.}
proc powered*(this: GTrsf2d; n: cint): GTrsf2d {.noSideEffect, cdecl,
    importcpp: "Powered", dynlib: tkmath.}
proc transforms*(this: GTrsf2d; coord: var Xy) {.noSideEffect, cdecl,
    importcpp: "Transforms", dynlib: tkmath.}
proc transformed*(this: GTrsf2d; coord: Xy): Xy {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc transforms*(this: GTrsf2d; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Transforms", dynlib: tkmath.}
proc trsf2d*(this: GTrsf2d): Trsf2d {.noSideEffect, cdecl, importcpp: "Trsf2d",
                                  dynlib: tkmath.}