##  Created on: 1993-03-10
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
  ../gp/gp_Trsf, ../Standard/Standard, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of Geom_Transformation"
type
  Handle_Geom_Transformation* = handle[Geom_Transformation]

## ! Describes how to construct the following elementary transformations
## ! - translations,
## ! - rotations,
## ! - symmetries,
## ! - scales.
## ! The Transformation class can also be used to
## ! construct complex transformations by combining these
## ! elementary transformations.
## ! However, these transformations can never change
## ! the type of an object. For example, the projection
## ! transformation can change a circle into an ellipse, and
## ! therefore change the real type of the object. Such a
## ! transformation is forbidden in this environment and
## ! cannot be a Geom_Transformation.
## ! The transformation can be represented as follow :
## !
## ! V1   V2   V3    T
## ! | a11  a12  a13   a14 |   | x |      | x'|
## ! | a21  a22  a23   a24 |   | y |      | y'|
## ! | a31  a32  a33   a34 |   | z |   =  | z'|
## ! |  0    0    0     1  |   | 1 |      | 1 |
## !
## ! where {V1, V2, V3} defines the vectorial part of the
## ! transformation and T defines the translation part of
## ! the transformation.
## ! Note: Geom_Transformation transformations
## ! provide the same kind of "geometric" services as
## ! gp_Trsf ones but have more complex data structures.
## ! The geometric objects provided by the Geom
## ! package use gp_Trsf transformations in the syntaxes
## ! Transform and Transformed.
## ! Geom_Transformation transformations are used in
## ! a context where they can be shared by several
## ! objects contained inside a common data structure.

type
  Geom_Transformation* {.importcpp: "Geom_Transformation",
                        header: "Geom_Transformation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## identity
                                                                                            ## transformation.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD

  Geom_Transformationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Geom_Transformation::get_type_name(@)",
                              header: "Geom_Transformation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Transformation::get_type_descriptor(@)",
    header: "Geom_Transformation.hxx".}
proc DynamicType*(this: Geom_Transformation): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Transformation.hxx".}
proc constructGeom_Transformation*(): Geom_Transformation {.constructor,
    importcpp: "Geom_Transformation(@)", header: "Geom_Transformation.hxx".}
proc constructGeom_Transformation*(T: gp_Trsf): Geom_Transformation {.constructor,
    importcpp: "Geom_Transformation(@)", header: "Geom_Transformation.hxx".}
proc SetMirror*(this: var Geom_Transformation; thePnt: gp_Pnt) {.
    importcpp: "SetMirror", header: "Geom_Transformation.hxx".}
proc SetMirror*(this: var Geom_Transformation; theA1: gp_Ax1) {.
    importcpp: "SetMirror", header: "Geom_Transformation.hxx".}
proc SetMirror*(this: var Geom_Transformation; theA2: gp_Ax2) {.
    importcpp: "SetMirror", header: "Geom_Transformation.hxx".}
proc SetRotation*(this: var Geom_Transformation; theA1: gp_Ax1; theAng: Standard_Real) {.
    importcpp: "SetRotation", header: "Geom_Transformation.hxx".}
proc SetScale*(this: var Geom_Transformation; thePnt: gp_Pnt; theScale: Standard_Real) {.
    importcpp: "SetScale", header: "Geom_Transformation.hxx".}
proc SetTransformation*(this: var Geom_Transformation; theFromSystem1: gp_Ax3;
                       theToSystem2: gp_Ax3) {.importcpp: "SetTransformation",
    header: "Geom_Transformation.hxx".}
proc SetTransformation*(this: var Geom_Transformation; theToSystem: gp_Ax3) {.
    importcpp: "SetTransformation", header: "Geom_Transformation.hxx".}
proc SetTranslation*(this: var Geom_Transformation; theVec: gp_Vec) {.
    importcpp: "SetTranslation", header: "Geom_Transformation.hxx".}
proc SetTranslation*(this: var Geom_Transformation; P1: gp_Pnt; P2: gp_Pnt) {.
    importcpp: "SetTranslation", header: "Geom_Transformation.hxx".}
proc SetTrsf*(this: var Geom_Transformation; theTrsf: gp_Trsf) {.importcpp: "SetTrsf",
    header: "Geom_Transformation.hxx".}
proc IsNegative*(this: Geom_Transformation): Standard_Boolean {.noSideEffect,
    importcpp: "IsNegative", header: "Geom_Transformation.hxx".}
proc Form*(this: Geom_Transformation): gp_TrsfForm {.noSideEffect, importcpp: "Form",
    header: "Geom_Transformation.hxx".}
proc ScaleFactor*(this: Geom_Transformation): Standard_Real {.noSideEffect,
    importcpp: "ScaleFactor", header: "Geom_Transformation.hxx".}
proc Trsf*(this: Geom_Transformation): gp_Trsf {.noSideEffect, importcpp: "Trsf",
    header: "Geom_Transformation.hxx".}
proc Value*(this: Geom_Transformation; theRow: Standard_Integer;
           theCol: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "Geom_Transformation.hxx".}
proc Invert*(this: var Geom_Transformation) {.importcpp: "Invert",
    header: "Geom_Transformation.hxx".}
## !!!Ignored construct:  :: handle < Geom_Transformation > [end of template] Inverted ( ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_Transformation > [end of template] Multiplied ( const opencascade :: handle < Geom_Transformation > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

proc Multiply*(this: var Geom_Transformation; theOther: handle[Geom_Transformation]) {.
    importcpp: "Multiply", header: "Geom_Transformation.hxx".}
proc Power*(this: var Geom_Transformation; N: Standard_Integer) {.importcpp: "Power",
    header: "Geom_Transformation.hxx".}
proc Powered*(this: Geom_Transformation; N: Standard_Integer): handle[
    Geom_Transformation] {.noSideEffect, importcpp: "Powered",
                          header: "Geom_Transformation.hxx".}
proc PreMultiply*(this: var Geom_Transformation; Other: handle[Geom_Transformation]) {.
    importcpp: "PreMultiply", header: "Geom_Transformation.hxx".}
proc Transforms*(this: Geom_Transformation; theX: var Standard_Real;
                theY: var Standard_Real; theZ: var Standard_Real) {.noSideEffect,
    importcpp: "Transforms", header: "Geom_Transformation.hxx".}
proc Copy*(this: Geom_Transformation): handle[Geom_Transformation] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Transformation.hxx".}
proc DumpJson*(this: Geom_Transformation; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Transformation.hxx".}