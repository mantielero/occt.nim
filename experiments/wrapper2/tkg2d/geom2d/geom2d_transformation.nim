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
    importcpp: "Geom2d_Transformation(@)", dynlib: tkernel.}
proc newGeom2dTransformation*(t: Trsf2d): Geom2dTransformation {.cdecl, constructor,
    importcpp: "Geom2d_Transformation(@)", dynlib: tkernel.}
proc setMirror*(this: var Geom2dTransformation; p: Pnt2d) {.cdecl,
    importcpp: "SetMirror", dynlib: tkernel.}
proc setMirror*(this: var Geom2dTransformation; a: Ax2d) {.cdecl,
    importcpp: "SetMirror", dynlib: tkernel.}
proc setRotation*(this: var Geom2dTransformation; p: Pnt2d; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", dynlib: tkernel.}
proc setScale*(this: var Geom2dTransformation; p: Pnt2d; s: cfloat) {.cdecl,
    importcpp: "SetScale", dynlib: tkernel.}
proc setTransformation*(this: var Geom2dTransformation; fromSystem1: Ax2d;
                       toSystem2: Ax2d) {.cdecl, importcpp: "SetTransformation",
                                        dynlib: tkernel.}
proc setTransformation*(this: var Geom2dTransformation; toSystem: Ax2d) {.cdecl,
    importcpp: "SetTransformation", dynlib: tkernel.}
proc setTranslation*(this: var Geom2dTransformation; v: Vec2d) {.cdecl,
    importcpp: "SetTranslation", dynlib: tkernel.}
proc setTranslation*(this: var Geom2dTransformation; p1: Pnt2d; p2: Pnt2d) {.cdecl,
    importcpp: "SetTranslation", dynlib: tkernel.}
proc setTrsf2d*(this: var Geom2dTransformation; t: Trsf2d) {.cdecl,
    importcpp: "SetTrsf2d", dynlib: tkernel.}
proc isNegative*(this: Geom2dTransformation): bool {.noSideEffect, cdecl,
    importcpp: "IsNegative", dynlib: tkernel.}
proc form*(this: Geom2dTransformation): TrsfForm {.noSideEffect, cdecl,
    importcpp: "Form", dynlib: tkernel.}
proc scaleFactor*(this: Geom2dTransformation): cfloat {.noSideEffect, cdecl,
    importcpp: "ScaleFactor", dynlib: tkernel.}
proc trsf2d*(this: Geom2dTransformation): Trsf2d {.noSideEffect, cdecl,
    importcpp: "Trsf2d", dynlib: tkernel.}
proc value*(this: Geom2dTransformation; row: cint; col: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Value", dynlib: tkernel.}
proc invert*(this: var Geom2dTransformation) {.cdecl, importcpp: "Invert",
    dynlib: tkernel.}
proc inverted*(this: Geom2dTransformation): Handle[Geom2dTransformation] {.
    noSideEffect, cdecl, importcpp: "Inverted", dynlib: tkernel.}
proc multiplied*(this: Geom2dTransformation; other: Handle[Geom2dTransformation]): Handle[
    Geom2dTransformation] {.noSideEffect, cdecl, importcpp: "Multiplied",
                           dynlib: tkernel.}
proc `*`*(this: Geom2dTransformation; other: Handle[Geom2dTransformation]): Handle[
    Geom2dTransformation] {.noSideEffect, cdecl, importcpp: "(# * #)",
                           dynlib: tkernel.}
proc multiply*(this: var Geom2dTransformation; other: Handle[Geom2dTransformation]) {.
    cdecl, importcpp: "Multiply", dynlib: tkernel.}
proc `*=`*(this: var Geom2dTransformation; other: Handle[Geom2dTransformation]) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc power*(this: var Geom2dTransformation; n: cint) {.cdecl, importcpp: "Power",
    dynlib: tkernel.}
proc powered*(this: Geom2dTransformation; n: cint): Handle[Geom2dTransformation] {.
    noSideEffect, cdecl, importcpp: "Powered", dynlib: tkernel.}
proc preMultiply*(this: var Geom2dTransformation;
                 other: Handle[Geom2dTransformation]) {.cdecl,
    importcpp: "PreMultiply", dynlib: tkernel.}
proc transforms*(this: Geom2dTransformation; x: var cfloat; y: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Transforms", dynlib: tkernel.}
proc copy*(this: Geom2dTransformation): Handle[Geom2dTransformation] {.noSideEffect,
    cdecl, importcpp: "Copy", dynlib: tkernel.}