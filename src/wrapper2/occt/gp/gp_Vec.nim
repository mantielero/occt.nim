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
  ../Standard/Standard_Handle, gp_XYZ, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Dir"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
type
  gp_Vec* {.importcpp: "gp_Vec", header: "gp_Vec.hxx", bycopy.} = object ## ! Creates a zero vector.
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD
    gp_Vec* {.importc: "gp_Vec".}: Standard_NODISCARD


proc constructgp_Vec*(): gp_Vec {.constructor, importcpp: "gp_Vec(@)",
                               header: "gp_Vec.hxx".}
proc constructgp_Vec*(V: gp_Dir): gp_Vec {.constructor, importcpp: "gp_Vec(@)",
                                       header: "gp_Vec.hxx".}
proc constructgp_Vec*(Coord: gp_XYZ): gp_Vec {.constructor, importcpp: "gp_Vec(@)",
    header: "gp_Vec.hxx".}
proc constructgp_Vec*(Xv: Standard_Real; Yv: Standard_Real; Zv: Standard_Real): gp_Vec {.
    constructor, importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc constructgp_Vec*(P1: gp_Pnt; P2: gp_Pnt): gp_Vec {.constructor,
    importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc SetCoord*(this: var gp_Vec; Index: Standard_Integer; Xi: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Vec.hxx".}
proc SetCoord*(this: var gp_Vec; Xv: Standard_Real; Yv: Standard_Real; Zv: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Vec.hxx".}
proc SetX*(this: var gp_Vec; X: Standard_Real) {.importcpp: "SetX", header: "gp_Vec.hxx".}
proc SetY*(this: var gp_Vec; Y: Standard_Real) {.importcpp: "SetY", header: "gp_Vec.hxx".}
proc SetZ*(this: var gp_Vec; Z: Standard_Real) {.importcpp: "SetZ", header: "gp_Vec.hxx".}
proc SetXYZ*(this: var gp_Vec; Coord: gp_XYZ) {.importcpp: "SetXYZ",
    header: "gp_Vec.hxx".}
proc Coord*(this: gp_Vec; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Coord", header: "gp_Vec.hxx".}
proc Coord*(this: gp_Vec; Xv: var Standard_Real; Yv: var Standard_Real;
           Zv: var Standard_Real) {.noSideEffect, importcpp: "Coord",
                                 header: "gp_Vec.hxx".}
proc X*(this: gp_Vec): Standard_Real {.noSideEffect, importcpp: "X",
                                   header: "gp_Vec.hxx".}
proc Y*(this: gp_Vec): Standard_Real {.noSideEffect, importcpp: "Y",
                                   header: "gp_Vec.hxx".}
proc Z*(this: gp_Vec): Standard_Real {.noSideEffect, importcpp: "Z",
                                   header: "gp_Vec.hxx".}
proc XYZ*(this: gp_Vec): gp_XYZ {.noSideEffect, importcpp: "XYZ", header: "gp_Vec.hxx".}
proc IsEqual*(this: gp_Vec; Other: gp_Vec; LinearTolerance: Standard_Real;
             AngularTolerance: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsEqual", header: "gp_Vec.hxx".}
proc IsNormal*(this: gp_Vec; Other: gp_Vec; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsNormal", header: "gp_Vec.hxx".}
proc IsOpposite*(this: gp_Vec; Other: gp_Vec; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Vec.hxx".}
proc IsParallel*(this: gp_Vec; Other: gp_Vec; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Vec.hxx".}
proc Angle*(this: gp_Vec; Other: gp_Vec): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "gp_Vec.hxx".}
proc AngleWithRef*(this: gp_Vec; Other: gp_Vec; VRef: gp_Vec): Standard_Real {.
    noSideEffect, importcpp: "AngleWithRef", header: "gp_Vec.hxx".}
proc Magnitude*(this: gp_Vec): Standard_Real {.noSideEffect, importcpp: "Magnitude",
    header: "gp_Vec.hxx".}
proc SquareMagnitude*(this: gp_Vec): Standard_Real {.noSideEffect,
    importcpp: "SquareMagnitude", header: "gp_Vec.hxx".}
proc Add*(this: var gp_Vec; Other: gp_Vec) {.importcpp: "Add", header: "gp_Vec.hxx".}
proc `+=`*(this: var gp_Vec; Other: gp_Vec) {.importcpp: "(# += #)",
                                        header: "gp_Vec.hxx".}
## !!!Ignored construct:  Added ( const gp_Vec & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator + ( const gp_Vec & Other ) const { return Added ( Other ) ; } ! Subtracts two vectors void Subtract ( const gp_Vec & Right ) ;
## Error: identifier expected, but got: +!!!

proc `-=`*(this: var gp_Vec; Right: gp_Vec) {.importcpp: "(# -= #)",
                                        header: "gp_Vec.hxx".}
## !!!Ignored construct:  Subtracted ( const gp_Vec & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator - ( const gp_Vec & Right ) const { return Subtracted ( Right ) ; } ! Multiplies a vector by a scalar void Multiply ( const Standard_Real Scalar ) ;
## Error: identifier expected, but got: -!!!

proc `*=`*(this: var gp_Vec; Scalar: Standard_Real) {.importcpp: "(# *= #)",
    header: "gp_Vec.hxx".}
## !!!Ignored construct:  Multiplied ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const Standard_Real Scalar ) const { return Multiplied ( Scalar ) ; } ! Divides a vector by a scalar void Divide ( const Standard_Real Scalar ) ;
## Error: identifier expected, but got: *!!!

proc `/=`*(this: var gp_Vec; Scalar: Standard_Real) {.importcpp: "(# /= #)",
    header: "gp_Vec.hxx".}
## !!!Ignored construct:  Divided ( const Standard_Real Scalar ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator / ( const Standard_Real Scalar ) const { return Divided ( Scalar ) ; } ! computes the cross product between two vectors void Cross ( const gp_Vec & Right ) ;
## Error: identifier expected, but got: /!!!

proc `^=`*(this: var gp_Vec; Right: gp_Vec) {.importcpp: "(# ^= #)",
                                        header: "gp_Vec.hxx".}
## !!!Ignored construct:  Crossed ( const gp_Vec & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator ^ ( const gp_Vec & Right ) const { return Crossed ( Right ) ; } ! Computes the magnitude of the cross
## ! product between <me> and Right.
## ! Returns || <me> ^ Right || Standard_Real CrossMagnitude ( const gp_Vec & Right ) const ;
## Error: identifier expected, but got: ^!!!

proc CrossSquareMagnitude*(this: gp_Vec; Right: gp_Vec): Standard_Real {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: "gp_Vec.hxx".}
proc CrossCross*(this: var gp_Vec; V1: gp_Vec; V2: gp_Vec) {.importcpp: "CrossCross",
    header: "gp_Vec.hxx".}
## !!!Ignored construct:  CrossCrossed ( const gp_Vec & V1 , const gp_Vec & V2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Dot*(this: gp_Vec; Other: gp_Vec): Standard_Real {.noSideEffect, importcpp: "Dot",
    header: "gp_Vec.hxx".}
proc `*`*(this: gp_Vec; Other: gp_Vec): Standard_Real {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Vec.hxx".}
proc DotCross*(this: gp_Vec; V1: gp_Vec; V2: gp_Vec): Standard_Real {.noSideEffect,
    importcpp: "DotCross", header: "gp_Vec.hxx".}
proc Normalize*(this: var gp_Vec) {.importcpp: "Normalize", header: "gp_Vec.hxx".}
## !!!Ignored construct:  Normalized ( ) const ;
## Error: identifier expected, but got: )!!!

proc Reverse*(this: var gp_Vec) {.importcpp: "Reverse", header: "gp_Vec.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  operator - ( ) const { return Reversed ( ) ; } ! <me> is set to the following linear form :
## ! A1 * V1 + A2 * V2 + A3 * V3 + V4 void SetLinearForm ( const Standard_Real A1 , const gp_Vec & V1 , const Standard_Real A2 , const gp_Vec & V2 , const Standard_Real A3 , const gp_Vec & V3 , const gp_Vec & V4 ) ;
## Error: identifier expected, but got: -!!!

proc SetLinearForm*(this: var gp_Vec; A1: Standard_Real; V1: gp_Vec; A2: Standard_Real;
                   V2: gp_Vec; A3: Standard_Real; V3: gp_Vec) {.
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc SetLinearForm*(this: var gp_Vec; A1: Standard_Real; V1: gp_Vec; A2: Standard_Real;
                   V2: gp_Vec; V3: gp_Vec) {.importcpp: "SetLinearForm",
    header: "gp_Vec.hxx".}
proc SetLinearForm*(this: var gp_Vec; A1: Standard_Real; V1: gp_Vec; A2: Standard_Real;
                   V2: gp_Vec) {.importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc SetLinearForm*(this: var gp_Vec; A1: Standard_Real; V1: gp_Vec; V2: gp_Vec) {.
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc SetLinearForm*(this: var gp_Vec; V1: gp_Vec; V2: gp_Vec) {.
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc Mirror*(this: var gp_Vec; V: gp_Vec) {.importcpp: "Mirror", header: "gp_Vec.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Vec; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Vec.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Vec; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Vec.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Vec; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Vec.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Vec; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Vec.hxx".}
## !!!Ignored construct:  Scaled ( const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Vec; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Vec.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc DumpJson*(this: gp_Vec; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Vec.hxx".}