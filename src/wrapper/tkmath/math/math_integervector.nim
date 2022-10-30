{.experimental: "callOperator".}

import math_types
import ../../tkernel/standard/standard_types
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



proc newMathIntegerVector*(theFirst: cint; theLast: cint): MathIntegerVector {.cdecl,
    constructor, importcpp: "math_IntegerVector(@)", header: "math_IntegerVector.hxx".}
proc newMathIntegerVector*(theFirst: cint; theLast: cint; theInitialValue: cint): MathIntegerVector {.
    cdecl, constructor, importcpp: "math_IntegerVector(@)", header: "math_IntegerVector.hxx".}
proc init*(this: var MathIntegerVector; theInitialValue: cint) {.cdecl,
    importcpp: "Init", header: "math_IntegerVector.hxx".}
proc newMathIntegerVector*(theTab: ptr cint; theFirst: cint; theLast: cint): MathIntegerVector {.
    cdecl, constructor, importcpp: "math_IntegerVector(@)", header: "math_IntegerVector.hxx".}
proc newMathIntegerVector*(theOther: MathIntegerVector): MathIntegerVector {.cdecl,
    constructor, importcpp: "math_IntegerVector(@)", header: "math_IntegerVector.hxx".}
proc length*(this: MathIntegerVector): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "math_IntegerVector.hxx".}
proc lower*(this: MathIntegerVector): cint {.noSideEffect, cdecl, importcpp: "Lower",
    header: "math_IntegerVector.hxx".}
proc upper*(this: MathIntegerVector): cint {.noSideEffect, cdecl, importcpp: "Upper",
    header: "math_IntegerVector.hxx".}
proc norm*(this: MathIntegerVector): cfloat {.noSideEffect, cdecl, importcpp: "Norm",
    header: "math_IntegerVector.hxx".}
proc norm2*(this: MathIntegerVector): cfloat {.noSideEffect, cdecl,
    importcpp: "Norm2", header: "math_IntegerVector.hxx".}
proc max*(this: MathIntegerVector): cint {.noSideEffect, cdecl, importcpp: "Max",
                                       header: "math_IntegerVector.hxx".}
proc min*(this: MathIntegerVector): cint {.noSideEffect, cdecl, importcpp: "Min",
                                       header: "math_IntegerVector.hxx".}
proc invert*(this: var MathIntegerVector) {.cdecl, importcpp: "Invert", header: "math_IntegerVector.hxx".}
proc inverse*(this: MathIntegerVector): MathIntegerVector {.noSideEffect, cdecl,
    importcpp: "Inverse", header: "math_IntegerVector.hxx".}
proc set*(this: var MathIntegerVector; theI1: cint; theI2: cint; theV: MathIntegerVector) {.
    cdecl, importcpp: "Set", header: "math_IntegerVector.hxx".}
proc slice*(this: MathIntegerVector; theI1: cint; theI2: cint): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "Slice", header: "math_IntegerVector.hxx".}
proc multiply*(this: var MathIntegerVector; theRight: cint) {.cdecl,
    importcpp: "Multiply", header: "math_IntegerVector.hxx".}
proc `*=`*(this: var MathIntegerVector; theRight: cint) {.cdecl, importcpp: "(# *= #)",
    header: "math_IntegerVector.hxx".}
proc multiplied*(this: MathIntegerVector; theRight: cint): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "Multiplied", header: "math_IntegerVector.hxx".}
proc `*`*(this: MathIntegerVector; theRight: cint): MathIntegerVector {.noSideEffect,
    cdecl, importcpp: "(# * #)", header: "math_IntegerVector.hxx".}
proc tMultiplied*(this: MathIntegerVector; theRight: cint): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "TMultiplied", header: "math_IntegerVector.hxx".}
proc add*(this: var MathIntegerVector; theRight: MathIntegerVector) {.cdecl,
    importcpp: "Add", header: "math_IntegerVector.hxx".}
proc `+=`*(this: var MathIntegerVector; theRight: MathIntegerVector) {.cdecl,
    importcpp: "(# += #)", header: "math_IntegerVector.hxx".}
proc added*(this: MathIntegerVector; theRight: MathIntegerVector): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "Added", header: "math_IntegerVector.hxx".}
proc `+`*(this: MathIntegerVector; theRight: MathIntegerVector): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: "math_IntegerVector.hxx".}
proc add*(this: var MathIntegerVector; theLeft: MathIntegerVector;
         theRight: MathIntegerVector) {.cdecl, importcpp: "Add", header: "math_IntegerVector.hxx".}
proc subtract*(this: var MathIntegerVector; theLeft: MathIntegerVector;
              theRight: MathIntegerVector) {.cdecl, importcpp: "Subtract",
    header: "math_IntegerVector.hxx".}
proc value*(this: MathIntegerVector; theNum: cint): cint {.noSideEffect, cdecl,
    importcpp: "Value", header: "math_IntegerVector.hxx".}
proc value*(this: var MathIntegerVector; theNum: cint): var cint {.cdecl,
    importcpp: "Value", header: "math_IntegerVector.hxx".}
proc `()`*(this: MathIntegerVector; theNum: cint): cint {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "math_IntegerVector.hxx".}
proc `()`*(this: var MathIntegerVector; theNum: cint): var cint {.cdecl,
    importcpp: "#(@)", header: "math_IntegerVector.hxx".}
proc initialized*(this: var MathIntegerVector; theOther: MathIntegerVector): var MathIntegerVector {.
    cdecl, importcpp: "Initialized", header: "math_IntegerVector.hxx".}
proc multiplied*(this: MathIntegerVector; theRight: MathIntegerVector): cint {.
    noSideEffect, cdecl, importcpp: "Multiplied", header: "math_IntegerVector.hxx".}
proc `*`*(this: MathIntegerVector; theRight: MathIntegerVector): cint {.noSideEffect,
    cdecl, importcpp: "(# * #)", header: "math_IntegerVector.hxx".}
proc opposite*(this: var MathIntegerVector): MathIntegerVector {.cdecl,
    importcpp: "Opposite", header: "math_IntegerVector.hxx".}
proc `-`*(this: var MathIntegerVector): MathIntegerVector {.cdecl, importcpp: "(- #)",
    header: "math_IntegerVector.hxx".}
proc subtract*(this: var MathIntegerVector; theRight: MathIntegerVector) {.cdecl,
    importcpp: "Subtract", header: "math_IntegerVector.hxx".}
proc `-=`*(this: var MathIntegerVector; theRight: MathIntegerVector) {.cdecl,
    importcpp: "(# -= #)", header: "math_IntegerVector.hxx".}
proc subtracted*(this: MathIntegerVector; theRight: MathIntegerVector): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "Subtracted", header: "math_IntegerVector.hxx".}
proc `-`*(this: MathIntegerVector; theRight: MathIntegerVector): MathIntegerVector {.
    noSideEffect, cdecl, importcpp: "(# - #)", header: "math_IntegerVector.hxx".}
proc multiply*(this: var MathIntegerVector; theLeft: cint; theRight: MathIntegerVector) {.
    cdecl, importcpp: "Multiply", header: "math_IntegerVector.hxx".}
proc dump*(this: MathIntegerVector; theO: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_IntegerVector.hxx".}
