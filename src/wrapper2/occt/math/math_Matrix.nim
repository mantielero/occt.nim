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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer, math_DoubleTab,
  ../Standard/Standard_Real, ../Standard/Standard_Address, math_Vector,
  ../Standard/Standard_OStream

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
  math_Matrix* {.importcpp: "math_Matrix", header: "math_Matrix.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Constructs
                                                                                ## a
                                                                                ## non-initialized
                                                                                ## matrix
                                                                                ## of
                                                                                ## range
                                                                                ## [LowerRow..UpperRow,
                                                                                ##
                                                                                ## !
                                                                                ## LowerCol..UpperCol]
                                                                                ##
                                                                                ## !
                                                                                ## For
                                                                                ## the
                                                                                ## constructed
                                                                                ## matrix:
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## LowerRow
                                                                                ## and
                                                                                ## UpperRow
                                                                                ## are
                                                                                ## the
                                                                                ## indexes
                                                                                ## of
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## lower
                                                                                ## and
                                                                                ## upper
                                                                                ## bounds
                                                                                ## of
                                                                                ## a
                                                                                ## row,
                                                                                ## and
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## LowerCol
                                                                                ## and
                                                                                ## UpperCol
                                                                                ## are
                                                                                ## the
                                                                                ## indexes
                                                                                ## of
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## lower
                                                                                ## and
                                                                                ## upper
                                                                                ## bounds
                                                                                ## of
                                                                                ## a
                                                                                ## column.
                                                                                ##
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
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Matrix* {.importc: "math_Matrix".}: Standard_NODISCARD
    math_Vector* {.importc: "math_Vector".}: Standard_NODISCARD


proc constructmath_Matrix*(LowerRow: Standard_Integer; UpperRow: Standard_Integer;
                          LowerCol: Standard_Integer; UpperCol: Standard_Integer): math_Matrix {.
    constructor, importcpp: "math_Matrix(@)", header: "math_Matrix.hxx".}
proc constructmath_Matrix*(LowerRow: Standard_Integer; UpperRow: Standard_Integer;
                          LowerCol: Standard_Integer; UpperCol: Standard_Integer;
                          InitialValue: Standard_Real): math_Matrix {.constructor,
    importcpp: "math_Matrix(@)", header: "math_Matrix.hxx".}
proc constructmath_Matrix*(Tab: Standard_Address; LowerRow: Standard_Integer;
                          UpperRow: Standard_Integer; LowerCol: Standard_Integer;
                          UpperCol: Standard_Integer): math_Matrix {.constructor,
    importcpp: "math_Matrix(@)", header: "math_Matrix.hxx".}
proc constructmath_Matrix*(Other: math_Matrix): math_Matrix {.constructor,
    importcpp: "math_Matrix(@)", header: "math_Matrix.hxx".}
proc Init*(this: var math_Matrix; InitialValue: Standard_Real) {.importcpp: "Init",
    header: "math_Matrix.hxx".}
proc RowNumber*(this: math_Matrix): Standard_Integer {.noSideEffect,
    importcpp: "RowNumber", header: "math_Matrix.hxx".}
proc ColNumber*(this: math_Matrix): Standard_Integer {.noSideEffect,
    importcpp: "ColNumber", header: "math_Matrix.hxx".}
proc LowerRow*(this: math_Matrix): Standard_Integer {.noSideEffect,
    importcpp: "LowerRow", header: "math_Matrix.hxx".}
proc UpperRow*(this: math_Matrix): Standard_Integer {.noSideEffect,
    importcpp: "UpperRow", header: "math_Matrix.hxx".}
proc LowerCol*(this: math_Matrix): Standard_Integer {.noSideEffect,
    importcpp: "LowerCol", header: "math_Matrix.hxx".}
proc UpperCol*(this: math_Matrix): Standard_Integer {.noSideEffect,
    importcpp: "UpperCol", header: "math_Matrix.hxx".}
proc Determinant*(this: math_Matrix): Standard_Real {.noSideEffect,
    importcpp: "Determinant", header: "math_Matrix.hxx".}
proc Transpose*(this: var math_Matrix) {.importcpp: "Transpose",
                                     header: "math_Matrix.hxx".}
proc Invert*(this: var math_Matrix) {.importcpp: "Invert", header: "math_Matrix.hxx".}
proc Multiply*(this: var math_Matrix; Right: Standard_Real) {.importcpp: "Multiply",
    header: "math_Matrix.hxx".}
proc `*=`*(this: var math_Matrix; Right: Standard_Real) {.importcpp: "(# *= #)",
    header: "math_Matrix.hxx".}
## !!!Ignored construct:  Multiplied ( const Standard_Real Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const Standard_Real Right ) const { return Multiplied ( Right ) ; } ! Sets this matrix to the product of the
## ! transposed matrix TLeft, and the matrix Right.
## ! Example
## ! math_Matrix A (1, 3, 1, 3);
## ! math_Matrix B (1, 3, 1, 3);
## ! // A = ... , B = ...
## ! math_Matrix C (1, 3, 1, 3);
## ! C.Multiply(A, B);
## ! Exceptions
## ! Standard_DimensionError if matrices are of incompatible dimensions, i.e. if:
## ! -   the number of columns of matrix Left, or the number of
## ! rows of matrix TLeft is not equal to the number of rows
## ! of matrix Right, or
## ! -   the number of rows of matrix Left, or the number of
## ! columns of matrix TLeft is not equal to the number of
## ! rows of this matrix, or
## ! -   the number of columns of matrix Right is not equal to
## ! the number of columns of this matrix. Standard_NODISCARD math_Matrix TMultiplied ( const Standard_Real Right ) const ;
## Error: identifier expected, but got: *!!!

proc Divide*(this: var math_Matrix; Right: Standard_Real) {.importcpp: "Divide",
    header: "math_Matrix.hxx".}
proc `/=`*(this: var math_Matrix; Right: Standard_Real) {.importcpp: "(# /= #)",
    header: "math_Matrix.hxx".}
## !!!Ignored construct:  Divided ( const Standard_Real Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator / ( const Standard_Real Right ) const { return Divided ( Right ) ; } ! adds the matrix <Right> to a matrix.
## ! An exception is raised if the dimensions are different.
## ! Warning
## ! In order to save time when copying matrices, it is
## ! preferable to use operator += or the function Add
## ! whenever possible. void Add ( const math_Matrix & Right ) ;
## Error: identifier expected, but got: /!!!

proc `+=`*(this: var math_Matrix; Right: math_Matrix) {.importcpp: "(# += #)",
    header: "math_Matrix.hxx".}
## !!!Ignored construct:  Added ( const math_Matrix & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator + ( const math_Matrix & Right ) const { return Added ( Right ) ; } ! sets a  matrix to the addition of <Left> and <Right>.
## ! An exception is raised if the dimensions are different. void Add ( const math_Matrix & Left , const math_Matrix & Right ) ;
## Error: identifier expected, but got: +!!!

proc Subtract*(this: var math_Matrix; Right: math_Matrix) {.importcpp: "Subtract",
    header: "math_Matrix.hxx".}
proc `-=`*(this: var math_Matrix; Right: math_Matrix) {.importcpp: "(# -= #)",
    header: "math_Matrix.hxx".}
## !!!Ignored construct:  Subtracted ( const math_Matrix & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator - ( const math_Matrix & Right ) const { return Subtracted ( Right ) ; } ! Sets the values of this matrix,
## ! -   from index I1 to index I2 on the row dimension, and
## ! -   from index J1 to index J2 on the column dimension,
## ! to those of matrix M.
## ! Exceptions
## ! Standard_DimensionError if:
## ! -   I1 is less than the index of the lower row bound of this matrix, or
## ! -   I2 is greater than the index of the upper row bound of this matrix, or
## ! -   J1 is less than the index of the lower column bound of this matrix, or
## ! -   J2 is greater than the index of the upper column bound of this matrix, or
## ! -   I2 - I1 + 1 is not equal to the number of rows of matrix M, or
## ! -   J2 - J1 + 1 is not equal to the number of columns of matrix M. void Set ( const Standard_Integer I1 , const Standard_Integer I2 , const Standard_Integer J1 , const Standard_Integer J2 , const math_Matrix & M ) ;
## Error: identifier expected, but got: -!!!

proc SetRow*(this: var math_Matrix; Row: Standard_Integer; V: math_Vector) {.
    importcpp: "SetRow", header: "math_Matrix.hxx".}
proc SetCol*(this: var math_Matrix; Col: Standard_Integer; V: math_Vector) {.
    importcpp: "SetCol", header: "math_Matrix.hxx".}
proc SetDiag*(this: var math_Matrix; Value: Standard_Real) {.importcpp: "SetDiag",
    header: "math_Matrix.hxx".}
proc Row*(this: math_Matrix; Row: Standard_Integer): math_Vector {.noSideEffect,
    importcpp: "Row", header: "math_Matrix.hxx".}
proc Col*(this: math_Matrix; Col: Standard_Integer): math_Vector {.noSideEffect,
    importcpp: "Col", header: "math_Matrix.hxx".}
proc SwapRow*(this: var math_Matrix; Row1: Standard_Integer; Row2: Standard_Integer) {.
    importcpp: "SwapRow", header: "math_Matrix.hxx".}
proc SwapCol*(this: var math_Matrix; Col1: Standard_Integer; Col2: Standard_Integer) {.
    importcpp: "SwapCol", header: "math_Matrix.hxx".}
## !!!Ignored construct:  Transposed ( ) const ;
## Error: identifier expected, but got: )!!!

proc Inverse*(this: math_Matrix): math_Matrix {.noSideEffect, importcpp: "Inverse",
    header: "math_Matrix.hxx".}
proc TMultiply*(this: math_Matrix; Right: math_Matrix): math_Matrix {.noSideEffect,
    importcpp: "TMultiply", header: "math_Matrix.hxx".}
proc Multiply*(this: var math_Matrix; Left: math_Vector; Right: math_Vector) {.
    importcpp: "Multiply", header: "math_Matrix.hxx".}
proc Multiply*(this: var math_Matrix; Left: math_Matrix; Right: math_Matrix) {.
    importcpp: "Multiply", header: "math_Matrix.hxx".}
proc TMultiply*(this: var math_Matrix; TLeft: math_Matrix; Right: math_Matrix) {.
    importcpp: "TMultiply", header: "math_Matrix.hxx".}
proc Subtract*(this: var math_Matrix; Left: math_Matrix; Right: math_Matrix) {.
    importcpp: "Subtract", header: "math_Matrix.hxx".}
proc Value*(this: math_Matrix; Row: Standard_Integer; Col: Standard_Integer): var Standard_Real {.
    noSideEffect, importcpp: "Value", header: "math_Matrix.hxx".}
proc `()`*(this: math_Matrix; Row: Standard_Integer; Col: Standard_Integer): var Standard_Real {.
    noSideEffect, importcpp: "#(@)", header: "math_Matrix.hxx".}
proc Initialized*(this: var math_Matrix; Other: math_Matrix): var math_Matrix {.
    importcpp: "Initialized", header: "math_Matrix.hxx".}
proc Multiply*(this: var math_Matrix; Right: math_Matrix) {.importcpp: "Multiply",
    header: "math_Matrix.hxx".}
proc `*=`*(this: var math_Matrix; Right: math_Matrix) {.importcpp: "(# *= #)",
    header: "math_Matrix.hxx".}
## !!!Ignored construct:  Multiplied ( const math_Matrix & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const math_Matrix & Right ) const { return Multiplied ( Right ) ; } ! Returns the product of a matrix by a vector.
## ! An exception is raised if the dimensions are different. Standard_NODISCARD math_Vector Multiplied ( const math_Vector & Right ) const ;
## Error: identifier expected, but got: *!!!

## !!!Ignored construct:  operator * ( const math_Vector & Right ) const { return Multiplied ( Right ) ; } ! Returns the opposite of a matrix.
## ! An exception is raised if the dimensions are different. math_Matrix Opposite ( ) ;
## Error: identifier expected, but got: *!!!

proc `-`*(this: var math_Matrix): math_Matrix {.importcpp: "(- #)",
    header: "math_Matrix.hxx".}
proc Dump*(this: math_Matrix; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_Matrix.hxx".}