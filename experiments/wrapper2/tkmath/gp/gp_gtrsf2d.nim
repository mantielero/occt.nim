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
  GpGTrsf2d* {.importcpp: "gp_GTrsf2d", header: "gp_GTrsf2d.hxx", bycopy.} = object ## !
                                                                            ## returns
                                                                            ## identity
                                                                            ## transformation.


proc constructGpGTrsf2d*(): GpGTrsf2d {.cdecl, constructor,
                                     importcpp: "gp_GTrsf2d(@)", dynlib: tkmath.}
proc constructGpGTrsf2d*(t: GpTrsf2d): GpGTrsf2d {.cdecl, constructor,
    importcpp: "gp_GTrsf2d(@)", dynlib: tkmath.}
proc constructGpGTrsf2d*(m: GpMat2d; v: GpXY): GpGTrsf2d {.cdecl, constructor,
    importcpp: "gp_GTrsf2d(@)", dynlib: tkmath.}
proc setAffinity*(this: var GpGTrsf2d; a: GpAx2d; ratio: cfloat) {.cdecl,
    importcpp: "SetAffinity", dynlib: tkmath.}
proc setValue*(this: var GpGTrsf2d; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc setTranslationPart*(this: var GpGTrsf2d; coord: GpXY) {.cdecl,
    importcpp: "SetTranslationPart", dynlib: tkmath.}
proc setTrsf2d*(this: var GpGTrsf2d; t: GpTrsf2d) {.cdecl, importcpp: "SetTrsf2d",
    dynlib: tkmath.}
proc setVectorialPart*(this: var GpGTrsf2d; matrix: GpMat2d) {.cdecl,
    importcpp: "SetVectorialPart", dynlib: tkmath.}
proc isNegative*(this: GpGTrsf2d): bool {.noSideEffect, cdecl,
                                      importcpp: "IsNegative", dynlib: tkmath.}
proc isSingular*(this: GpGTrsf2d): bool {.noSideEffect, cdecl,
                                      importcpp: "IsSingular", dynlib: tkmath.}
proc form*(this: GpGTrsf2d): GpTrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                                      dynlib: tkmath.}
proc translationPart*(this: GpGTrsf2d): GpXY {.noSideEffect, cdecl,
    importcpp: "TranslationPart", dynlib: tkmath.}
proc vectorialPart*(this: GpGTrsf2d): GpMat2d {.noSideEffect, cdecl,
    importcpp: "VectorialPart", dynlib: tkmath.}
proc value*(this: GpGTrsf2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc `()`*(this: GpGTrsf2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc invert*(this: var GpGTrsf2d) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: GpGTrsf2d): GpGTrsf2d {.noSideEffect, cdecl,
    importcpp: "Inverted", dynlib: tkmath.}
proc multiplied*(this: GpGTrsf2d; t: GpGTrsf2d): GpGTrsf2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpGTrsf2d; t: GpGTrsf2d): GpGTrsf2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiply*(this: var GpGTrsf2d; t: GpGTrsf2d) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpGTrsf2d; t: GpGTrsf2d) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc preMultiply*(this: var GpGTrsf2d; t: GpGTrsf2d) {.cdecl, importcpp: "PreMultiply",
    dynlib: tkmath.}
proc power*(this: var GpGTrsf2d; n: cint) {.cdecl, importcpp: "Power", dynlib: tkmath.}
proc powered*(this: GpGTrsf2d; n: cint): GpGTrsf2d {.noSideEffect, cdecl,
    importcpp: "Powered", dynlib: tkmath.}
proc transforms*(this: GpGTrsf2d; coord: var GpXY) {.noSideEffect, cdecl,
    importcpp: "Transforms", dynlib: tkmath.}
proc transformed*(this: GpGTrsf2d; coord: GpXY): GpXY {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc transforms*(this: GpGTrsf2d; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Transforms", dynlib: tkmath.}
proc trsf2d*(this: GpGTrsf2d): GpTrsf2d {.noSideEffect, cdecl, importcpp: "Trsf2d",
                                      dynlib: tkmath.}