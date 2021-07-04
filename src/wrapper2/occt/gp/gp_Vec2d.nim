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
  ../Standard/Standard_Handle, gp_XY, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
type
  gp_Vec2d* {.importcpp: "gp_Vec2d", header: "gp_Vec2d.hxx", bycopy.} = object ## ! Creates a zero vector.
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    Standard_Real* {.importc: "Standard_Real".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD
    gp_Vec2d* {.importc: "gp_Vec2d".}: Standard_NODISCARD


proc constructgp_Vec2d*(): gp_Vec2d {.constructor, importcpp: "gp_Vec2d(@)",
                                   header: "gp_Vec2d.hxx".}
proc constructgp_Vec2d*(V: gp_Dir2d): gp_Vec2d {.constructor,
    importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc constructgp_Vec2d*(Coord: gp_XY): gp_Vec2d {.constructor,
    importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc constructgp_Vec2d*(Xv: Standard_Real; Yv: Standard_Real): gp_Vec2d {.constructor,
    importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc constructgp_Vec2d*(P1: gp_Pnt2d; P2: gp_Pnt2d): gp_Vec2d {.constructor,
    importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc SetCoord*(this: var gp_Vec2d; Index: Standard_Integer; Xi: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Vec2d.hxx".}
proc SetCoord*(this: var gp_Vec2d; Xv: Standard_Real; Yv: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Vec2d.hxx".}
proc SetX*(this: var gp_Vec2d; X: Standard_Real) {.importcpp: "SetX",
    header: "gp_Vec2d.hxx".}
proc SetY*(this: var gp_Vec2d; Y: Standard_Real) {.importcpp: "SetY",
    header: "gp_Vec2d.hxx".}
proc SetXY*(this: var gp_Vec2d; Coord: gp_XY) {.importcpp: "SetXY",
    header: "gp_Vec2d.hxx".}
proc Coord*(this: gp_Vec2d; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Coord", header: "gp_Vec2d.hxx".}
proc Coord*(this: gp_Vec2d; Xv: var Standard_Real; Yv: var Standard_Real) {.noSideEffect,
    importcpp: "Coord", header: "gp_Vec2d.hxx".}
proc X*(this: gp_Vec2d): Standard_Real {.noSideEffect, importcpp: "X",
                                     header: "gp_Vec2d.hxx".}
proc Y*(this: gp_Vec2d): Standard_Real {.noSideEffect, importcpp: "Y",
                                     header: "gp_Vec2d.hxx".}
proc XY*(this: gp_Vec2d): gp_XY {.noSideEffect, importcpp: "XY", header: "gp_Vec2d.hxx".}
proc IsEqual*(this: gp_Vec2d; Other: gp_Vec2d; LinearTolerance: Standard_Real;
             AngularTolerance: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsEqual", header: "gp_Vec2d.hxx".}
proc IsNormal*(this: gp_Vec2d; Other: gp_Vec2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsNormal", header: "gp_Vec2d.hxx".}
proc IsOpposite*(this: gp_Vec2d; Other: gp_Vec2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Vec2d.hxx".}
proc IsParallel*(this: gp_Vec2d; Other: gp_Vec2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Vec2d.hxx".}
proc Angle*(this: gp_Vec2d; Other: gp_Vec2d): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "gp_Vec2d.hxx".}
proc Magnitude*(this: gp_Vec2d): Standard_Real {.noSideEffect,
    importcpp: "Magnitude", header: "gp_Vec2d.hxx".}
proc SquareMagnitude*(this: gp_Vec2d): Standard_Real {.noSideEffect,
    importcpp: "SquareMagnitude", header: "gp_Vec2d.hxx".}
proc Add*(this: var gp_Vec2d; Other: gp_Vec2d) {.importcpp: "Add",
    header: "gp_Vec2d.hxx".}
proc `+=`*(this: var gp_Vec2d; Other: gp_Vec2d) {.importcpp: "(# += #)",
    header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Added ( const gp_Vec2d & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator + ( const gp_Vec2d & Other ) const { return Added ( Other ) ; } ! Computes the crossing product between two vectors Standard_NODISCARD Standard_Real Crossed ( const gp_Vec2d & Right ) const ;
## Error: identifier expected, but got: +!!!

## !!!Ignored construct:  operator ^ ( const gp_Vec2d & Right ) const { return Crossed ( Right ) ; } ! Computes the magnitude of the cross product between <me> and
## ! Right. Returns || <me> ^ Right || Standard_Real CrossMagnitude ( const gp_Vec2d & Right ) const ;
## Error: identifier expected, but got: ^!!!

proc CrossSquareMagnitude*(this: gp_Vec2d; Right: gp_Vec2d): Standard_Real {.
    noSideEffect, importcpp: "CrossSquareMagnitude", header: "gp_Vec2d.hxx".}
proc Divide*(this: var gp_Vec2d; Scalar: Standard_Real) {.importcpp: "Divide",
    header: "gp_Vec2d.hxx".}
proc `/=`*(this: var gp_Vec2d; Scalar: Standard_Real) {.importcpp: "(# /= #)",
    header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Divided ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator / ( const Standard_Real Scalar ) const { return Divided ( Scalar ) ; } ! Computes the scalar product Standard_Real Dot ( const gp_Vec2d & Other ) const ;
## Error: identifier expected, but got: /!!!

proc `*`*(this: gp_Vec2d; Other: gp_Vec2d): Standard_Real {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Vec2d.hxx".}
proc GetNormal*(this: gp_Vec2d): gp_Vec2d {.noSideEffect, importcpp: "GetNormal",
                                        header: "gp_Vec2d.hxx".}
proc Multiply*(this: var gp_Vec2d; Scalar: Standard_Real) {.importcpp: "Multiply",
    header: "gp_Vec2d.hxx".}
proc `*=`*(this: var gp_Vec2d; Scalar: Standard_Real) {.importcpp: "(# *= #)",
    header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Multiplied ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const Standard_Real Scalar ) const { return Multiplied ( Scalar ) ; } void Normalize ( ) ;
## Error: identifier expected, but got: *!!!

## !!!Ignored construct:  Normalized ( ) const ;
## Error: identifier expected, but got: )!!!

proc Reverse*(this: var gp_Vec2d) {.importcpp: "Reverse", header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  operator - ( ) const { return Reversed ( ) ; } ! Subtracts two vectors void Subtract ( const gp_Vec2d & Right ) ;
## Error: identifier expected, but got: -!!!

proc `-=`*(this: var gp_Vec2d; Right: gp_Vec2d) {.importcpp: "(# -= #)",
    header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Subtracted ( const gp_Vec2d & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator - ( const gp_Vec2d & Right ) const { return Subtracted ( Right ) ; } ! <me> is set to the following linear form :
## ! A1 * V1 + A2 * V2 + V3 void SetLinearForm ( const Standard_Real A1 , const gp_Vec2d & V1 , const Standard_Real A2 , const gp_Vec2d & V2 , const gp_Vec2d & V3 ) ;
## Error: identifier expected, but got: -!!!

proc SetLinearForm*(this: var gp_Vec2d; A1: Standard_Real; V1: gp_Vec2d;
                   A2: Standard_Real; V2: gp_Vec2d) {.importcpp: "SetLinearForm",
    header: "gp_Vec2d.hxx".}
proc SetLinearForm*(this: var gp_Vec2d; A1: Standard_Real; V1: gp_Vec2d; V2: gp_Vec2d) {.
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc SetLinearForm*(this: var gp_Vec2d; Left: gp_Vec2d; Right: gp_Vec2d) {.
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc Mirror*(this: var gp_Vec2d; V: gp_Vec2d) {.importcpp: "Mirror",
    header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Vec2d & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Vec2d; A1: gp_Ax2d) {.importcpp: "Mirror",
    header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2d & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Vec2d; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Rotated ( const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Vec2d; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Scaled ( const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Vec2d; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "gp_Vec2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!
