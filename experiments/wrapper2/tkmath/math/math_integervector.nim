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
## ! This class implements the real IntegerVector abstract data type.
## ! IntegerVectors can have an arbitrary range which must be define at
## ! the declaration and cannot be changed after this declaration.
## ! Example:
## ! @code
## !    math_IntegerVector V1(-3, 5); // an IntegerVector with range [-3..5]
## ! @endcode
## !
## ! IntegerVector is copied through assignement :
## ! @code
## !    math_IntegerVector V2( 1, 9);
## !    ....
## !    V2 = V1;
## !    V1(1) = 2.0; // the IntegerVector V2 will not be modified.
## ! @endcode
## !
## ! The Exception RangeError is raised when trying to access outside
## ! the range of an IntegerVector :
## ! @code
## !    V1(11) = 0 // --> will raise RangeError;
## ! @endcode
## !
## ! The Exception DimensionError is raised when the dimensions of two
## ! IntegerVectors are not compatible :
## ! @code
## !    math_IntegerVector V3(1, 2);
## !    V3 = V1;    // --> will raise DimensionError;
## !    V1.Add(V3)  // --> will raise DimensionError;
## ! @endcode

type
  MathIntegerVector* {.importcpp: "math_IntegerVector",
                      header: "math_IntegerVector.hxx", bycopy.} = object ## ! contructs an
                                                                     ## IntegerVector in the range
                                                                     ## [Lower..Upper]
                                                                     ## ! is used internally to set the Lower value of the
                                                                     ## IntegerVector.


proc newMathIntegerVector*(theFirst: cint; theLast: cint): MathIntegerVector {.cdecl,
    constructor, importcpp: "math_IntegerVector(@)", dynlib: tkmath.}
proc newMathIntegerVector*(theFirst: cint; theLast: cint; theInitialValue: cint): MathIntegerVector {.
    cdecl, constructor, importcpp: "math_IntegerVector(@)", dynlib: tkmath.}
proc init*(this: var MathIntegerVector; theInitialValue: cint) {.cdecl,
    importcpp: "Init", dynlib: tkmath.}
proc newMathIntegerVector*(theTab: ptr cint; theFirst: cint; theLast: cint): MathIntegerVector {.
    cdecl, constructor, importcpp: "math_IntegerVector(@)", dynlib: tkmath.}
proc newMathIntegerVector*(theOther: MathIntegerVector): MathIntegerVector {.cdecl,
    constructor, importcpp: "math_IntegerVector(@)", dynlib: tkmath.}
proc length*(this: MathIntegerVector): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkmath.}
proc lower*(this: MathIntegerVector): cint {.noSideEffect, cdecl, importcpp: "Lower",
    dynlib: tkmath.}
proc upper*(this: MathIntegerVector): cint {.noSideEffect, cdecl, importcpp: "Upper",
    dynlib: tkmath.}
proc norm*(this: MathIntegerVector): cfloat {.noSideEffect, cdecl, importcpp: "Norm",
    dynlib: tkmath.}
proc norm2*(this: MathIntegerVector): cfloat {.noSideEffect, cdecl,
    importcpp: "Norm2", dynlib: tkmath.}
proc max*(this: MathIntegerVector): cint {.noSideEffect, cdecl, importcpp: "Max",
                                       dynlib: tkmath.}
proc min*(this: MathIntegerVector): cint {.noSideEffect, cdecl, importcpp: "Min",
                                       dynlib: tkmath.}
proc invert*(this: var MathIntegerVector) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverse*(this: MathIntegerVector): MathIntegerVector {.noSideEffect, cdecl,
    importcpp: "Inverse", dynlib: tkmath.}
proc set*(this: var MathIntegerVector; theI1: cint; theI2: cint; theV: MathIntegerVector) {.
    cdecl, importcpp: "Set", dynlib: tkmath.}
proc slice*(this: MathIntegerVector; theI1: cint; theI2: cint): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "Slice", dynlib: tkmath.}
proc multiply*(this: var MathIntegerVector; theRight: cint) {.cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc `*=`*(this: var MathIntegerVector; theRight: cint) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc multiplied*(this: MathIntegerVector; theRight: cint): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: MathIntegerVector; theRight: cint): MathIntegerVector {.noSideEffect,
    cdecl, importcpp: "(# * #)", dynlib: tkmath.}
proc tMultiplied*(this: MathIntegerVector; theRight: cint): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "TMultiplied", dynlib: tkmath.}
proc add*(this: var MathIntegerVector; theRight: MathIntegerVector) {.cdecl,
    importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var MathIntegerVector; theRight: MathIntegerVector) {.cdecl,
    importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: MathIntegerVector; theRight: MathIntegerVector): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "Added", dynlib: tkmath.}
proc `+`*(this: MathIntegerVector; theRight: MathIntegerVector): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "(# + #)", dynlib: tkmath.}
proc add*(this: var MathIntegerVector; theLeft: MathIntegerVector;
         theRight: MathIntegerVector) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc subtract*(this: var MathIntegerVector; theLeft: MathIntegerVector;
              theRight: MathIntegerVector) {.cdecl, importcpp: "Subtract",
    dynlib: tkmath.}
proc value*(this: MathIntegerVector; theNum: cint): cint {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc value*(this: var MathIntegerVector; theNum: cint): var cint {.cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc `()`*(this: MathIntegerVector; theNum: cint): cint {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc `()`*(this: var MathIntegerVector; theNum: cint): var cint {.cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc initialized*(this: var MathIntegerVector; theOther: MathIntegerVector): var MathIntegerVector {.
    cdecl, importcpp: "Initialized", dynlib: tkmath.}
proc multiplied*(this: MathIntegerVector; theRight: MathIntegerVector): cint {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: MathIntegerVector; theRight: MathIntegerVector): cint {.noSideEffect,
    cdecl, importcpp: "(# * #)", dynlib: tkmath.}
proc opposite*(this: var MathIntegerVector): MathIntegerVector {.cdecl,
    importcpp: "Opposite", dynlib: tkmath.}
proc `-`*(this: var MathIntegerVector): MathIntegerVector {.cdecl, importcpp: "(- #)",
    dynlib: tkmath.}
proc subtract*(this: var MathIntegerVector; theRight: MathIntegerVector) {.cdecl,
    importcpp: "Subtract", dynlib: tkmath.}
proc `-=`*(this: var MathIntegerVector; theRight: MathIntegerVector) {.cdecl,
    importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: MathIntegerVector; theRight: MathIntegerVector): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: MathIntegerVector; theRight: MathIntegerVector): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "(# - #)", dynlib: tkmath.}
proc multiply*(this: var MathIntegerVector; theLeft: cint; theRight: MathIntegerVector) {.
    cdecl, importcpp: "Multiply", dynlib: tkmath.}
proc dump*(this: MathIntegerVector; theO: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}