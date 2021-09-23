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
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream, ../Standard/Standard_SStream

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat"
type
  gp_XYZ* {.importcpp: "gp_XYZ", header: "gp_XYZ.hxx", bycopy.} = object ## ! Creates an XYZ object with zero co-ordinates (0,0,0)
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD
    gp_XYZ* {.importc: "gp_XYZ".}: Standard_NODISCARD


proc constructgp_XYZ*(): gp_XYZ {.constructor, importcpp: "gp_XYZ(@)",
                               header: "gp_XYZ.hxx".}
proc constructgp_XYZ*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real): gp_XYZ {.
    constructor, importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc SetCoord*(this: var gp_XYZ; X: Standard_Real; Y: Standard_Real; Z: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_XYZ.hxx".}
proc SetCoord*(this: var gp_XYZ; Index: Standard_Integer; Xi: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_XYZ.hxx".}
proc SetX*(this: var gp_XYZ; X: Standard_Real) {.importcpp: "SetX", header: "gp_XYZ.hxx".}
proc SetY*(this: var gp_XYZ; Y: Standard_Real) {.importcpp: "SetY", header: "gp_XYZ.hxx".}
proc SetZ*(this: var gp_XYZ; Z: Standard_Real) {.importcpp: "SetZ", header: "gp_XYZ.hxx".}
proc Coord*(this: gp_XYZ; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Coord", header: "gp_XYZ.hxx".}
proc ChangeCoord*(this: var gp_XYZ; theIndex: Standard_Integer): var Standard_Real {.
    importcpp: "ChangeCoord", header: "gp_XYZ.hxx".}
proc Coord*(this: gp_XYZ; X: var Standard_Real; Y: var Standard_Real;
           Z: var Standard_Real) {.noSideEffect, importcpp: "Coord",
                                header: "gp_XYZ.hxx".}
proc GetData*(this: gp_XYZ): ptr Standard_Real {.noSideEffect, importcpp: "GetData",
    header: "gp_XYZ.hxx".}
proc ChangeData*(this: var gp_XYZ): ptr Standard_Real {.importcpp: "ChangeData",
    header: "gp_XYZ.hxx".}
proc X*(this: gp_XYZ): Standard_Real {.noSideEffect, importcpp: "X",
                                   header: "gp_XYZ.hxx".}
proc Y*(this: gp_XYZ): Standard_Real {.noSideEffect, importcpp: "Y",
                                   header: "gp_XYZ.hxx".}
proc Z*(this: gp_XYZ): Standard_Real {.noSideEffect, importcpp: "Z",
                                   header: "gp_XYZ.hxx".}
proc Modulus*(this: gp_XYZ): Standard_Real {.noSideEffect, importcpp: "Modulus",
    header: "gp_XYZ.hxx".}
proc SquareModulus*(this: gp_XYZ): Standard_Real {.noSideEffect,
    importcpp: "SquareModulus", header: "gp_XYZ.hxx".}
proc IsEqual*(this: gp_XYZ; Other: gp_XYZ; Tolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_XYZ.hxx".}
proc Add*(this: var gp_XYZ; Other: gp_XYZ) {.importcpp: "Add", header: "gp_XYZ.hxx".}
proc `+=`*(this: var gp_XYZ; Other: gp_XYZ) {.importcpp: "(# += #)",
                                        header: "gp_XYZ.hxx".}
## !!!Ignored construct:  Added ( const gp_XYZ & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator + ( const gp_XYZ & Other ) const { return Added ( Other ) ; } ! <me>.X() = <me>.Y() * Other.Z() - <me>.Z() * Other.Y()
## ! <me>.Y() = <me>.Z() * Other.X() - <me>.X() * Other.Z()
## ! <me>.Z() = <me>.X() * Other.Y() - <me>.Y() * Other.X() void Cross ( const gp_XYZ & Right ) ;
## Error: identifier expected, but got: +!!!

proc `^=`*(this: var gp_XYZ; Right: gp_XYZ) {.importcpp: "(# ^= #)",
                                        header: "gp_XYZ.hxx".}
## !!!Ignored construct:  Crossed ( const gp_XYZ & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator ^ ( const gp_XYZ & Right ) const { return Crossed ( Right ) ; } ! Computes the magnitude of the cross product between <me> and
## ! Right. Returns || <me> ^ Right || Standard_Real CrossMagnitude ( const gp_XYZ & Right ) const ;
## Error: identifier expected, but got: ^!!!

proc CrossSquareMagnitude*(this: gp_XYZ; Right: gp_XYZ): Standard_Real {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: "gp_XYZ.hxx".}
proc CrossCross*(this: var gp_XYZ; Coord1: gp_XYZ; Coord2: gp_XYZ) {.
    importcpp: "CrossCross", header: "gp_XYZ.hxx".}
## !!!Ignored construct:  CrossCrossed ( const gp_XYZ & Coord1 , const gp_XYZ & Coord2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Divide*(this: var gp_XYZ; Scalar: Standard_Real) {.importcpp: "Divide",
    header: "gp_XYZ.hxx".}
proc `/=`*(this: var gp_XYZ; Scalar: Standard_Real) {.importcpp: "(# /= #)",
    header: "gp_XYZ.hxx".}
## !!!Ignored construct:  Divided ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator / ( const Standard_Real Scalar ) const { return Divided ( Scalar ) ; } ! computes the scalar product between <me> and Other Standard_Real Dot ( const gp_XYZ & Other ) const ;
## Error: identifier expected, but got: /!!!

proc `*`*(this: gp_XYZ; Other: gp_XYZ): Standard_Real {.noSideEffect,
    importcpp: "(# * #)", header: "gp_XYZ.hxx".}
proc DotCross*(this: gp_XYZ; Coord1: gp_XYZ; Coord2: gp_XYZ): Standard_Real {.
    noSideEffect, importcpp: "DotCross", header: "gp_XYZ.hxx".}
proc Multiply*(this: var gp_XYZ; Scalar: Standard_Real) {.importcpp: "Multiply",
    header: "gp_XYZ.hxx".}
proc `*=`*(this: var gp_XYZ; Scalar: Standard_Real) {.importcpp: "(# *= #)",
    header: "gp_XYZ.hxx".}
proc Multiply*(this: var gp_XYZ; Other: gp_XYZ) {.importcpp: "Multiply",
    header: "gp_XYZ.hxx".}
proc `*=`*(this: var gp_XYZ; Other: gp_XYZ) {.importcpp: "(# *= #)",
                                        header: "gp_XYZ.hxx".}
proc Multiply*(this: var gp_XYZ; Matrix: gp_Mat) {.importcpp: "Multiply",
    header: "gp_XYZ.hxx".}
proc `*=`*(this: var gp_XYZ; Matrix: gp_Mat) {.importcpp: "(# *= #)",
    header: "gp_XYZ.hxx".}
## !!!Ignored construct:  Multiplied ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const Standard_Real Scalar ) const { return Multiplied ( Scalar ) ; } ! new.X() = <me>.X() * Other.X();
## ! new.Y() = <me>.Y() * Other.Y();
## ! new.Z() = <me>.Z() * Other.Z(); Standard_NODISCARD gp_XYZ Multiplied ( const gp_XYZ & Other ) const ;
## Error: identifier expected, but got: *!!!

## !!!Ignored construct:  Multiplied ( const gp_Mat & Matrix ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const gp_Mat & Matrix ) const { return Multiplied ( Matrix ) ; } ! <me>.X() = <me>.X()/ <me>.Modulus()
## ! <me>.Y() = <me>.Y()/ <me>.Modulus()
## ! <me>.Z() = <me>.Z()/ <me>.Modulus()
## ! Raised if <me>.Modulus() <= Resolution from gp void Normalize ( ) ;
## Error: identifier expected, but got: *!!!

## !!!Ignored construct:  Normalized ( ) const ;
## Error: identifier expected, but got: )!!!

proc Reverse*(this: var gp_XYZ) {.importcpp: "Reverse", header: "gp_XYZ.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

proc Subtract*(this: var gp_XYZ; Right: gp_XYZ) {.importcpp: "Subtract",
    header: "gp_XYZ.hxx".}
proc `-=`*(this: var gp_XYZ; Right: gp_XYZ) {.importcpp: "(# -= #)",
                                        header: "gp_XYZ.hxx".}
## !!!Ignored construct:  Subtracted ( const gp_XYZ & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator - ( const gp_XYZ & Right ) const { return Subtracted ( Right ) ; } ! <me> is set to the following linear form :
## ! A1 * XYZ1 + A2 * XYZ2 + A3 * XYZ3 + XYZ4 void SetLinearForm ( const Standard_Real A1 , const gp_XYZ & XYZ1 , const Standard_Real A2 , const gp_XYZ & XYZ2 , const Standard_Real A3 , const gp_XYZ & XYZ3 , const gp_XYZ & XYZ4 ) ;
## Error: identifier expected, but got: -!!!

proc SetLinearForm*(this: var gp_XYZ; A1: Standard_Real; XYZ1: gp_XYZ;
                   A2: Standard_Real; XYZ2: gp_XYZ; A3: Standard_Real; XYZ3: gp_XYZ) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc SetLinearForm*(this: var gp_XYZ; A1: Standard_Real; XYZ1: gp_XYZ;
                   A2: Standard_Real; XYZ2: gp_XYZ; XYZ3: gp_XYZ) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc SetLinearForm*(this: var gp_XYZ; A1: Standard_Real; XYZ1: gp_XYZ;
                   A2: Standard_Real; XYZ2: gp_XYZ) {.importcpp: "SetLinearForm",
    header: "gp_XYZ.hxx".}
proc SetLinearForm*(this: var gp_XYZ; A1: Standard_Real; XYZ1: gp_XYZ; XYZ2: gp_XYZ) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc SetLinearForm*(this: var gp_XYZ; XYZ1: gp_XYZ; XYZ2: gp_XYZ) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc DumpJson*(this: gp_XYZ; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_XYZ.hxx".}
proc InitFromJson*(this: var gp_XYZ; theSStream: Standard_SStream;
                  theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "InitFromJson", header: "gp_XYZ.hxx".}