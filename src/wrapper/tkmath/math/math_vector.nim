##  Copyright (c) 1997-1999 Matra Datavision
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

##  resolve name collisions with X11 headers

when defined(Opposite):
  discard
discard "forward decl of math_Matrix"
type
  MathVector* {.importcpp: "math_Vector", header: "math_Vector.hxx", bycopy.} = object ## !
                                                                               ## Contructs a
                                                                               ## non-initialized
                                                                               ## vector
                                                                               ## in
                                                                               ## the
                                                                               ## range
                                                                               ## [theLower..theUpper]
                                                                               ## !
                                                                               ## "theLower"
                                                                               ## and
                                                                               ## "theUpper"
                                                                               ## are
                                                                               ## the
                                                                               ## indexes
                                                                               ## of
                                                                               ## the
                                                                               ## lower
                                                                               ## and
                                                                               ## upper
                                                                               ## bounds
                                                                               ## of
                                                                               ## the
                                                                               ## constructed
                                                                               ## vector.
                                                                               ## !
                                                                               ## Is
                                                                               ## used
                                                                               ## internally
                                                                               ## to
                                                                               ## set
                                                                               ## the
                                                                               ## "theLower"
                                                                               ## value
                                                                               ## of
                                                                               ## the
                                                                               ## vector.


proc newMathVector*(theLower: cint; theUpper: cint): MathVector {.cdecl, constructor,
    importcpp: "math_Vector(@)", dynlib: tkmath.}
proc newMathVector*(theLower: cint; theUpper: cint; theInitialValue: cfloat): MathVector {.
    cdecl, constructor, importcpp: "math_Vector(@)", dynlib: tkmath.}
proc newMathVector*(theTab: ptr cfloat; theLower: cint; theUpper: cint): MathVector {.
    cdecl, constructor, importcpp: "math_Vector(@)", dynlib: tkmath.}
proc newMathVector*(other: Xy): MathVector {.cdecl, constructor,
    importcpp: "math_Vector(@)", dynlib: tkmath.}
proc newMathVector*(other: Xyz): MathVector {.cdecl, constructor,
    importcpp: "math_Vector(@)", dynlib: tkmath.}
proc init*(this: var MathVector; theInitialValue: cfloat) {.cdecl, importcpp: "Init",
    dynlib: tkmath.}
proc newMathVector*(theOther: MathVector): MathVector {.cdecl, constructor,
    importcpp: "math_Vector(@)", dynlib: tkmath.}
proc length*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Length",
                                   dynlib: tkmath.}
proc lower*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Lower",
                                  dynlib: tkmath.}
proc upper*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Upper",
                                  dynlib: tkmath.}
proc norm*(this: MathVector): cfloat {.noSideEffect, cdecl, importcpp: "Norm",
                                   dynlib: tkmath.}
proc norm2*(this: MathVector): cfloat {.noSideEffect, cdecl, importcpp: "Norm2",
                                    dynlib: tkmath.}
proc max*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Max",
                                dynlib: tkmath.}
proc min*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Min",
                                dynlib: tkmath.}
proc normalize*(this: var MathVector) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "Normalized", dynlib: tkmath.}
proc invert*(this: var MathVector) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverse*(this: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "Inverse", dynlib: tkmath.}
proc set*(this: var MathVector; theI1: cint; theI2: cint; theV: MathVector) {.cdecl,
    importcpp: "Set", dynlib: tkmath.}
proc slice*(this: MathVector; theI1: cint; theI2: cint): MathVector {.noSideEffect,
    cdecl, importcpp: "Slice", dynlib: tkmath.}
proc multiply*(this: var MathVector; theRight: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var MathVector; theRight: cfloat) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc multiplied*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc tMultiplied*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect,
    cdecl, importcpp: "TMultiplied", dynlib: tkmath.}
proc divide*(this: var MathVector; theRight: cfloat) {.cdecl, importcpp: "Divide",
    dynlib: tkmath.}
proc `/=`*(this: var MathVector; theRight: cfloat) {.cdecl, importcpp: "(# /= #)",
    dynlib: tkmath.}
proc divided*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect, cdecl,
    importcpp: "(# / #)", dynlib: tkmath.}
proc add*(this: var MathVector; theRight: MathVector) {.cdecl, importcpp: "Add",
    dynlib: tkmath.}
proc `+=`*(this: var MathVector; theRight: MathVector) {.cdecl, importcpp: "(# += #)",
    dynlib: tkmath.}
proc added*(this: MathVector; theRight: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "Added", dynlib: tkmath.}
proc `+`*(this: MathVector; theRight: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "(# + #)", dynlib: tkmath.}
proc multiply*(this: var MathVector; theLeft: MathVector; theRight: MathMatrix) {.cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc multiply*(this: var MathVector; theLeft: MathMatrix; theRight: MathVector) {.cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc tMultiply*(this: var MathVector; theTLeft: MathMatrix; theRight: MathVector) {.
    cdecl, importcpp: "TMultiply", dynlib: tkmath.}
proc tMultiply*(this: var MathVector; theLeft: MathVector; theTRight: MathMatrix) {.
    cdecl, importcpp: "TMultiply", dynlib: tkmath.}
proc add*(this: var MathVector; theLeft: MathVector; theRight: MathVector) {.cdecl,
    importcpp: "Add", dynlib: tkmath.}
proc subtract*(this: var MathVector; theLeft: MathVector; theRight: MathVector) {.cdecl,
    importcpp: "Subtract", dynlib: tkmath.}
proc value*(this: MathVector; theNum: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc value*(this: var MathVector; theNum: cint): var cfloat {.cdecl, importcpp: "Value",
    dynlib: tkmath.}
proc `()`*(this: MathVector; theNum: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc `()`*(this: var MathVector; theNum: cint): var cfloat {.cdecl, importcpp: "#(@)",
    dynlib: tkmath.}
proc initialized*(this: var MathVector; theOther: MathVector): var MathVector {.cdecl,
    importcpp: "Initialized", dynlib: tkmath.}
proc multiplied*(this: MathVector; theRight: MathVector): cfloat {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: MathVector; theRight: MathVector): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiplied*(this: MathVector; theRight: MathMatrix): MathVector {.noSideEffect,
    cdecl, importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: MathVector; theRight: MathMatrix): MathVector {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc opposite*(this: var MathVector): MathVector {.cdecl, importcpp: "Opposite",
    dynlib: tkmath.}
proc `-`*(this: var MathVector): MathVector {.cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc subtract*(this: var MathVector; theRight: MathVector) {.cdecl,
    importcpp: "Subtract", dynlib: tkmath.}
proc `-=`*(this: var MathVector; theRight: MathVector) {.cdecl, importcpp: "(# -= #)",
    dynlib: tkmath.}
proc subtracted*(this: MathVector; theRight: MathVector): MathVector {.noSideEffect,
    cdecl, importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: MathVector; theRight: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "(# - #)", dynlib: tkmath.}
proc multiply*(this: var MathVector; theLeft: cfloat; theRight: MathVector) {.cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc dump*(this: MathVector; theO: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}