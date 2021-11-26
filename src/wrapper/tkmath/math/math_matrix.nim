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

type
  MathMatrix* {.importcpp: "math_Matrix", header: "math_Matrix.hxx", bycopy.} = object ## !
                                                                               ## Constructs a
                                                                               ## non-initialized
                                                                               ## matrix
                                                                               ## of
                                                                               ## range
                                                                               ## [LowerRow..UpperRow,
                                                                               ## !
                                                                               ## LowerCol..UpperCol]
                                                                               ## !
                                                                               ## For
                                                                               ## the
                                                                               ## constructed
                                                                               ## matrix:
                                                                               ## ! -
                                                                               ## LowerRow
                                                                               ## and
                                                                               ## UpperRow
                                                                               ## are
                                                                               ## the
                                                                               ## indexes
                                                                               ## of
                                                                               ## the
                                                                               ## !
                                                                               ## lower
                                                                               ## and
                                                                               ## upper
                                                                               ## bounds
                                                                               ## of a
                                                                               ## row,
                                                                               ## and
                                                                               ## ! -
                                                                               ## LowerCol
                                                                               ## and
                                                                               ## UpperCol
                                                                               ## are
                                                                               ## the
                                                                               ## indexes
                                                                               ## of
                                                                               ## the
                                                                               ## !
                                                                               ## lower
                                                                               ## and
                                                                               ## upper
                                                                               ## bounds
                                                                               ## of a
                                                                               ## column.
                                                                               ## !
                                                                               ## The
                                                                               ## new
                                                                               ## lower
                                                                               ## row
                                                                               ## of
                                                                               ## the
                                                                               ## matrix
                                                                               ## is
                                                                               ## set
                                                                               ## to
                                                                               ## <LowerRow>


proc newMathMatrix*(lowerRow: cint; upperRow: cint; lowerCol: cint; upperCol: cint): MathMatrix {.
    cdecl, constructor, importcpp: "math_Matrix(@)", dynlib: tkmath.}
proc newMathMatrix*(lowerRow: cint; upperRow: cint; lowerCol: cint; upperCol: cint;
                   initialValue: cfloat): MathMatrix {.cdecl, constructor,
    importcpp: "math_Matrix(@)", dynlib: tkmath.}
proc newMathMatrix*(tab: pointer; lowerRow: cint; upperRow: cint; lowerCol: cint;
                   upperCol: cint): MathMatrix {.cdecl, constructor,
    importcpp: "math_Matrix(@)", dynlib: tkmath.}
proc newMathMatrix*(other: MathMatrix): MathMatrix {.cdecl, constructor,
    importcpp: "math_Matrix(@)", dynlib: tkmath.}
proc init*(this: var MathMatrix; initialValue: cfloat) {.cdecl, importcpp: "Init",
    dynlib: tkmath.}
proc rowNumber*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "RowNumber",
                                      dynlib: tkmath.}
proc colNumber*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "ColNumber",
                                      dynlib: tkmath.}
proc lowerRow*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "LowerRow",
                                     dynlib: tkmath.}
proc upperRow*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "UpperRow",
                                     dynlib: tkmath.}
proc lowerCol*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "LowerCol",
                                     dynlib: tkmath.}
proc upperCol*(this: MathMatrix): cint {.noSideEffect, cdecl, importcpp: "UpperCol",
                                     dynlib: tkmath.}
proc determinant*(this: MathMatrix): cfloat {.noSideEffect, cdecl,
    importcpp: "Determinant", dynlib: tkmath.}
proc transpose*(this: var MathMatrix) {.cdecl, importcpp: "Transpose", dynlib: tkmath.}
proc invert*(this: var MathMatrix) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc multiply*(this: var MathMatrix; right: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var MathMatrix; right: cfloat) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc multiplied*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc tMultiplied*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "TMultiplied", dynlib: tkmath.}
proc divide*(this: var MathMatrix; right: cfloat) {.cdecl, importcpp: "Divide",
    dynlib: tkmath.}
proc `/=`*(this: var MathMatrix; right: cfloat) {.cdecl, importcpp: "(# /= #)",
    dynlib: tkmath.}
proc divided*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: MathMatrix; right: cfloat): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# / #)", dynlib: tkmath.}
proc add*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "Add",
    dynlib: tkmath.}
proc `+=`*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "(# += #)",
    dynlib: tkmath.}
proc added*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Added", dynlib: tkmath.}
proc `+`*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# + #)", dynlib: tkmath.}
proc add*(this: var MathMatrix; left: MathMatrix; right: MathMatrix) {.cdecl,
    importcpp: "Add", dynlib: tkmath.}
proc subtract*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "Subtract",
    dynlib: tkmath.}
proc `-=`*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "(# -= #)",
    dynlib: tkmath.}
proc subtracted*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect,
    cdecl, importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# - #)", dynlib: tkmath.}
proc set*(this: var MathMatrix; i1: cint; i2: cint; j1: cint; j2: cint; m: MathMatrix) {.
    cdecl, importcpp: "Set", dynlib: tkmath.}
proc setRow*(this: var MathMatrix; row: cint; v: MathVector) {.cdecl,
    importcpp: "SetRow", dynlib: tkmath.}
proc setCol*(this: var MathMatrix; col: cint; v: MathVector) {.cdecl,
    importcpp: "SetCol", dynlib: tkmath.}
proc setDiag*(this: var MathMatrix; value: cfloat) {.cdecl, importcpp: "SetDiag",
    dynlib: tkmath.}
proc row*(this: MathMatrix; row: cint): MathVector {.noSideEffect, cdecl,
    importcpp: "Row", dynlib: tkmath.}
proc col*(this: MathMatrix; col: cint): MathVector {.noSideEffect, cdecl,
    importcpp: "Col", dynlib: tkmath.}
proc swapRow*(this: var MathMatrix; row1: cint; row2: cint) {.cdecl,
    importcpp: "SwapRow", dynlib: tkmath.}
proc swapCol*(this: var MathMatrix; col1: cint; col2: cint) {.cdecl,
    importcpp: "SwapCol", dynlib: tkmath.}
proc transposed*(this: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Transposed", dynlib: tkmath.}
proc inverse*(this: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Inverse", dynlib: tkmath.}
proc tMultiply*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "TMultiply", dynlib: tkmath.}
proc multiply*(this: var MathMatrix; left: MathVector; right: MathVector) {.cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc multiply*(this: var MathMatrix; left: MathMatrix; right: MathMatrix) {.cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc tMultiply*(this: var MathMatrix; tLeft: MathMatrix; right: MathMatrix) {.cdecl,
    importcpp: "TMultiply", dynlib: tkmath.}
proc subtract*(this: var MathMatrix; left: MathMatrix; right: MathMatrix) {.cdecl,
    importcpp: "Subtract", dynlib: tkmath.}
proc value*(this: MathMatrix; row: cint; col: cint): var cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc `()`*(this: MathMatrix; row: cint; col: cint): var cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc initialized*(this: var MathMatrix; other: MathMatrix): var MathMatrix {.cdecl,
    importcpp: "Initialized", dynlib: tkmath.}
proc multiply*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var MathMatrix; right: MathMatrix) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc multiplied*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect,
    cdecl, importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: MathMatrix; right: MathMatrix): MathMatrix {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiplied*(this: MathMatrix; right: MathVector): MathVector {.noSideEffect,
    cdecl, importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: MathMatrix; right: MathVector): MathVector {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc opposite*(this: var MathMatrix): MathMatrix {.cdecl, importcpp: "Opposite",
    dynlib: tkmath.}
proc `-`*(this: var MathMatrix): MathMatrix {.cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc dump*(this: MathMatrix; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}