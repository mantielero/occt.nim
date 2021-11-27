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
    importcpp: "math_Vector(@)", header: "math_Vector.hxx".}
proc newMathVector*(theLower: cint; theUpper: cint; theInitialValue: cfloat): MathVector {.
    cdecl, constructor, importcpp: "math_Vector(@)", header: "math_Vector.hxx".}
proc newMathVector*(theTab: ptr cfloat; theLower: cint; theUpper: cint): MathVector {.
    cdecl, constructor, importcpp: "math_Vector(@)", header: "math_Vector.hxx".}
proc newMathVector*(other: Xy): MathVector {.cdecl, constructor,
    importcpp: "math_Vector(@)", header: "math_Vector.hxx".}
proc newMathVector*(other: Xyz): MathVector {.cdecl, constructor,
    importcpp: "math_Vector(@)", header: "math_Vector.hxx".}
proc init*(this: var MathVector; theInitialValue: cfloat) {.cdecl, importcpp: "Init",
    header: "math_Vector.hxx".}
proc newMathVector*(theOther: MathVector): MathVector {.cdecl, constructor,
    importcpp: "math_Vector(@)", header: "math_Vector.hxx".}
proc length*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Length",
                                   header: "math_Vector.hxx".}
proc lower*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Lower",
                                  header: "math_Vector.hxx".}
proc upper*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Upper",
                                  header: "math_Vector.hxx".}
proc norm*(this: MathVector): cfloat {.noSideEffect, cdecl, importcpp: "Norm",
                                   header: "math_Vector.hxx".}
proc norm2*(this: MathVector): cfloat {.noSideEffect, cdecl, importcpp: "Norm2",
                                    header: "math_Vector.hxx".}
proc max*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Max",
                                header: "math_Vector.hxx".}
proc min*(this: MathVector): cint {.noSideEffect, cdecl, importcpp: "Min",
                                header: "math_Vector.hxx".}
proc normalize*(this: var MathVector) {.cdecl, importcpp: "Normalize", header: "math_Vector.hxx".}
proc normalized*(this: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "Normalized", header: "math_Vector.hxx".}
proc invert*(this: var MathVector) {.cdecl, importcpp: "Invert", header: "math_Vector.hxx".}
proc inverse*(this: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "Inverse", header: "math_Vector.hxx".}
proc set*(this: var MathVector; theI1: cint; theI2: cint; theV: MathVector) {.cdecl,
    importcpp: "Set", header: "math_Vector.hxx".}
proc slice*(this: MathVector; theI1: cint; theI2: cint): MathVector {.noSideEffect,
    cdecl, importcpp: "Slice", header: "math_Vector.hxx".}
proc multiply*(this: var MathVector; theRight: cfloat) {.cdecl, importcpp: "Multiply",
    header: "math_Vector.hxx".}
proc `*=`*(this: var MathVector; theRight: cfloat) {.cdecl, importcpp: "(# *= #)",
    header: "math_Vector.hxx".}
proc multiplied*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "math_Vector.hxx".}
proc `*`*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "math_Vector.hxx".}
proc tMultiplied*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect,
    cdecl, importcpp: "TMultiplied", header: "math_Vector.hxx".}
proc divide*(this: var MathVector; theRight: cfloat) {.cdecl, importcpp: "Divide",
    header: "math_Vector.hxx".}
proc `/=`*(this: var MathVector; theRight: cfloat) {.cdecl, importcpp: "(# /= #)",
    header: "math_Vector.hxx".}
proc divided*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect, cdecl,
    importcpp: "Divided", header: "math_Vector.hxx".}
proc `/`*(this: MathVector; theRight: cfloat): MathVector {.noSideEffect, cdecl,
    importcpp: "(# / #)", header: "math_Vector.hxx".}
proc add*(this: var MathVector; theRight: MathVector) {.cdecl, importcpp: "Add",
    header: "math_Vector.hxx".}
proc `+=`*(this: var MathVector; theRight: MathVector) {.cdecl, importcpp: "(# += #)",
    header: "math_Vector.hxx".}
proc added*(this: MathVector; theRight: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "Added", header: "math_Vector.hxx".}
proc `+`*(this: MathVector; theRight: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "(# + #)", header: "math_Vector.hxx".}
proc multiply*(this: var MathVector; theLeft: MathVector; theRight: MathMatrix) {.cdecl,
    importcpp: "Multiply", header: "math_Vector.hxx".}
proc multiply*(this: var MathVector; theLeft: MathMatrix; theRight: MathVector) {.cdecl,
    importcpp: "Multiply", header: "math_Vector.hxx".}
proc tMultiply*(this: var MathVector; theTLeft: MathMatrix; theRight: MathVector) {.
    cdecl, importcpp: "TMultiply", header: "math_Vector.hxx".}
proc tMultiply*(this: var MathVector; theLeft: MathVector; theTRight: MathMatrix) {.
    cdecl, importcpp: "TMultiply", header: "math_Vector.hxx".}
proc add*(this: var MathVector; theLeft: MathVector; theRight: MathVector) {.cdecl,
    importcpp: "Add", header: "math_Vector.hxx".}
proc subtract*(this: var MathVector; theLeft: MathVector; theRight: MathVector) {.cdecl,
    importcpp: "Subtract", header: "math_Vector.hxx".}
proc value*(this: MathVector; theNum: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "math_Vector.hxx".}
proc value*(this: var MathVector; theNum: cint): var cfloat {.cdecl, importcpp: "Value",
    header: "math_Vector.hxx".}
proc `()`*(this: MathVector; theNum: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "math_Vector.hxx".}
proc `()`*(this: var MathVector; theNum: cint): var cfloat {.cdecl, importcpp: "#(@)",
    header: "math_Vector.hxx".}
proc initialized*(this: var MathVector; theOther: MathVector): var MathVector {.cdecl,
    importcpp: "Initialized", header: "math_Vector.hxx".}
proc multiplied*(this: MathVector; theRight: MathVector): cfloat {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "math_Vector.hxx".}
proc `*`*(this: MathVector; theRight: MathVector): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "math_Vector.hxx".}
proc multiplied*(this: MathVector; theRight: MathMatrix): MathVector {.noSideEffect,
    cdecl, importcpp: "Multiplied", header: "math_Vector.hxx".}
proc `*`*(this: MathVector; theRight: MathMatrix): MathVector {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "math_Vector.hxx".}
proc opposite*(this: var MathVector): MathVector {.cdecl, importcpp: "Opposite",
    header: "math_Vector.hxx".}
proc `-`*(this: var MathVector): MathVector {.cdecl, importcpp: "(- #)", header: "math_Vector.hxx".}
proc subtract*(this: var MathVector; theRight: MathVector) {.cdecl,
    importcpp: "Subtract", header: "math_Vector.hxx".}
proc `-=`*(this: var MathVector; theRight: MathVector) {.cdecl, importcpp: "(# -= #)",
    header: "math_Vector.hxx".}
proc subtracted*(this: MathVector; theRight: MathVector): MathVector {.noSideEffect,
    cdecl, importcpp: "Subtracted", header: "math_Vector.hxx".}
proc `-`*(this: MathVector; theRight: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "(# - #)", header: "math_Vector.hxx".}
proc multiply*(this: var MathVector; theLeft: cfloat; theRight: MathVector) {.cdecl,
    importcpp: "Multiply", header: "math_Vector.hxx".}
proc dump*(this: MathVector; theO: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_Vector.hxx".}