{.experimental: "callOperator".}

import math_types
import ../standard/standard_types
##  Created on: 1991-05-07
##  Created by: Laurent PAINNOT
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

##  resolve name collisions with X11 headers

when defined(Opposite):
  discard
## ! This class implements the real matrix abstract data type.
## ! Matrixes can have an arbitrary range which must be defined
## ! at the declaration and cannot be changed after this declaration
## ! math_Matrix(-3,5,2,4); //a vector with range [-3..5, 2..4]
## ! Matrix values may be initialized and
## ! retrieved using indexes which must lie within the range
## ! of definition of the matrix.
## ! Matrix objects follow "value semantics", that is, they
## ! cannot be shared and are copied through assignment
## ! Matrices are copied through assignement:
## ! math_Matrix M2(1, 9, 1, 3);
## ! ...
## ! M2 = M1;
## ! M1(1) = 2.0;//the matrix M2 will not be modified.
## !
## ! The exception RangeError is raised when trying to access
## ! outside the range of a matrix :
## ! M1(11, 1)=0.0// --> will raise RangeError.
## !
## ! The exception DimensionError is raised when the dimensions of
## ! two matrices or vectors are not compatible.
## ! math_Matrix M3(1, 2, 1, 2);
## ! M3 = M1;   // will raise DimensionError
## ! M1.Add(M3) // --> will raise DimensionError.
## ! A Matrix can be constructed with a a pointer to "c array".
## ! It allows to carry the bounds inside the matrix.
## ! Exemple :
## ! Standard_Real tab1[10][20];
## ! Standard_Real tab2[200];
## !
## ! math_Matrix A (tab1[0][0], 1, 10, 1, 20);
## ! math_Matrix B (tab2[0],    1, 10, 1, 20);



proc newMathMatrix*(lowerRow: cint; upperRow: cint; lowerCol: cint; upperCol: cint): MathMatrix {.
    cdecl, constructor, importcpp: "math_Matrix(@)", header: "math_Matrix.hxx".}
proc newMathMatrix*(lowerRow: cint; upperRow: cint; lowerCol: cint; upperCol: cint;
                   initialValue: cfloat): MathMatrix {.cdecl, constructor,
    importcpp: "math_Matrix(@)", header: "math_Matrix.hxx".}
proc newMathMatrix*(tab: pointer; lowerRow: cint; upperRow: cint; lowerCol: cint;
                   upperCol: cint): MathMatrix {.cdecl, constructor,
    importcpp: "math_Matrix(@)", header: "math_Matrix.hxx".}
proc newMathMatrix*(other: MathMatrix): MathMatrix {.cdecl, constructor,
    importcpp: "math_Matrix(@)", header: "math_Matrix.hxx".}
proc init*(this: var MathMatrix; initialValue: cfloat) {.cdecl, importcpp: "Init",
    header: "math_Matrix.hxx".}
proc rowNumber*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "RowNumber",
                                      header: "math_Matrix.hxx".}
proc colNumber*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "ColNumber",
                                      header: "math_Matrix.hxx".}
proc lowerRow*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "LowerRow",
                                     header: "math_Matrix.hxx".}
proc upperRow*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "UpperRow",
                                     header: "math_Matrix.hxx".}
proc lowerCol*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "LowerCol",
                                     header: "math_Matrix.hxx".}
proc upperCol*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "UpperCol",
                                     header: "math_Matrix.hxx".}
proc determinant*(this: MathMatrix): cfloat {.noSideEffect, cdecl,
    importcpp: "Determinant", header: "math_Matrix.hxx".}
proc transpose*(this: var MathMatrix) {.cdecl, importcpp: "Transpose", header: "math_Matrix.hxx".}
proc invert*(this: var MathMatrix) {.cdecl, importcpp: "Invert", header: "math_Matrix.hxx".}
proc multiply*(this: var MathMatrix; right: cfloat) {.cdecl, importcpp: "Multiply",
    header: "math_Matrix.hxx".}
proc `*=`*(this: var MathMatrix; right: cfloat) {.cdecl, importcpp: "(# *= #)",
    header: "math_Matrix.hxx".}
proc multiplied*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "math_Matrix.hxx".}
proc `*`*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "math_Matrix.hxx".}
proc tMultiplied*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "TMultiplied", header: "math_Matrix.hxx".}
proc divide*(this: var MathMatrix; right: cfloat) {.cdecl, importcpp: "Divide",
    header: "math_Matrix.hxx".}
proc `/=`*(this: var MathMatrix; right: cfloat) {.cdecl, importcpp: "(# /= #)",
    header: "math_Matrix.hxx".}
proc divided*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Divided", header: "math_Matrix.hxx".}
proc `/`*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# / #)", header: "math_Matrix.hxx".}
proc add*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "Add",
    header: "math_Matrix.hxx".}
proc `+=`*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "(# += #)",
    header: "math_Matrix.hxx".}
proc added*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Added", header: "math_Matrix.hxx".}
proc `+`*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# + #)", header: "math_Matrix.hxx".}
proc add*(this: var MathMatrix; left: MathMatrix; right: MathMatrix) {.cdecl,
    importcpp: "Add", header: "math_Matrix.hxx".}
proc subtract*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "Subtract",
    header: "math_Matrix.hxx".}
proc `-=`*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "(# -= #)",
    header: "math_Matrix.hxx".}
proc subtracted*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect,
    cdecl, importcpp: "Subtracted", header: "math_Matrix.hxx".}
proc `-`*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# - #)", header: "math_Matrix.hxx".}
proc set*(this: var MathMatrix; i1: cint; i2: cint; j1: cint; j2: cint; m: MathMatrix) {.
    cdecl, importcpp: "Set", header: "math_Matrix.hxx".}
proc setRow*(this: var MathMatrix; row: cint; v: MathVector) {.cdecl,
    importcpp: "SetRow", header: "math_Matrix.hxx".}
proc setCol*(this: var MathMatrix; col: cint; v: MathVector) {.cdecl,
    importcpp: "SetCol", header: "math_Matrix.hxx".}
proc setDiag*(this: var MathMatrix; value: cfloat) {.cdecl, importcpp: "SetDiag",
    header: "math_Matrix.hxx".}
proc row*(this: MathMatrix; row: cint): MathVector {.noSideEffect, cdecl,
    importcpp: "Row", header: "math_Matrix.hxx".}
proc col*(this: MathMatrix; col: cint): MathVector {.noSideEffect, cdecl,
    importcpp: "Col", header: "math_Matrix.hxx".}
proc swapRow*(this: var MathMatrix; row1: cint; row2: cint) {.cdecl,
    importcpp: "SwapRow", header: "math_Matrix.hxx".}
proc swapCol*(this: var MathMatrix; col1: cint; col2: cint) {.cdecl,
    importcpp: "SwapCol", header: "math_Matrix.hxx".}
proc transposed*(this: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Transposed", header: "math_Matrix.hxx".}
proc inverse*(this: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Inverse", header: "math_Matrix.hxx".}
proc tMultiply*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "TMultiply", header: "math_Matrix.hxx".}
proc multiply*(this: var MathMatrix; left: MathVector; right: MathVector) {.cdecl,
    importcpp: "Multiply", header: "math_Matrix.hxx".}
proc multiply*(this: var MathMatrix; left: MathMatrix; right: MathMatrix) {.cdecl,
    importcpp: "Multiply", header: "math_Matrix.hxx".}
proc tMultiply*(this: var MathMatrix; tLeft: MathMatrix; right: MathMatrix) {.cdecl,
    importcpp: "TMultiply", header: "math_Matrix.hxx".}
proc subtract*(this: var MathMatrix; left: MathMatrix; right: MathMatrix) {.cdecl,
    importcpp: "Subtract", header: "math_Matrix.hxx".}
proc value*(this: MathMatrix; row: cint; col: cint): var cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "math_Matrix.hxx".}
proc `()`*(this: MathMatrix; row: cint; col: cint): var cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "math_Matrix.hxx".}
proc initialized*(this: var MathMatrix; other: MathMatrix): var MathMatrix {.cdecl,
    importcpp: "Initialized", header: "math_Matrix.hxx".}
proc multiply*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "Multiply",
    header: "math_Matrix.hxx".}
proc `*=`*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "(# *= #)",
    header: "math_Matrix.hxx".}
proc multiplied*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect,
    cdecl, importcpp: "Multiplied", header: "math_Matrix.hxx".}
proc `*`*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "math_Matrix.hxx".}
proc multiplied*(this: MathMatrix; right: MathVector): MathVector {.noSideEffect,
    cdecl, importcpp: "Multiplied", header: "math_Matrix.hxx".}
proc `*`*(this: MathMatrix; right: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "math_Matrix.hxx".}
proc opposite*(this: var MathMatrix): MathMatrix {.cdecl, importcpp: "Opposite",
    header: "math_Matrix.hxx".}
proc `-`*(this: var MathMatrix): MathMatrix {.cdecl, importcpp: "(- #)", header: "math_Matrix.hxx".}
proc dump*(this: MathMatrix; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_Matrix.hxx".}
