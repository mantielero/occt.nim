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

type
  Trsf* {.importcpp: "gp_Trsf", header: "gp_Trsf.hxx", bycopy.} = object ## ! Returns the identity transformation.
                                                                 ## ! Makes
                                                                 ## orthogonalization of "matrix"


proc newTrsf*(): Trsf {.cdecl, constructor, importcpp: "gp_Trsf(@)", dynlib: tkmath.}
proc newTrsf*(t: Trsf2d): Trsf {.cdecl, constructor, importcpp: "gp_Trsf(@)",
                             dynlib: tkmath.}
proc setMirror*(this: var Trsf; p: Pnt) {.cdecl, importcpp: "SetMirror", dynlib: tkmath.}
proc setMirror*(this: var Trsf; a1: Ax1) {.cdecl, importcpp: "SetMirror", dynlib: tkmath.}
proc setMirror*(this: var Trsf; a2: Ax2) {.cdecl, importcpp: "SetMirror", dynlib: tkmath.}
proc setRotation*(this: var Trsf; a1: Ax1; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", dynlib: tkmath.}
proc setRotation*(this: var Trsf; r: Quaternion) {.cdecl, importcpp: "SetRotation",
    dynlib: tkmath.}
proc setRotationPart*(this: var Trsf; r: Quaternion) {.cdecl,
    importcpp: "SetRotationPart", dynlib: tkmath.}
proc setScale*(this: var Trsf; p: Pnt; s: cfloat) {.cdecl, importcpp: "SetScale",
    dynlib: tkmath.}
proc setDisplacement*(this: var Trsf; fromSystem1: Ax3; toSystem2: Ax3) {.cdecl,
    importcpp: "SetDisplacement", dynlib: tkmath.}
proc setTransformation*(this: var Trsf; fromSystem1: Ax3; toSystem2: Ax3) {.cdecl,
    importcpp: "SetTransformation", dynlib: tkmath.}
proc setTransformation*(this: var Trsf; toSystem: Ax3) {.cdecl,
    importcpp: "SetTransformation", dynlib: tkmath.}
proc setTransformation*(this: var Trsf; r: Quaternion; t: Vec) {.cdecl,
    importcpp: "SetTransformation", dynlib: tkmath.}
proc setTranslation*(this: var Trsf; v: Vec) {.cdecl, importcpp: "SetTranslation",
    dynlib: tkmath.}
proc setTranslation*(this: var Trsf; p1: Pnt; p2: Pnt) {.cdecl,
    importcpp: "SetTranslation", dynlib: tkmath.}
proc setTranslationPart*(this: var Trsf; v: Vec) {.cdecl,
    importcpp: "SetTranslationPart", dynlib: tkmath.}
proc setScaleFactor*(this: var Trsf; s: cfloat) {.cdecl, importcpp: "SetScaleFactor",
    dynlib: tkmath.}
proc setForm*(this: var Trsf; p: TrsfForm) {.cdecl, importcpp: "SetForm", dynlib: tkmath.}
proc setValues*(this: var Trsf; a11: cfloat; a12: cfloat; a13: cfloat; a14: cfloat;
               a21: cfloat; a22: cfloat; a23: cfloat; a24: cfloat; a31: cfloat;
               a32: cfloat; a33: cfloat; a34: cfloat) {.cdecl, importcpp: "SetValues",
    dynlib: tkmath.}
proc isNegative*(this: Trsf): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                 dynlib: tkmath.}
proc form*(this: Trsf): TrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                               dynlib: tkmath.}
proc scaleFactor*(this: Trsf): cfloat {.noSideEffect, cdecl, importcpp: "ScaleFactor",
                                    dynlib: tkmath.}
proc translationPart*(this: Trsf): Xyz {.noSideEffect, cdecl,
                                     importcpp: "TranslationPart", dynlib: tkmath.}
proc getRotation*(this: Trsf; theAxis: var Xyz; theAngle: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "GetRotation", dynlib: tkmath.}
proc getRotation*(this: Trsf): Quaternion {.noSideEffect, cdecl,
                                        importcpp: "GetRotation", dynlib: tkmath.}
proc vectorialPart*(this: Trsf): Mat {.noSideEffect, cdecl,
                                   importcpp: "VectorialPart", dynlib: tkmath.}
proc hVectorialPart*(this: Trsf): Mat {.noSideEffect, cdecl,
                                    importcpp: "HVectorialPart", dynlib: tkmath.}
proc value*(this: Trsf; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc invert*(this: var Trsf) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: Trsf): Trsf {.noSideEffect, cdecl, importcpp: "Inverted",
                               dynlib: tkmath.}
proc multiplied*(this: Trsf; t: Trsf): Trsf {.noSideEffect, cdecl,
                                        importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Trsf; t: Trsf): Trsf {.noSideEffect, cdecl, importcpp: "(# * #)",
                                 dynlib: tkmath.}
proc multiply*(this: var Trsf; t: Trsf) {.cdecl, importcpp: "Multiply", dynlib: tkmath.}
proc `*=`*(this: var Trsf; t: Trsf) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc preMultiply*(this: var Trsf; t: Trsf) {.cdecl, importcpp: "PreMultiply",
                                       dynlib: tkmath.}
proc power*(this: var Trsf; n: cint) {.cdecl, importcpp: "Power", dynlib: tkmath.}
proc powered*(this: Trsf; n: cint): Trsf {.noSideEffect, cdecl, importcpp: "Powered",
                                     dynlib: tkmath.}
proc transforms*(this: Trsf; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Transforms", dynlib: tkmath.}
proc transforms*(this: Trsf; coord: var Xyz) {.noSideEffect, cdecl,
    importcpp: "Transforms", dynlib: tkmath.}
proc getMat4*[T](this: Trsf; theMat: var NCollectionMat4[T]) {.noSideEffect, cdecl,
    importcpp: "GetMat4", dynlib: tkmath.}
proc dumpJson*(this: Trsf; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var Trsf; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", dynlib: tkmath.}