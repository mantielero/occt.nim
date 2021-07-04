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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf"
type
  gp_Mat* {.importcpp: "gp_Mat", header: "gp_Mat.hxx", bycopy.} = object ## ! creates  a matrix with null coefficients.
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD
    gp_Mat* {.importc: "gp_Mat".}: Standard_NODISCARD


proc constructgp_Mat*(): gp_Mat {.constructor, importcpp: "gp_Mat(@)",
                               header: "gp_Mat.hxx".}
proc constructgp_Mat*(a11: Standard_Real; a12: Standard_Real; a13: Standard_Real;
                     a21: Standard_Real; a22: Standard_Real; a23: Standard_Real;
                     a31: Standard_Real; a32: Standard_Real; a33: Standard_Real): gp_Mat {.
    constructor, importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc constructgp_Mat*(Col1: gp_XYZ; Col2: gp_XYZ; Col3: gp_XYZ): gp_Mat {.constructor,
    importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc SetCol*(this: var gp_Mat; Col: Standard_Integer; Value: gp_XYZ) {.
    importcpp: "SetCol", header: "gp_Mat.hxx".}
proc SetCols*(this: var gp_Mat; Col1: gp_XYZ; Col2: gp_XYZ; Col3: gp_XYZ) {.
    importcpp: "SetCols", header: "gp_Mat.hxx".}
proc SetCross*(this: var gp_Mat; Ref: gp_XYZ) {.importcpp: "SetCross",
    header: "gp_Mat.hxx".}
proc SetDiagonal*(this: var gp_Mat; X1: Standard_Real; X2: Standard_Real;
                 X3: Standard_Real) {.importcpp: "SetDiagonal", header: "gp_Mat.hxx".}
proc SetDot*(this: var gp_Mat; Ref: gp_XYZ) {.importcpp: "SetDot", header: "gp_Mat.hxx".}
proc SetIdentity*(this: var gp_Mat) {.importcpp: "SetIdentity", header: "gp_Mat.hxx".}
proc SetRotation*(this: var gp_Mat; Axis: gp_XYZ; Ang: Standard_Real) {.
    importcpp: "SetRotation", header: "gp_Mat.hxx".}
proc SetRow*(this: var gp_Mat; Row: Standard_Integer; Value: gp_XYZ) {.
    importcpp: "SetRow", header: "gp_Mat.hxx".}
proc SetRows*(this: var gp_Mat; Row1: gp_XYZ; Row2: gp_XYZ; Row3: gp_XYZ) {.
    importcpp: "SetRows", header: "gp_Mat.hxx".}
proc SetScale*(this: var gp_Mat; S: Standard_Real) {.importcpp: "SetScale",
    header: "gp_Mat.hxx".}
proc SetValue*(this: var gp_Mat; Row: Standard_Integer; Col: Standard_Integer;
              Value: Standard_Real) {.importcpp: "SetValue", header: "gp_Mat.hxx".}
proc Column*(this: gp_Mat; Col: Standard_Integer): gp_XYZ {.noSideEffect,
    importcpp: "Column", header: "gp_Mat.hxx".}
proc Determinant*(this: gp_Mat): Standard_Real {.noSideEffect,
    importcpp: "Determinant", header: "gp_Mat.hxx".}
proc Diagonal*(this: gp_Mat): gp_XYZ {.noSideEffect, importcpp: "Diagonal",
                                   header: "gp_Mat.hxx".}
proc Row*(this: gp_Mat; Row: Standard_Integer): gp_XYZ {.noSideEffect,
    importcpp: "Row", header: "gp_Mat.hxx".}
proc Value*(this: gp_Mat; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "gp_Mat.hxx".}
proc `()`*(this: gp_Mat; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "#(@)", header: "gp_Mat.hxx".}
proc ChangeValue*(this: var gp_Mat; Row: Standard_Integer; Col: Standard_Integer): var Standard_Real {.
    importcpp: "ChangeValue", header: "gp_Mat.hxx".}
proc `()`*(this: var gp_Mat; Row: Standard_Integer; Col: Standard_Integer): var Standard_Real {.
    importcpp: "#(@)", header: "gp_Mat.hxx".}
proc IsSingular*(this: gp_Mat): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingular", header: "gp_Mat.hxx".}
proc Add*(this: var gp_Mat; Other: gp_Mat) {.importcpp: "Add", header: "gp_Mat.hxx".}
proc `+=`*(this: var gp_Mat; Other: gp_Mat) {.importcpp: "(# += #)",
                                        header: "gp_Mat.hxx".}
## !!!Ignored construct:  Added ( const gp_Mat & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator + ( const gp_Mat & Other ) const { return Added ( Other ) ; } void Divide ( const Standard_Real Scalar ) ;
## Error: identifier expected, but got: +!!!

proc `/=`*(this: var gp_Mat; Scalar: Standard_Real) {.importcpp: "(# /= #)",
    header: "gp_Mat.hxx".}
## !!!Ignored construct:  Divided ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator / ( const Standard_Real Scalar ) const { return Divided ( Scalar ) ; } void Invert ( ) ;
## Error: identifier expected, but got: /!!!

## !!!Ignored construct:  Inverted ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  Multiplied ( const gp_Mat & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const gp_Mat & Other ) const { return Multiplied ( Other ) ; } ! Computes the product of two matrices <me> = <Other> * <me>. void Multiply ( const gp_Mat & Other ) ;
## Error: identifier expected, but got: *!!!

proc `*=`*(this: var gp_Mat; Other: gp_Mat) {.importcpp: "(# *= #)",
                                        header: "gp_Mat.hxx".}
proc PreMultiply*(this: var gp_Mat; Other: gp_Mat) {.importcpp: "PreMultiply",
    header: "gp_Mat.hxx".}
## !!!Ignored construct:  Multiplied ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const Standard_Real Scalar ) const { return Multiplied ( Scalar ) ; } ! Multiplies all the coefficients of the matrix by Scalar void Multiply ( const Standard_Real Scalar ) ;
## Error: identifier expected, but got: *!!!

proc `*=`*(this: var gp_Mat; Scalar: Standard_Real) {.importcpp: "(# *= #)",
    header: "gp_Mat.hxx".}
proc Power*(this: var gp_Mat; N: Standard_Integer) {.importcpp: "Power",
    header: "gp_Mat.hxx".}
## !!!Ignored construct:  Powered ( const Standard_Integer N ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Subtract*(this: var gp_Mat; Other: gp_Mat) {.importcpp: "Subtract",
    header: "gp_Mat.hxx".}
proc `-=`*(this: var gp_Mat; Other: gp_Mat) {.importcpp: "(# -= #)",
                                        header: "gp_Mat.hxx".}
## !!!Ignored construct:  Subtracted ( const gp_Mat & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator - ( const gp_Mat & Other ) const { return Subtracted ( Other ) ; } void Transpose ( ) ;
## Error: identifier expected, but got: -!!!

## !!!Ignored construct:  Transposed ( ) const ;
## Error: identifier expected, but got: )!!!

proc DumpJson*(this: gp_Mat; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Mat.hxx".}