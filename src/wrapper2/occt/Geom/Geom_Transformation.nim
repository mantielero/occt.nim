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

discard "forward decl of Geom_Transformation"
type
  HandleGeomTransformation* = Handle[GeomTransformation]

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
  GeomTransformation* {.importcpp: "Geom_Transformation",
                       header: "Geom_Transformation.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## identity
                                                                                          ## transformation.
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD

  GeomTransformationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Geom_Transformation::get_type_name(@)",
                            header: "Geom_Transformation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Transformation::get_type_descriptor(@)",
    header: "Geom_Transformation.hxx".}
proc dynamicType*(this: GeomTransformation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Transformation.hxx".}
proc constructGeomTransformation*(): GeomTransformation {.constructor,
    importcpp: "Geom_Transformation(@)", header: "Geom_Transformation.hxx".}
proc constructGeomTransformation*(t: GpTrsf): GeomTransformation {.constructor,
    importcpp: "Geom_Transformation(@)", header: "Geom_Transformation.hxx".}
proc setMirror*(this: var GeomTransformation; thePnt: GpPnt) {.importcpp: "SetMirror",
    header: "Geom_Transformation.hxx".}
proc setMirror*(this: var GeomTransformation; theA1: GpAx1) {.importcpp: "SetMirror",
    header: "Geom_Transformation.hxx".}
proc setMirror*(this: var GeomTransformation; theA2: GpAx2) {.importcpp: "SetMirror",
    header: "Geom_Transformation.hxx".}
proc setRotation*(this: var GeomTransformation; theA1: GpAx1; theAng: StandardReal) {.
    importcpp: "SetRotation", header: "Geom_Transformation.hxx".}
proc setScale*(this: var GeomTransformation; thePnt: GpPnt; theScale: StandardReal) {.
    importcpp: "SetScale", header: "Geom_Transformation.hxx".}
proc setTransformation*(this: var GeomTransformation; theFromSystem1: GpAx3;
                       theToSystem2: GpAx3) {.importcpp: "SetTransformation",
    header: "Geom_Transformation.hxx".}
proc setTransformation*(this: var GeomTransformation; theToSystem: GpAx3) {.
    importcpp: "SetTransformation", header: "Geom_Transformation.hxx".}
proc setTranslation*(this: var GeomTransformation; theVec: GpVec) {.
    importcpp: "SetTranslation", header: "Geom_Transformation.hxx".}
proc setTranslation*(this: var GeomTransformation; p1: GpPnt; p2: GpPnt) {.
    importcpp: "SetTranslation", header: "Geom_Transformation.hxx".}
proc setTrsf*(this: var GeomTransformation; theTrsf: GpTrsf) {.importcpp: "SetTrsf",
    header: "Geom_Transformation.hxx".}
proc isNegative*(this: GeomTransformation): StandardBoolean {.noSideEffect,
    importcpp: "IsNegative", header: "Geom_Transformation.hxx".}
proc form*(this: GeomTransformation): GpTrsfForm {.noSideEffect, importcpp: "Form",
    header: "Geom_Transformation.hxx".}
proc scaleFactor*(this: GeomTransformation): StandardReal {.noSideEffect,
    importcpp: "ScaleFactor", header: "Geom_Transformation.hxx".}
proc trsf*(this: GeomTransformation): GpTrsf {.noSideEffect, importcpp: "Trsf",
    header: "Geom_Transformation.hxx".}
proc value*(this: GeomTransformation; theRow: StandardInteger;
           theCol: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Value", header: "Geom_Transformation.hxx".}
proc invert*(this: var GeomTransformation) {.importcpp: "Invert",
    header: "Geom_Transformation.hxx".}
## !!!Ignored construct:  :: handle < Geom_Transformation > [end of template] Inverted ( ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_Transformation > [end of template] Multiplied ( const opencascade :: handle < Geom_Transformation > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

proc multiply*(this: var GeomTransformation; theOther: Handle[GeomTransformation]) {.
    importcpp: "Multiply", header: "Geom_Transformation.hxx".}
proc power*(this: var GeomTransformation; n: StandardInteger) {.importcpp: "Power",
    header: "Geom_Transformation.hxx".}
proc powered*(this: GeomTransformation; n: StandardInteger): Handle[
    GeomTransformation] {.noSideEffect, importcpp: "Powered",
                         header: "Geom_Transformation.hxx".}
proc preMultiply*(this: var GeomTransformation; other: Handle[GeomTransformation]) {.
    importcpp: "PreMultiply", header: "Geom_Transformation.hxx".}
proc transforms*(this: GeomTransformation; theX: var StandardReal;
                theY: var StandardReal; theZ: var StandardReal) {.noSideEffect,
    importcpp: "Transforms", header: "Geom_Transformation.hxx".}
proc copy*(this: GeomTransformation): Handle[GeomTransformation] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Transformation.hxx".}
proc dumpJson*(this: GeomTransformation; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Transformation.hxx".}

