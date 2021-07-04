##  Created on: 1993-03-24
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Trsf2d,
  ../Standard/Standard_Transient, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../gp/gp_TrsfForm, ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Transformation"
discard "forward decl of Geom2d_Transformation"
type
  Handle_Geom2d_Transformation* = handle[Geom2d_Transformation]

## ! The class Transformation allows to create Translation,
## ! Rotation, Symmetry, Scaling and complex transformations
## ! obtained by combination of the previous elementary
## ! transformations.
## ! The Transformation class can also be used to
## ! construct complex transformations by combining
## ! these elementary transformations.
## ! However, these transformations can never change
## ! the type of an object. For example, the projection
## ! transformation can change a circle into an ellipse,
## ! and therefore change the real type of the object.
## ! Such a transformation is forbidden in this
## ! environment and cannot be a Geom2d_Transformation.
## ! The transformation can be represented as follow :
## !
## ! V1   V2     T
## ! | a11  a12    a14 |   | x |      | x'|
## ! | a21  a22    a24 |   | y |      | y'|
## ! |  0    0      1  |   | 1 |      | 1 |
## !
## ! where {V1, V2} defines the vectorial part of the
## ! transformation and T defines the translation part of
## ! the transformation.
## ! - Geom2d_Transformation transformations provide
## ! the same kind of "geometric" services as
## ! gp_Trsf2d ones but have more complex data
## ! structures. The geometric objects provided by the
## ! Geom2d package use gp_Trsf2d transformations
## ! in the syntaxes Transform and Transformed.
## ! - Geom2d_Transformation transformations are
## ! used in a context where they can be shared by
## ! several objects contained inside a common data structure.

type
  Geom2d_Transformation* {.importcpp: "Geom2d_Transformation",
                          header: "Geom2d_Transformation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## identity
                                                                                                ## transformation.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc constructGeom2d_Transformation*(): Geom2d_Transformation {.constructor,
    importcpp: "Geom2d_Transformation(@)", header: "Geom2d_Transformation.hxx".}
proc constructGeom2d_Transformation*(T: gp_Trsf2d): Geom2d_Transformation {.
    constructor, importcpp: "Geom2d_Transformation(@)",
    header: "Geom2d_Transformation.hxx".}
proc SetMirror*(this: var Geom2d_Transformation; P: gp_Pnt2d) {.
    importcpp: "SetMirror", header: "Geom2d_Transformation.hxx".}
proc SetMirror*(this: var Geom2d_Transformation; A: gp_Ax2d) {.importcpp: "SetMirror",
    header: "Geom2d_Transformation.hxx".}
proc SetRotation*(this: var Geom2d_Transformation; P: gp_Pnt2d; Ang: Standard_Real) {.
    importcpp: "SetRotation", header: "Geom2d_Transformation.hxx".}
proc SetScale*(this: var Geom2d_Transformation; P: gp_Pnt2d; S: Standard_Real) {.
    importcpp: "SetScale", header: "Geom2d_Transformation.hxx".}
proc SetTransformation*(this: var Geom2d_Transformation; FromSystem1: gp_Ax2d;
                       ToSystem2: gp_Ax2d) {.importcpp: "SetTransformation",
    header: "Geom2d_Transformation.hxx".}
proc SetTransformation*(this: var Geom2d_Transformation; ToSystem: gp_Ax2d) {.
    importcpp: "SetTransformation", header: "Geom2d_Transformation.hxx".}
proc SetTranslation*(this: var Geom2d_Transformation; V: gp_Vec2d) {.
    importcpp: "SetTranslation", header: "Geom2d_Transformation.hxx".}
proc SetTranslation*(this: var Geom2d_Transformation; P1: gp_Pnt2d; P2: gp_Pnt2d) {.
    importcpp: "SetTranslation", header: "Geom2d_Transformation.hxx".}
proc SetTrsf2d*(this: var Geom2d_Transformation; T: gp_Trsf2d) {.
    importcpp: "SetTrsf2d", header: "Geom2d_Transformation.hxx".}
proc IsNegative*(this: Geom2d_Transformation): Standard_Boolean {.noSideEffect,
    importcpp: "IsNegative", header: "Geom2d_Transformation.hxx".}
proc Form*(this: Geom2d_Transformation): gp_TrsfForm {.noSideEffect,
    importcpp: "Form", header: "Geom2d_Transformation.hxx".}
proc ScaleFactor*(this: Geom2d_Transformation): Standard_Real {.noSideEffect,
    importcpp: "ScaleFactor", header: "Geom2d_Transformation.hxx".}
proc Trsf2d*(this: Geom2d_Transformation): gp_Trsf2d {.noSideEffect,
    importcpp: "Trsf2d", header: "Geom2d_Transformation.hxx".}
proc Value*(this: Geom2d_Transformation; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "Geom2d_Transformation.hxx".}
proc Invert*(this: var Geom2d_Transformation) {.importcpp: "Invert",
    header: "Geom2d_Transformation.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_Transformation > [end of template] Inverted ( ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_Transformation > [end of template] Multiplied ( const opencascade :: handle < Geom2d_Transformation > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_Transformation > [end of template] operator * ( const opencascade :: handle < Geom2d_Transformation > [end of template] & Other ) const { return Multiplied ( Other ) ; } ! Computes the transformation composed with Other and <me> .
## ! <me> = <me> * Other.
## !
## ! Computes the following composition of transformations
## ! if N > 0  <me> * <me> * .......* <me>.
## ! if N = 0  Identity
## ! if N < 0  <me>.Invert() * .........* <me>.Invert() void Multiply ( const opencascade :: handle < Geom2d_Transformation > [end of template] & Other ) ;
## Error: identifier expected, but got: ::!!!

proc `*=`*(this: var Geom2d_Transformation; Other: handle[Geom2d_Transformation]) {.
    importcpp: "(# *= #)", header: "Geom2d_Transformation.hxx".}
proc Power*(this: var Geom2d_Transformation; N: Standard_Integer) {.
    importcpp: "Power", header: "Geom2d_Transformation.hxx".}
proc Powered*(this: Geom2d_Transformation; N: Standard_Integer): handle[
    Geom2d_Transformation] {.noSideEffect, importcpp: "Powered",
                            header: "Geom2d_Transformation.hxx".}
proc PreMultiply*(this: var Geom2d_Transformation;
                 Other: handle[Geom2d_Transformation]) {.importcpp: "PreMultiply",
    header: "Geom2d_Transformation.hxx".}
proc Transforms*(this: Geom2d_Transformation; X: var Standard_Real;
                Y: var Standard_Real) {.noSideEffect, importcpp: "Transforms",
                                     header: "Geom2d_Transformation.hxx".}
proc Copy*(this: Geom2d_Transformation): handle[Geom2d_Transformation] {.
    noSideEffect, importcpp: "Copy", header: "Geom2d_Transformation.hxx".}
type
  Geom2d_Transformationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Geom2d_Transformation::get_type_name(@)",
                              header: "Geom2d_Transformation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Transformation::get_type_descriptor(@)",
    header: "Geom2d_Transformation.hxx".}
proc DynamicType*(this: Geom2d_Transformation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom2d_Transformation.hxx".}