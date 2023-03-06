{.experimental: "callOperator".}
import gp_types

import ../ncollection/ncollection_types
import ../standard/standard_types
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Quaternion"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Vec"
when defined(SetForm):
  discard
## ! Defines a non-persistent transformation in 3D space.
## ! The following transformations are implemented :
## ! . Translation, Rotation, Scale
## ! . Symmetry with respect to a point, a line, a plane.
## ! Complex transformations can be obtained by combining the
## ! previous elementary transformations using the method
## ! Multiply.
## ! The transformations can be represented as follow :
## !
## ! V1   V2   V3    T       XYZ        XYZ
## ! | a11  a12  a13   a14 |   | x |      | x'|
## ! | a21  a22  a23   a24 |   | y |      | y'|
## ! | a31  a32  a33   a34 |   | z |   =  | z'|
## ! |  0    0    0     1  |   | 1 |      | 1 |
## !
## ! where {V1, V2, V3} defines the vectorial part of the
## ! transformation and T defines the translation part of the
## ! transformation.
## ! This transformation never change the nature of the objects.


proc trsf*(): gp_Trsf {.cdecl, constructor, importcpp: "gp_Trsf(@)", header: "gp_Trsf.hxx".}
proc trsf*(t: gp_Trsf2d): gp_Trsf {.cdecl, constructor, importcpp: "gp_Trsf(@)",
                             header: "gp_Trsf.hxx".}
proc setMirror*(this: var gp_Trsf; p: gp_Pnt) {.cdecl, importcpp: "SetMirror", header: "gp_Trsf.hxx".}
proc setMirror*(this: var gp_Trsf; a1: gp_Ax1) {.cdecl, importcpp: "SetMirror", header: "gp_Trsf.hxx".}
proc setMirror*(this: var gp_Trsf; a2: gp_Ax2) {.cdecl, importcpp: "SetMirror", header: "gp_Trsf.hxx".}
proc setRotation*(this: var gp_Trsf; a1: gp_Ax1; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "gp_Trsf.hxx".}
proc setRotation*(this: var gp_Trsf; r: gp_Quaternion) {.cdecl, importcpp: "SetRotation",
    header: "gp_Trsf.hxx".}
proc setRotationPart*(this: var gp_Trsf; r: gp_Quaternion) {.cdecl,
    importcpp: "SetRotationPart", header: "gp_Trsf.hxx".}
proc setScale*(this: var gp_Trsf; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "SetScale",
    header: "gp_Trsf.hxx".}
proc setDisplacement*(this: var gp_Trsf; fromSystem1: gp_Ax3; toSystem2: gp_Ax3) {.cdecl,
    importcpp: "SetDisplacement", header: "gp_Trsf.hxx".}
proc setTransformation*(this: var gp_Trsf; fromSystem1: gp_Ax3; toSystem2: gp_Ax3) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc setTransformation*(this: var gp_Trsf; toSystem: gp_Ax3) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc setTransformation*(this: var gp_Trsf; r: gp_Quaternion; t: gp_Vec) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc setTranslation*(this: var gp_Trsf; v: gp_Vec) {.cdecl, importcpp: "SetTranslation",
    header: "gp_Trsf.hxx".}
proc setTranslation*(this: var gp_Trsf; p1: gp_Pnt; p2: gp_Pnt) {.cdecl,
    importcpp: "SetTranslation", header: "gp_Trsf.hxx".}
proc setTranslationPart*(this: var gp_Trsf; v: gp_Vec) {.cdecl,
    importcpp: "SetTranslationPart", header: "gp_Trsf.hxx".}
proc setScaleFactor*(this: var gp_Trsf; s: cfloat) {.cdecl, importcpp: "SetScaleFactor",
    header: "gp_Trsf.hxx".}
proc setForm*(this: var gp_Trsf; p: gp_TrsfForm) {.cdecl, importcpp: "SetForm", header: "gp_Trsf.hxx".}
proc setValues*(this: var gp_Trsf; a11: cfloat; a12: cfloat; a13: cfloat; a14: cfloat;
               a21: cfloat; a22: cfloat; a23: cfloat; a24: cfloat; a31: cfloat;
               a32: cfloat; a33: cfloat; a34: cfloat) {.cdecl, importcpp: "SetValues",
    header: "gp_Trsf.hxx".}
proc isNegative*(this: gp_Trsf): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                 header: "gp_Trsf.hxx".}
proc form*(this: gp_Trsf): gp_TrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                               header: "gp_Trsf.hxx".}
proc scaleFactor*(this: gp_Trsf): cfloat {.noSideEffect, cdecl, importcpp: "ScaleFactor",
                                    header: "gp_Trsf.hxx".}
proc translationPart*(this: gp_Trsf): gp_Xyz {.noSideEffect, cdecl,
                                     importcpp: "TranslationPart", header: "gp_Trsf.hxx".}
proc getRotation*(this: gp_Trsf; theAxis: var gp_Xyz; theAngle: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "GetRotation", header: "gp_Trsf.hxx".}
proc getRotation*(this: gp_Trsf): gp_Quaternion {.noSideEffect, cdecl,
                                        importcpp: "GetRotation", header: "gp_Trsf.hxx".}
proc vectorialPart*(this: gp_Trsf): gp_Mat {.noSideEffect, cdecl,
                                   importcpp: "VectorialPart", header: "gp_Trsf.hxx".}
proc hVectorialPart*(this: gp_Trsf): gp_Mat {.noSideEffect, cdecl,
                                    importcpp: "HVectorialPart", header: "gp_Trsf.hxx".}
proc value*(this: gp_Trsf; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Trsf.hxx".}
proc invert*(this: var gp_Trsf) {.cdecl, importcpp: "Invert", header: "gp_Trsf.hxx".}
proc inverted*(this: gp_Trsf): gp_Trsf {.noSideEffect, cdecl, importcpp: "Inverted",
                               header: "gp_Trsf.hxx".}
proc multiplied*(this: gp_Trsf; t: gp_Trsf): gp_Trsf {.noSideEffect, cdecl,
                                        importcpp: "Multiplied", header: "gp_Trsf.hxx".}
proc `*`*(this: gp_Trsf; t: gp_Trsf): gp_Trsf {.noSideEffect, cdecl, importcpp: "(# * #)",
                                 header: "gp_Trsf.hxx".}
proc multiply*(this: var gp_Trsf; t: gp_Trsf) {.cdecl, importcpp: "Multiply", header: "gp_Trsf.hxx".}
proc `*=`*(this: var gp_Trsf; t: gp_Trsf) {.cdecl, importcpp: "(# *= #)", header: "gp_Trsf.hxx".}
proc preMultiply*(this: var gp_Trsf; t: gp_Trsf) {.cdecl, importcpp: "PreMultiply",
                                       header: "gp_Trsf.hxx".}
proc power*(this: var gp_Trsf; n: cint) {.cdecl, importcpp: "Power", header: "gp_Trsf.hxx".}
proc powered*(this: gp_Trsf; n: cint): gp_Trsf {.noSideEffect, cdecl, importcpp: "Powered",
                                     header: "gp_Trsf.hxx".}
proc transforms*(this: gp_Trsf; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Transforms", header: "gp_Trsf.hxx".}
proc transforms*(this: gp_Trsf; coord: var gp_Xyz) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_Trsf.hxx".}
proc getMat4*[T](this: gp_Trsf; theMat: var NCollectionMat4[T]) {.noSideEffect, cdecl,
    importcpp: "GetMat4", header: "gp_Trsf.hxx".}
proc dumpJson*(this: gp_Trsf; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Trsf.hxx".}
proc initFromJson*(this: var gp_Trsf; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Trsf.hxx".}
