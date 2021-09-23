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
discard "forward decl of gp_Mat2d"
type
  gp_XY* {.importcpp: "gp_XY", header: "gp_XY.hxx", bycopy.} = object ## ! Creates XY object with zero coordinates (0,0).
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    Standard_Real* {.importc: "Standard_Real".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD
    y* {.importc: "y".}: Standard_Real


proc constructgp_XY*(): gp_XY {.constructor, importcpp: "gp_XY(@)",
                             header: "gp_XY.hxx".}
proc constructgp_XY*(X: Standard_Real; Y: Standard_Real): gp_XY {.constructor,
    importcpp: "gp_XY(@)", header: "gp_XY.hxx".}
proc SetCoord*(this: var gp_XY; Index: Standard_Integer; Xi: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_XY.hxx".}
proc SetCoord*(this: var gp_XY; X: Standard_Real; Y: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_XY.hxx".}
proc SetX*(this: var gp_XY; X: Standard_Real) {.importcpp: "SetX", header: "gp_XY.hxx".}
proc SetY*(this: var gp_XY; Y: Standard_Real) {.importcpp: "SetY", header: "gp_XY.hxx".}
proc Coord*(this: gp_XY; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Coord", header: "gp_XY.hxx".}
proc ChangeCoord*(this: var gp_XY; theIndex: Standard_Integer): var Standard_Real {.
    importcpp: "ChangeCoord", header: "gp_XY.hxx".}
proc Coord*(this: gp_XY; X: var Standard_Real; Y: var Standard_Real) {.noSideEffect,
    importcpp: "Coord", header: "gp_XY.hxx".}
proc X*(this: gp_XY): Standard_Real {.noSideEffect, importcpp: "X", header: "gp_XY.hxx".}
proc Y*(this: gp_XY): Standard_Real {.noSideEffect, importcpp: "Y", header: "gp_XY.hxx".}
proc Modulus*(this: gp_XY): Standard_Real {.noSideEffect, importcpp: "Modulus",
                                        header: "gp_XY.hxx".}
proc SquareModulus*(this: gp_XY): Standard_Real {.noSideEffect,
    importcpp: "SquareModulus", header: "gp_XY.hxx".}
proc IsEqual*(this: gp_XY; Other: gp_XY; Tolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_XY.hxx".}
proc Add*(this: var gp_XY; Other: gp_XY) {.importcpp: "Add", header: "gp_XY.hxx".}
proc `+=`*(this: var gp_XY; Other: gp_XY) {.importcpp: "(# += #)", header: "gp_XY.hxx".}
## !!!Ignored construct:  Added ( const gp_XY & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator + ( const gp_XY & Other ) const { return Added ( Other ) ; } ! Real D = <me>.X() * Other.Y() - <me>.Y() * Other.X() Standard_NODISCARD Standard_Real Crossed ( const gp_XY & Right ) const ;
## Error: identifier expected, but got: +!!!

## !!!Ignored construct:  operator ^ ( const gp_XY & Right ) const { return Crossed ( Right ) ; } ! computes the magnitude of the cross product between <me> and
## ! Right. Returns || <me> ^ Right || Standard_Real CrossMagnitude ( const gp_XY & Right ) const ;
## Error: identifier expected, but got: ^!!!

proc CrossSquareMagnitude*(this: gp_XY; Right: gp_XY): Standard_Real {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: "gp_XY.hxx".}
proc Divide*(this: var gp_XY; Scalar: Standard_Real) {.importcpp: "Divide",
    header: "gp_XY.hxx".}
proc `/=`*(this: var gp_XY; Scalar: Standard_Real) {.importcpp: "(# /= #)",
    header: "gp_XY.hxx".}
## !!!Ignored construct:  Divided ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator / ( const Standard_Real Scalar ) const { return Divided ( Scalar ) ; } ! Computes the scalar product between <me> and Other Standard_Real Dot ( const gp_XY & Other ) const ;
## Error: identifier expected, but got: /!!!

proc `*`*(this: gp_XY; Other: gp_XY): Standard_Real {.noSideEffect,
    importcpp: "(# * #)", header: "gp_XY.hxx".}
proc Multiply*(this: var gp_XY; Scalar: Standard_Real) {.importcpp: "Multiply",
    header: "gp_XY.hxx".}
proc `*=`*(this: var gp_XY; Scalar: Standard_Real) {.importcpp: "(# *= #)",
    header: "gp_XY.hxx".}
proc Multiply*(this: var gp_XY; Other: gp_XY) {.importcpp: "Multiply",
    header: "gp_XY.hxx".}
proc `*=`*(this: var gp_XY; Other: gp_XY) {.importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc Multiply*(this: var gp_XY; Matrix: gp_Mat2d) {.importcpp: "Multiply",
    header: "gp_XY.hxx".}
proc `*=`*(this: var gp_XY; Matrix: gp_Mat2d) {.importcpp: "(# *= #)",
    header: "gp_XY.hxx".}
## !!!Ignored construct:  Multiplied ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const Standard_Real Scalar ) const { return Multiplied ( Scalar ) ; } ! new.X() = <me>.X() * Other.X();
## ! new.Y() = <me>.Y() * Other.Y(); Standard_NODISCARD gp_XY Multiplied ( const gp_XY & Other ) const ;
## Error: identifier expected, but got: *!!!

## !!!Ignored construct:  Multiplied ( const gp_Mat2d & Matrix ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const gp_Mat2d & Matrix ) const { return Multiplied ( Matrix ) ; } ! <me>.X() = <me>.X()/ <me>.Modulus()
## ! <me>.Y() = <me>.Y()/ <me>.Modulus()
## ! Raises ConstructionError if <me>.Modulus() <= Resolution from gp void Normalize ( ) ;
## Error: identifier expected, but got: *!!!

## !!!Ignored construct:  Normalized ( ) const ;
## Error: identifier expected, but got: )!!!

proc Reverse*(this: var gp_XY) {.importcpp: "Reverse", header: "gp_XY.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  operator - ( ) const { return Reversed ( ) ; } ! Computes  the following linear combination and
## ! assigns the result to this number pair:
## ! A1 * XY1 + A2 * XY2 void SetLinearForm ( const Standard_Real A1 , const gp_XY & XY1 , const Standard_Real A2 , const gp_XY & XY2 ) ;
## Error: identifier expected, but got: -!!!

proc SetLinearForm*(this: var gp_XY; A1: Standard_Real; XY1: gp_XY; A2: Standard_Real;
                   XY2: gp_XY; XY3: gp_XY) {.importcpp: "SetLinearForm",
    header: "gp_XY.hxx".}
proc SetLinearForm*(this: var gp_XY; A1: Standard_Real; XY1: gp_XY; XY2: gp_XY) {.
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc SetLinearForm*(this: var gp_XY; XY1: gp_XY; XY2: gp_XY) {.
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc Subtract*(this: var gp_XY; Right: gp_XY) {.importcpp: "Subtract",
    header: "gp_XY.hxx".}
proc `-=`*(this: var gp_XY; Right: gp_XY) {.importcpp: "(# -= #)", header: "gp_XY.hxx".}
## !!!Ignored construct:  Subtracted ( const gp_XY & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator - ( const gp_XY & Right ) const { return Subtracted ( Right ) ; } protected : private : Standard_Real x ;
## Error: identifier expected, but got: -!!!
