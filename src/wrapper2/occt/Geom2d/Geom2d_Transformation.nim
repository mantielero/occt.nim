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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Transformation"
discard "forward decl of Geom2d_Transformation"
type
  HandleGeom2dTransformation* = Handle[Geom2dTransformation]

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
  Geom2dTransformation* {.importcpp: "Geom2d_Transformation",
                         header: "Geom2d_Transformation.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## identity
                                                                                              ## transformation.
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD


proc constructGeom2dTransformation*(): Geom2dTransformation {.constructor,
    importcpp: "Geom2d_Transformation(@)", header: "Geom2d_Transformation.hxx".}
proc constructGeom2dTransformation*(t: GpTrsf2d): Geom2dTransformation {.
    constructor, importcpp: "Geom2d_Transformation(@)",
    header: "Geom2d_Transformation.hxx".}
proc setMirror*(this: var Geom2dTransformation; p: GpPnt2d) {.importcpp: "SetMirror",
    header: "Geom2d_Transformation.hxx".}
proc setMirror*(this: var Geom2dTransformation; a: GpAx2d) {.importcpp: "SetMirror",
    header: "Geom2d_Transformation.hxx".}
proc setRotation*(this: var Geom2dTransformation; p: GpPnt2d; ang: StandardReal) {.
    importcpp: "SetRotation", header: "Geom2d_Transformation.hxx".}
proc setScale*(this: var Geom2dTransformation; p: GpPnt2d; s: StandardReal) {.
    importcpp: "SetScale", header: "Geom2d_Transformation.hxx".}
proc setTransformation*(this: var Geom2dTransformation; fromSystem1: GpAx2d;
                       toSystem2: GpAx2d) {.importcpp: "SetTransformation",
    header: "Geom2d_Transformation.hxx".}
proc setTransformation*(this: var Geom2dTransformation; toSystem: GpAx2d) {.
    importcpp: "SetTransformation", header: "Geom2d_Transformation.hxx".}
proc setTranslation*(this: var Geom2dTransformation; v: GpVec2d) {.
    importcpp: "SetTranslation", header: "Geom2d_Transformation.hxx".}
proc setTranslation*(this: var Geom2dTransformation; p1: GpPnt2d; p2: GpPnt2d) {.
    importcpp: "SetTranslation", header: "Geom2d_Transformation.hxx".}
proc setTrsf2d*(this: var Geom2dTransformation; t: GpTrsf2d) {.importcpp: "SetTrsf2d",
    header: "Geom2d_Transformation.hxx".}
proc isNegative*(this: Geom2dTransformation): StandardBoolean {.noSideEffect,
    importcpp: "IsNegative", header: "Geom2d_Transformation.hxx".}
proc form*(this: Geom2dTransformation): GpTrsfForm {.noSideEffect, importcpp: "Form",
    header: "Geom2d_Transformation.hxx".}
proc scaleFactor*(this: Geom2dTransformation): StandardReal {.noSideEffect,
    importcpp: "ScaleFactor", header: "Geom2d_Transformation.hxx".}
proc trsf2d*(this: Geom2dTransformation): GpTrsf2d {.noSideEffect,
    importcpp: "Trsf2d", header: "Geom2d_Transformation.hxx".}
proc value*(this: Geom2dTransformation; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Value", header: "Geom2d_Transformation.hxx".}
proc invert*(this: var Geom2dTransformation) {.importcpp: "Invert",
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

proc `*=`*(this: var Geom2dTransformation; other: Handle[Geom2dTransformation]) {.
    importcpp: "(# *= #)", header: "Geom2d_Transformation.hxx".}
proc power*(this: var Geom2dTransformation; n: StandardInteger) {.importcpp: "Power",
    header: "Geom2d_Transformation.hxx".}
proc powered*(this: Geom2dTransformation; n: StandardInteger): Handle[
    Geom2dTransformation] {.noSideEffect, importcpp: "Powered",
                           header: "Geom2d_Transformation.hxx".}
proc preMultiply*(this: var Geom2dTransformation;
                 other: Handle[Geom2dTransformation]) {.importcpp: "PreMultiply",
    header: "Geom2d_Transformation.hxx".}
proc transforms*(this: Geom2dTransformation; x: var StandardReal; y: var StandardReal) {.
    noSideEffect, importcpp: "Transforms", header: "Geom2d_Transformation.hxx".}
proc copy*(this: Geom2dTransformation): Handle[Geom2dTransformation] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Transformation.hxx".}
type
  Geom2dTransformationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Geom2d_Transformation::get_type_name(@)",
                            header: "Geom2d_Transformation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_Transformation::get_type_descriptor(@)",
    header: "Geom2d_Transformation.hxx".}
proc dynamicType*(this: Geom2dTransformation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Transformation.hxx".}

