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


proc newGeom2dTransformation*(): Geom2dTransformation {.cdecl, constructor,
    importcpp: "Geom2d_Transformation(@)", header: "Geom2d_Transformation.hxx".}
proc newGeom2dTransformation*(t: Trsf2dObj): Geom2dTransformation {.cdecl, constructor,
    importcpp: "Geom2d_Transformation(@)", header: "Geom2d_Transformation.hxx".}
proc setMirror*(this: var Geom2dTransformation; p: Pnt2dObj) {.cdecl,
    importcpp: "SetMirror", header: "Geom2d_Transformation.hxx".}
proc setMirror*(this: var Geom2dTransformation; a: Ax2dObj) {.cdecl,
    importcpp: "SetMirror", header: "Geom2d_Transformation.hxx".}
proc setRotation*(this: var Geom2dTransformation; p: Pnt2dObj; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "Geom2d_Transformation.hxx".}
proc setScale*(this: var Geom2dTransformation; p: Pnt2dObj; s: cfloat) {.cdecl,
    importcpp: "SetScale", header: "Geom2d_Transformation.hxx".}
proc setTransformation*(this: var Geom2dTransformation; fromSystem1: Ax2dObj;
                       toSystem2: Ax2dObj) {.cdecl, importcpp: "SetTransformation",
                                        header: "Geom2d_Transformation.hxx".}
proc setTransformation*(this: var Geom2dTransformation; toSystem: Ax2dObj) {.cdecl,
    importcpp: "SetTransformation", header: "Geom2d_Transformation.hxx".}
proc setTranslation*(this: var Geom2dTransformation; v: Vec2dObj) {.cdecl,
    importcpp: "SetTranslation", header: "Geom2d_Transformation.hxx".}
proc setTranslation*(this: var Geom2dTransformation; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl,
    importcpp: "SetTranslation", header: "Geom2d_Transformation.hxx".}
proc setTrsf2d*(this: var Geom2dTransformation; t: Trsf2dObj) {.cdecl,
    importcpp: "SetTrsf2d", header: "Geom2d_Transformation.hxx".}
proc isNegative*(this: Geom2dTransformation): bool {.noSideEffect, cdecl,
    importcpp: "IsNegative", header: "Geom2d_Transformation.hxx".}
proc form*(this: Geom2dTransformation): TrsfFormObj {.noSideEffect, cdecl,
    importcpp: "Form", header: "Geom2d_Transformation.hxx".}
proc scaleFactor*(this: Geom2dTransformation): cfloat {.noSideEffect, cdecl,
    importcpp: "ScaleFactor", header: "Geom2d_Transformation.hxx".}
proc trsf2d*(this: Geom2dTransformation): Trsf2dObj {.noSideEffect, cdecl,
    importcpp: "Trsf2d", header: "Geom2d_Transformation.hxx".}
proc value*(this: Geom2dTransformation; row: cint; col: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Value", header: "Geom2d_Transformation.hxx".}
proc invert*(this: var Geom2dTransformation) {.cdecl, importcpp: "Invert",
    header: "Geom2d_Transformation.hxx".}
proc inverted*(this: Geom2dTransformation): Handle[Geom2dTransformation] {.
    noSideEffect, cdecl, importcpp: "Inverted", header: "Geom2d_Transformation.hxx".}
proc multiplied*(this: Geom2dTransformation; other: Handle[Geom2dTransformation]): Handle[
    Geom2dTransformation] {.noSideEffect, cdecl, importcpp: "Multiplied",
                           header: "Geom2d_Transformation.hxx".}
proc `*`*(this: Geom2dTransformation; other: Handle[Geom2dTransformation]): Handle[
    Geom2dTransformation] {.noSideEffect, cdecl, importcpp: "(# * #)", header: "Geom2d_Transformation.hxx".}
proc multiply*(this: var Geom2dTransformation; other: Handle[Geom2dTransformation]) {.
    cdecl, importcpp: "Multiply", header: "Geom2d_Transformation.hxx".}
proc `*=`*(this: var Geom2dTransformation; other: Handle[Geom2dTransformation]) {.
    cdecl, importcpp: "(# *= #)", header: "Geom2d_Transformation.hxx".}
proc power*(this: var Geom2dTransformation; n: cint) {.cdecl, importcpp: "Power",
    header: "Geom2d_Transformation.hxx".}
proc powered*(this: Geom2dTransformation; n: cint): Handle[Geom2dTransformation] {.
    noSideEffect, cdecl, importcpp: "Powered", header: "Geom2d_Transformation.hxx".}
proc preMultiply*(this: var Geom2dTransformation;
                 other: Handle[Geom2dTransformation]) {.cdecl,
    importcpp: "PreMultiply", header: "Geom2d_Transformation.hxx".}
proc transforms*(this: Geom2dTransformation; x: var cfloat; y: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Transforms", header: "Geom2d_Transformation.hxx".}
proc copy*(this: Geom2dTransformation): Handle[Geom2dTransformation] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "Geom2d_Transformation.hxx".}