{.experimental: "callOperator".}
import gp_types

import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
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


proc trsf*(): TrsfObj {.cdecl, constructor, importcpp: "gp_Trsf(@)", header: "gp_Trsf.hxx".}
proc trsf*(t: Trsf2dObj): TrsfObj {.cdecl, constructor, importcpp: "gp_Trsf(@)",
                             header: "gp_Trsf.hxx".}
proc setMirror*(this: var TrsfObj; p: PntObj) {.cdecl, importcpp: "SetMirror", header: "gp_Trsf.hxx".}
proc setMirror*(this: var TrsfObj; a1: Ax1Obj) {.cdecl, importcpp: "SetMirror", header: "gp_Trsf.hxx".}
proc setMirror*(this: var TrsfObj; a2: Ax2Obj) {.cdecl, importcpp: "SetMirror", header: "gp_Trsf.hxx".}
proc setRotation*(this: var TrsfObj; a1: Ax1Obj; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "gp_Trsf.hxx".}
proc setRotation*(this: var TrsfObj; r: QuaternionObj) {.cdecl, importcpp: "SetRotation",
    header: "gp_Trsf.hxx".}
proc setRotationPart*(this: var TrsfObj; r: QuaternionObj) {.cdecl,
    importcpp: "SetRotationPart", header: "gp_Trsf.hxx".}
proc setScale*(this: var TrsfObj; p: PntObj; s: cfloat) {.cdecl, importcpp: "SetScale",
    header: "gp_Trsf.hxx".}
proc setDisplacement*(this: var TrsfObj; fromSystem1: Ax3Obj; toSystem2: Ax3Obj) {.cdecl,
    importcpp: "SetDisplacement", header: "gp_Trsf.hxx".}
proc setTransformation*(this: var TrsfObj; fromSystem1: Ax3Obj; toSystem2: Ax3Obj) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc setTransformation*(this: var TrsfObj; toSystem: Ax3Obj) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc setTransformation*(this: var TrsfObj; r: QuaternionObj; t: VecObj) {.cdecl,
    importcpp: "SetTransformation", header: "gp_Trsf.hxx".}
proc setTranslation*(this: var TrsfObj; v: VecObj) {.cdecl, importcpp: "SetTranslation",
    header: "gp_Trsf.hxx".}
proc setTranslation*(this: var TrsfObj; p1: PntObj; p2: PntObj) {.cdecl,
    importcpp: "SetTranslation", header: "gp_Trsf.hxx".}
proc setTranslationPart*(this: var TrsfObj; v: VecObj) {.cdecl,
    importcpp: "SetTranslationPart", header: "gp_Trsf.hxx".}
proc setScaleFactor*(this: var TrsfObj; s: cfloat) {.cdecl, importcpp: "SetScaleFactor",
    header: "gp_Trsf.hxx".}
proc setForm*(this: var TrsfObj; p: TrsfFormObj) {.cdecl, importcpp: "SetForm", header: "gp_Trsf.hxx".}
proc setValues*(this: var TrsfObj; a11: cfloat; a12: cfloat; a13: cfloat; a14: cfloat;
               a21: cfloat; a22: cfloat; a23: cfloat; a24: cfloat; a31: cfloat;
               a32: cfloat; a33: cfloat; a34: cfloat) {.cdecl, importcpp: "SetValues",
    header: "gp_Trsf.hxx".}
proc isNegative*(this: TrsfObj): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                 header: "gp_Trsf.hxx".}
proc form*(this: TrsfObj): TrsfFormObj {.noSideEffect, cdecl, importcpp: "Form",
                               header: "gp_Trsf.hxx".}
proc scaleFactor*(this: TrsfObj): cfloat {.noSideEffect, cdecl, importcpp: "ScaleFactor",
                                    header: "gp_Trsf.hxx".}
proc translationPart*(this: TrsfObj): XyzObj {.noSideEffect, cdecl,
                                     importcpp: "TranslationPart", header: "gp_Trsf.hxx".}
proc getRotation*(this: TrsfObj; theAxis: var XyzObj; theAngle: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "GetRotation", header: "gp_Trsf.hxx".}
proc getRotation*(this: TrsfObj): QuaternionObj {.noSideEffect, cdecl,
                                        importcpp: "GetRotation", header: "gp_Trsf.hxx".}
proc vectorialPart*(this: TrsfObj): MatObj {.noSideEffect, cdecl,
                                   importcpp: "VectorialPart", header: "gp_Trsf.hxx".}
proc hVectorialPart*(this: TrsfObj): MatObj {.noSideEffect, cdecl,
                                    importcpp: "HVectorialPart", header: "gp_Trsf.hxx".}
proc value*(this: TrsfObj; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Trsf.hxx".}
proc invert*(this: var TrsfObj) {.cdecl, importcpp: "Invert", header: "gp_Trsf.hxx".}
proc inverted*(this: TrsfObj): TrsfObj {.noSideEffect, cdecl, importcpp: "Inverted",
                               header: "gp_Trsf.hxx".}
proc multiplied*(this: TrsfObj; t: TrsfObj): TrsfObj {.noSideEffect, cdecl,
                                        importcpp: "Multiplied", header: "gp_Trsf.hxx".}
proc `*`*(this: TrsfObj; t: TrsfObj): TrsfObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                 header: "gp_Trsf.hxx".}
proc multiply*(this: var TrsfObj; t: TrsfObj) {.cdecl, importcpp: "Multiply", header: "gp_Trsf.hxx".}
proc `*=`*(this: var TrsfObj; t: TrsfObj) {.cdecl, importcpp: "(# *= #)", header: "gp_Trsf.hxx".}
proc preMultiply*(this: var TrsfObj; t: TrsfObj) {.cdecl, importcpp: "PreMultiply",
                                       header: "gp_Trsf.hxx".}
proc power*(this: var TrsfObj; n: cint) {.cdecl, importcpp: "Power", header: "gp_Trsf.hxx".}
proc powered*(this: TrsfObj; n: cint): TrsfObj {.noSideEffect, cdecl, importcpp: "Powered",
                                     header: "gp_Trsf.hxx".}
proc transforms*(this: TrsfObj; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Transforms", header: "gp_Trsf.hxx".}
proc transforms*(this: TrsfObj; coord: var XyzObj) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_Trsf.hxx".}
proc getMat4*[T](this: TrsfObj; theMat: var NCollectionMat4[T]) {.noSideEffect, cdecl,
    importcpp: "GetMat4", header: "gp_Trsf.hxx".}
proc dumpJson*(this: TrsfObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Trsf.hxx".}
proc initFromJson*(this: var TrsfObj; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Trsf.hxx".}
