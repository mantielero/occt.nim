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


proc newGeomTransformation*(): GeomTransformation {.cdecl, constructor,
    importcpp: "Geom_Transformation(@)", dynlib: tkg3d.}
proc newGeomTransformation*(t: Trsf): GeomTransformation {.cdecl, constructor,
    importcpp: "Geom_Transformation(@)", dynlib: tkg3d.}
proc setMirror*(this: var GeomTransformation; thePnt: Pnt) {.cdecl,
    importcpp: "SetMirror", dynlib: tkg3d.}
proc setMirror*(this: var GeomTransformation; theA1: Ax1) {.cdecl,
    importcpp: "SetMirror", dynlib: tkg3d.}
proc setMirror*(this: var GeomTransformation; theA2: Ax2) {.cdecl,
    importcpp: "SetMirror", dynlib: tkg3d.}
proc setRotation*(this: var GeomTransformation; theA1: Ax1; theAng: cfloat) {.cdecl,
    importcpp: "SetRotation", dynlib: tkg3d.}
proc setScale*(this: var GeomTransformation; thePnt: Pnt; theScale: cfloat) {.cdecl,
    importcpp: "SetScale", dynlib: tkg3d.}
proc setTransformation*(this: var GeomTransformation; theFromSystem1: Ax3;
                       theToSystem2: Ax3) {.cdecl, importcpp: "SetTransformation",
    dynlib: tkg3d.}
proc setTransformation*(this: var GeomTransformation; theToSystem: Ax3) {.cdecl,
    importcpp: "SetTransformation", dynlib: tkg3d.}
proc setTranslation*(this: var GeomTransformation; theVec: Vec) {.cdecl,
    importcpp: "SetTranslation", dynlib: tkg3d.}
proc setTranslation*(this: var GeomTransformation; p1: Pnt; p2: Pnt) {.cdecl,
    importcpp: "SetTranslation", dynlib: tkg3d.}
proc setTrsf*(this: var GeomTransformation; theTrsf: Trsf) {.cdecl,
    importcpp: "SetTrsf", dynlib: tkg3d.}
proc isNegative*(this: GeomTransformation): bool {.noSideEffect, cdecl,
    importcpp: "IsNegative", dynlib: tkg3d.}
proc form*(this: GeomTransformation): TrsfForm {.noSideEffect, cdecl,
    importcpp: "Form", dynlib: tkg3d.}
proc scaleFactor*(this: GeomTransformation): cfloat {.noSideEffect, cdecl,
    importcpp: "ScaleFactor", dynlib: tkg3d.}
proc trsf*(this: GeomTransformation): Trsf {.noSideEffect, cdecl, importcpp: "Trsf",
    dynlib: tkg3d.}
proc value*(this: GeomTransformation; theRow: cint; theCol: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkg3d.}
proc invert*(this: var GeomTransformation) {.cdecl, importcpp: "Invert", dynlib: tkg3d.}
proc inverted*(this: GeomTransformation): Handle[GeomTransformation] {.noSideEffect,
    cdecl, importcpp: "Inverted", dynlib: tkg3d.}
proc multiplied*(this: GeomTransformation; other: Handle[GeomTransformation]): Handle[
    GeomTransformation] {.noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkg3d.}
proc multiply*(this: var GeomTransformation; theOther: Handle[GeomTransformation]) {.
    cdecl, importcpp: "Multiply", dynlib: tkg3d.}
proc power*(this: var GeomTransformation; n: cint) {.cdecl, importcpp: "Power",
    dynlib: tkg3d.}
proc powered*(this: GeomTransformation; n: cint): Handle[GeomTransformation] {.
    noSideEffect, cdecl, importcpp: "Powered", dynlib: tkg3d.}
proc preMultiply*(this: var GeomTransformation; other: Handle[GeomTransformation]) {.
    cdecl, importcpp: "PreMultiply", dynlib: tkg3d.}
proc transforms*(this: GeomTransformation; theX: var cfloat; theY: var cfloat;
                theZ: var cfloat) {.noSideEffect, cdecl, importcpp: "Transforms",
                                 dynlib: tkg3d.}
proc copy*(this: GeomTransformation): Handle[GeomTransformation] {.noSideEffect,
    cdecl, importcpp: "Copy", dynlib: tkg3d.}
proc dumpJson*(this: GeomTransformation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg3d.}