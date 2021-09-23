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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, gp_TrsfForm, gp_Mat2d,
  gp_XY, ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Mat2d"
type
  gp_Trsf2d* {.importcpp: "gp_Trsf2d", header: "gp_Trsf2d.hxx", bycopy.} = object ## !
                                                                          ## Returns
                                                                          ## identity
                                                                          ## transformation.
                                                                          ## ! Makes
                                                                          ## orthogonalization of
                                                                          ## "matrix"
    gp_Trsf2d* {.importc: "gp_Trsf2d".}: Standard_NODISCARD
    gp_Trsf2d* {.importc: "gp_Trsf2d".}: Standard_NODISCARD
    gp_Trsf2d* {.importc: "gp_Trsf2d".}: Standard_NODISCARD


proc constructgp_Trsf2d*(): gp_Trsf2d {.constructor, importcpp: "gp_Trsf2d(@)",
                                     header: "gp_Trsf2d.hxx".}
proc constructgp_Trsf2d*(T: gp_Trsf): gp_Trsf2d {.constructor,
    importcpp: "gp_Trsf2d(@)", header: "gp_Trsf2d.hxx".}
proc SetMirror*(this: var gp_Trsf2d; P: gp_Pnt2d) {.importcpp: "SetMirror",
    header: "gp_Trsf2d.hxx".}
proc SetMirror*(this: var gp_Trsf2d; A: gp_Ax2d) {.importcpp: "SetMirror",
    header: "gp_Trsf2d.hxx".}
proc SetRotation*(this: var gp_Trsf2d; P: gp_Pnt2d; Ang: Standard_Real) {.
    importcpp: "SetRotation", header: "gp_Trsf2d.hxx".}
proc SetScale*(this: var gp_Trsf2d; P: gp_Pnt2d; S: Standard_Real) {.
    importcpp: "SetScale", header: "gp_Trsf2d.hxx".}
proc SetTransformation*(this: var gp_Trsf2d; FromSystem1: gp_Ax2d; ToSystem2: gp_Ax2d) {.
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc SetTransformation*(this: var gp_Trsf2d; ToSystem: gp_Ax2d) {.
    importcpp: "SetTransformation", header: "gp_Trsf2d.hxx".}
proc SetTranslation*(this: var gp_Trsf2d; V: gp_Vec2d) {.importcpp: "SetTranslation",
    header: "gp_Trsf2d.hxx".}
proc SetTranslation*(this: var gp_Trsf2d; P1: gp_Pnt2d; P2: gp_Pnt2d) {.
    importcpp: "SetTranslation", header: "gp_Trsf2d.hxx".}
proc SetTranslationPart*(this: var gp_Trsf2d; V: gp_Vec2d) {.
    importcpp: "SetTranslationPart", header: "gp_Trsf2d.hxx".}
proc SetScaleFactor*(this: var gp_Trsf2d; S: Standard_Real) {.
    importcpp: "SetScaleFactor", header: "gp_Trsf2d.hxx".}
proc IsNegative*(this: gp_Trsf2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsNegative", header: "gp_Trsf2d.hxx".}
proc Form*(this: gp_Trsf2d): gp_TrsfForm {.noSideEffect, importcpp: "Form",
                                       header: "gp_Trsf2d.hxx".}
proc ScaleFactor*(this: gp_Trsf2d): Standard_Real {.noSideEffect,
    importcpp: "ScaleFactor", header: "gp_Trsf2d.hxx".}
proc TranslationPart*(this: gp_Trsf2d): gp_XY {.noSideEffect,
    importcpp: "TranslationPart", header: "gp_Trsf2d.hxx".}
proc VectorialPart*(this: gp_Trsf2d): gp_Mat2d {.noSideEffect,
    importcpp: "VectorialPart", header: "gp_Trsf2d.hxx".}
proc HVectorialPart*(this: gp_Trsf2d): gp_Mat2d {.noSideEffect,
    importcpp: "HVectorialPart", header: "gp_Trsf2d.hxx".}
proc RotationPart*(this: gp_Trsf2d): Standard_Real {.noSideEffect,
    importcpp: "RotationPart", header: "gp_Trsf2d.hxx".}
proc Value*(this: gp_Trsf2d; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "gp_Trsf2d.hxx".}
proc Invert*(this: var gp_Trsf2d) {.importcpp: "Invert", header: "gp_Trsf2d.hxx".}
## !!!Ignored construct:  Inverted ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  Multiplied ( const gp_Trsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const gp_Trsf2d & T ) const { return Multiplied ( T ) ; } ! Computes the transformation composed from <me> and T.
## ! <me> = <me> * T void Multiply ( const gp_Trsf2d & T ) ;
## Error: identifier expected, but got: *!!!

proc `*=`*(this: var gp_Trsf2d; T: gp_Trsf2d) {.importcpp: "(# *= #)",
    header: "gp_Trsf2d.hxx".}
proc PreMultiply*(this: var gp_Trsf2d; T: gp_Trsf2d) {.importcpp: "PreMultiply",
    header: "gp_Trsf2d.hxx".}
proc Power*(this: var gp_Trsf2d; N: Standard_Integer) {.importcpp: "Power",
    header: "gp_Trsf2d.hxx".}
proc Powered*(this: var gp_Trsf2d; N: Standard_Integer): gp_Trsf2d {.
    importcpp: "Powered", header: "gp_Trsf2d.hxx".}
proc Transforms*(this: gp_Trsf2d; X: var Standard_Real; Y: var Standard_Real) {.
    noSideEffect, importcpp: "Transforms", header: "gp_Trsf2d.hxx".}
proc Transforms*(this: gp_Trsf2d; Coord: var gp_XY) {.noSideEffect,
    importcpp: "Transforms", header: "gp_Trsf2d.hxx".}
proc SetValues*(this: var gp_Trsf2d; a11: Standard_Real; a12: Standard_Real;
               a13: Standard_Real; a21: Standard_Real; a22: Standard_Real;
               a23: Standard_Real) {.importcpp: "SetValues", header: "gp_Trsf2d.hxx".}