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
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_XY"
type
  gp_Mat2d* {.importcpp: "gp_Mat2d", header: "gp_Mat2d.hxx", bycopy.} = object ## ! Creates  a matrix with null
                                                                       ## coefficients.
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD
    gp_Mat2d* {.importc: "gp_Mat2d".}: Standard_NODISCARD


proc constructgp_Mat2d*(): gp_Mat2d {.constructor, importcpp: "gp_Mat2d(@)",
                                   header: "gp_Mat2d.hxx".}
proc constructgp_Mat2d*(Col1: gp_XY; Col2: gp_XY): gp_Mat2d {.constructor,
    importcpp: "gp_Mat2d(@)", header: "gp_Mat2d.hxx".}
proc SetCol*(this: var gp_Mat2d; Col: Standard_Integer; Value: gp_XY) {.
    importcpp: "SetCol", header: "gp_Mat2d.hxx".}
proc SetCols*(this: var gp_Mat2d; Col1: gp_XY; Col2: gp_XY) {.importcpp: "SetCols",
    header: "gp_Mat2d.hxx".}
proc SetDiagonal*(this: var gp_Mat2d; X1: Standard_Real; X2: Standard_Real) {.
    importcpp: "SetDiagonal", header: "gp_Mat2d.hxx".}
proc SetIdentity*(this: var gp_Mat2d) {.importcpp: "SetIdentity",
                                    header: "gp_Mat2d.hxx".}
proc SetRotation*(this: var gp_Mat2d; Ang: Standard_Real) {.importcpp: "SetRotation",
    header: "gp_Mat2d.hxx".}
proc SetRow*(this: var gp_Mat2d; Row: Standard_Integer; Value: gp_XY) {.
    importcpp: "SetRow", header: "gp_Mat2d.hxx".}
proc SetRows*(this: var gp_Mat2d; Row1: gp_XY; Row2: gp_XY) {.importcpp: "SetRows",
    header: "gp_Mat2d.hxx".}
proc SetScale*(this: var gp_Mat2d; S: Standard_Real) {.importcpp: "SetScale",
    header: "gp_Mat2d.hxx".}
proc SetValue*(this: var gp_Mat2d; Row: Standard_Integer; Col: Standard_Integer;
              Value: Standard_Real) {.importcpp: "SetValue", header: "gp_Mat2d.hxx".}
proc Column*(this: gp_Mat2d; Col: Standard_Integer): gp_XY {.noSideEffect,
    importcpp: "Column", header: "gp_Mat2d.hxx".}
proc Determinant*(this: gp_Mat2d): Standard_Real {.noSideEffect,
    importcpp: "Determinant", header: "gp_Mat2d.hxx".}
proc Diagonal*(this: gp_Mat2d): gp_XY {.noSideEffect, importcpp: "Diagonal",
                                    header: "gp_Mat2d.hxx".}
proc Row*(this: gp_Mat2d; Row: Standard_Integer): gp_XY {.noSideEffect,
    importcpp: "Row", header: "gp_Mat2d.hxx".}
proc Value*(this: gp_Mat2d; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "gp_Mat2d.hxx".}
proc `()`*(this: gp_Mat2d; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "#(@)", header: "gp_Mat2d.hxx".}
proc ChangeValue*(this: var gp_Mat2d; Row: Standard_Integer; Col: Standard_Integer): var Standard_Real {.
    importcpp: "ChangeValue", header: "gp_Mat2d.hxx".}
proc `()`*(this: var gp_Mat2d; Row: Standard_Integer; Col: Standard_Integer): var Standard_Real {.
    importcpp: "#(@)", header: "gp_Mat2d.hxx".}
proc IsSingular*(this: gp_Mat2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingular", header: "gp_Mat2d.hxx".}
proc Add*(this: var gp_Mat2d; Other: gp_Mat2d) {.importcpp: "Add",
    header: "gp_Mat2d.hxx".}
proc `+=`*(this: var gp_Mat2d; Other: gp_Mat2d) {.importcpp: "(# += #)",
    header: "gp_Mat2d.hxx".}
## !!!Ignored construct:  Added ( const gp_Mat2d & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator + ( const gp_Mat2d & Other ) const { return Added ( Other ) ; } void Divide ( const Standard_Real Scalar ) ;
## Error: identifier expected, but got: +!!!

proc `/=`*(this: var gp_Mat2d; Scalar: Standard_Real) {.importcpp: "(# /= #)",
    header: "gp_Mat2d.hxx".}
## !!!Ignored construct:  Divided ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator / ( const Standard_Real Scalar ) const { return Divided ( Scalar ) ; } void Invert ( ) ;
## Error: identifier expected, but got: /!!!

## !!!Ignored construct:  Inverted ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  Multiplied ( const gp_Mat2d & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const gp_Mat2d & Other ) const { return Multiplied ( Other ) ; } ! Computes the product of two matrices <me> * <Other> void Multiply ( const gp_Mat2d & Other ) ;
## Error: identifier expected, but got: *!!!

proc PreMultiply*(this: var gp_Mat2d; Other: gp_Mat2d) {.importcpp: "PreMultiply",
    header: "gp_Mat2d.hxx".}
## !!!Ignored construct:  Multiplied ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const Standard_Real Scalar ) const { return Multiplied ( Scalar ) ; } ! Multiplies all the coefficients of the matrix by a scalar. void Multiply ( const Standard_Real Scalar ) ;
## Error: identifier expected, but got: *!!!

proc `*=`*(this: var gp_Mat2d; Scalar: Standard_Real) {.importcpp: "(# *= #)",
    header: "gp_Mat2d.hxx".}
proc Power*(this: var gp_Mat2d; N: Standard_Integer) {.importcpp: "Power",
    header: "gp_Mat2d.hxx".}
## !!!Ignored construct:  Powered ( const Standard_Integer N ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Subtract*(this: var gp_Mat2d; Other: gp_Mat2d) {.importcpp: "Subtract",
    header: "gp_Mat2d.hxx".}
proc `-=`*(this: var gp_Mat2d; Other: gp_Mat2d) {.importcpp: "(# -= #)",
    header: "gp_Mat2d.hxx".}
## !!!Ignored construct:  Subtracted ( const gp_Mat2d & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator - ( const gp_Mat2d & Other ) const { return Subtracted ( Other ) ; } void Transpose ( ) ;
## Error: identifier expected, but got: -!!!

## !!!Ignored construct:  Transposed ( ) const ;
## Error: identifier expected, but got: )!!!
