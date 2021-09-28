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
  Trsf* {.importcpp: "gp_Trsf", header: "gp_Trsf.hxx", bycopy.} = object ## ! Makes
                                                                 ## orthogonalization of "matrix"


proc `new`*(this: var Trsf; theSize: csize_t): pointer {.
    importcpp: "gp_Trsf::operator new", header: "gp_Trsf.hxx".}
proc `delete`*(this: var Trsf; theAddress: pointer) {.
    importcpp: "gp_Trsf::operator delete", header: "gp_Trsf.hxx".}
proc `new[]`*(this: var Trsf; theSize: csize_t): pointer {.
    importcpp: "gp_Trsf::operator new[]", header: "gp_Trsf.hxx".}
proc `delete[]`*(this: var Trsf; theAddress: pointer) {.
    importcpp: "gp_Trsf::operator delete[]", header: "gp_Trsf.hxx".}
proc `new`*(this: var Trsf; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Trsf::operator new", header: "gp_Trsf.hxx".}
proc `delete`*(this: var Trsf; a2: pointer; a3: pointer) {.
    importcpp: "gp_Trsf::operator delete", header: "gp_Trsf.hxx".}
proc constructTrsf*(): Trsf {.constructor, importcpp: "gp_Trsf(@)",
                           header: "gp_Trsf.hxx".}
proc constructTrsf*(t: Trsf2d): Trsf {.constructor, importcpp: "gp_Trsf(@)",
                                   header: "gp_Trsf.hxx".}
proc setMirror*(this: var Trsf; p: Pnt) {.importcpp: "SetMirror", header: "gp_Trsf.hxx".}
proc setMirror*(this: var Trsf; a1: Ax1) {.importcpp: "SetMirror", header: "gp_Trsf.hxx".}
proc setMirror*(this: var Trsf; a2: Ax2) {.importcpp: "SetMirror", header: "gp_Trsf.hxx".}
proc setRotation*(this: var Trsf; a1: Ax1; ang: StandardReal) {.
    importcpp: "SetRotation", header: "gp_Trsf.hxx".}
proc setRotation*(this: var Trsf; r: Quaternion) {.importcpp: "SetRotation",
    header: "gp_Trsf.hxx".}
proc setRotationPart*(this: var Trsf; r: Quaternion) {.importcpp: "SetRotationPart",
    header: "gp_Trsf.hxx".}
proc setScale*(this: var Trsf; p: Pnt; s: StandardReal) {.importcpp: "SetScale",
    header: "gp_Trsf.hxx".}
proc setDisplacement*(this: var Trsf; fromSystem1: Ax3; toSystem2: Ax3) {.
    importcpp: "SetDisplacement", header: "gp_Trsf.hxx".}
proc setTransformation*(this: var Trsf; fromSystem1: Ax3; toSystem2: Ax3) {.
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc setTransformation*(this: var Trsf; toSystem: Ax3) {.
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc setTransformation*(this: var Trsf; r: Quaternion; t: Vec) {.
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc setTranslation*(this: var Trsf; v: Vec) {.importcpp: "SetTranslation",
    header: "gp_Trsf.hxx".}
proc setTranslation*(this: var Trsf; p1: Pnt; p2: Pnt) {.importcpp: "SetTranslation",
    header: "gp_Trsf.hxx".}
proc setTranslationPart*(this: var Trsf; v: Vec) {.importcpp: "SetTranslationPart",
    header: "gp_Trsf.hxx".}
proc setScaleFactor*(this: var Trsf; s: StandardReal) {.importcpp: "SetScaleFactor",
    header: "gp_Trsf.hxx".}
proc setForm*(this: var Trsf; p: TrsfForm) {.importcpp: "SetForm", header: "gp_Trsf.hxx".}
proc setValues*(this: var Trsf; a11: StandardReal; a12: StandardReal; a13: StandardReal;
               a14: StandardReal; a21: StandardReal; a22: StandardReal;
               a23: StandardReal; a24: StandardReal; a31: StandardReal;
               a32: StandardReal; a33: StandardReal; a34: StandardReal) {.
    importcpp: "SetValues", header: "gp_Trsf.hxx".}
proc isNegative*(this: Trsf): StandardBoolean {.noSideEffect,
    importcpp: "IsNegative", header: "gp_Trsf.hxx".}
proc form*(this: Trsf): TrsfForm {.noSideEffect, importcpp: "Form",
                               header: "gp_Trsf.hxx".}
proc scaleFactor*(this: Trsf): StandardReal {.noSideEffect, importcpp: "ScaleFactor",
    header: "gp_Trsf.hxx".}
proc translationPart*(this: Trsf): Xyz {.noSideEffect, importcpp: "TranslationPart",
                                     header: "gp_Trsf.hxx".}
proc getRotation*(this: Trsf; theAxis: var Xyz; theAngle: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "GetRotation", header: "gp_Trsf.hxx".}
proc getRotation*(this: Trsf): Quaternion {.noSideEffect, importcpp: "GetRotation",
                                        header: "gp_Trsf.hxx".}
proc vectorialPart*(this: Trsf): Mat {.noSideEffect, importcpp: "VectorialPart",
                                   header: "gp_Trsf.hxx".}
proc hVectorialPart*(this: Trsf): Mat {.noSideEffect, importcpp: "HVectorialPart",
                                    header: "gp_Trsf.hxx".}
proc value*(this: Trsf; row: int; col: int): StandardReal {.noSideEffect,
    importcpp: "Value", header: "gp_Trsf.hxx".}
proc invert*(this: var Trsf) {.importcpp: "Invert", header: "gp_Trsf.hxx".}
proc inverted*(this: Trsf): Trsf {.noSideEffect, importcpp: "Inverted",
                               header: "gp_Trsf.hxx".}
proc multiplied*(this: Trsf; t: Trsf): Trsf {.noSideEffect, importcpp: "Multiplied",
                                        header: "gp_Trsf.hxx".}
proc `*`*(this: Trsf; t: Trsf): Trsf {.noSideEffect, importcpp: "(# * #)",
                                 header: "gp_Trsf.hxx".}
proc multiply*(this: var Trsf; t: Trsf) {.importcpp: "Multiply", header: "gp_Trsf.hxx".}
proc `*=`*(this: var Trsf; t: Trsf) {.importcpp: "(# *= #)", header: "gp_Trsf.hxx".}
proc preMultiply*(this: var Trsf; t: Trsf) {.importcpp: "PreMultiply",
                                       header: "gp_Trsf.hxx".}
proc power*(this: var Trsf; n: int) {.importcpp: "Power", header: "gp_Trsf.hxx".}
proc powered*(this: Trsf; n: int): Trsf {.noSideEffect, importcpp: "Powered",
                                    header: "gp_Trsf.hxx".}
proc transforms*(this: Trsf; x: var StandardReal; y: var StandardReal;
                z: var StandardReal) {.noSideEffect, importcpp: "Transforms",
                                    header: "gp_Trsf.hxx".}
proc transforms*(this: Trsf; coord: var Xyz) {.noSideEffect, importcpp: "Transforms",
    header: "gp_Trsf.hxx".}
proc getMat4*[T](this: Trsf; theMat: var NCollectionMat4[T]) {.noSideEffect,
    importcpp: "GetMat4", header: "gp_Trsf.hxx".}
proc dumpJson*(this: Trsf; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Trsf.hxx".}
proc initFromJson*(this: var Trsf; theSStream: StandardSStream; theStreamPos: var int): StandardBoolean {.
    importcpp: "InitFromJson", header: "gp_Trsf.hxx".}