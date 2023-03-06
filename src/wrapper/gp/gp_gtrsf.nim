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
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Mat"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
when defined(SetForm):
  discard
## ! Defines a non-persistent transformation in 3D space.
## ! This transformation is a general transformation.
## ! It can be a Trsf from gp, an affinity, or you can define
## ! your own transformation giving the matrix of transformation.
## !
## ! With a Gtrsf you can transform only a triplet of coordinates
## ! XYZ. It is not possible to transform other geometric objects
## ! because these transformations can change the nature of non-
## ! elementary geometric objects.
## ! The transformation GTrsf can be represented as follow :
## !
## ! V1   V2   V3    T       XYZ        XYZ
## ! | a11  a12  a13   a14 |   | x |      | x'|
## ! | a21  a22  a23   a24 |   | y |      | y'|
## ! | a31  a32  a33   a34 |   | z |   =  | z'|
## ! |  0    0    0     1  |   | 1 |      | 1 |
## !
## ! where {V1, V2, V3} define the vectorial part of the
## ! transformation and T defines the translation part of the
## ! transformation.
## ! Warning
## ! A GTrsf transformation is only applicable to
## ! coordinates. Be careful if you apply such a
## ! transformation to all points of a geometric object, as
## ! this can change the nature of the object and thus
## ! render it incoherent!
## ! Typically, a circle is transformed into an ellipse by an
## ! affinity transformation. To avoid modifying the nature of
## ! an object, use a gp_Trsf transformation instead, as
## ! objects of this class respect the nature of geometric objects.


proc newGTrsf*(): GTrsf {.cdecl, constructor, importcpp: "gp_GTrsf(@)", header: "gp_GTrsf.hxx".}
proc newGTrsf*(t: TrsfObj): GTrsf {.cdecl, constructor, importcpp: "gp_GTrsf(@)",
                             header: "gp_GTrsf.hxx".}
proc newGTrsf*(m: MatObj; v: XyzObj): GTrsf {.cdecl, constructor, importcpp: "gp_GTrsf(@)",
                                  header: "gp_GTrsf.hxx".}
proc setAffinity*(this: var GTrsf; a1: Ax1Obj; ratio: cfloat) {.cdecl,
    importcpp: "SetAffinity", header: "gp_GTrsf.hxx".}
proc setAffinity*(this: var GTrsf; a2: Ax2Obj; ratio: cfloat) {.cdecl,
    importcpp: "SetAffinity", header: "gp_GTrsf.hxx".}
proc setValue*(this: var GTrsf; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "gp_GTrsf.hxx".}
proc setVectorialPart*(this: var GTrsf; matrix: MatObj) {.cdecl,
    importcpp: "SetVectorialPart", header: "gp_GTrsf.hxx".}
proc setTranslationPart*(this: var GTrsf; coord: XyzObj) {.cdecl,
    importcpp: "SetTranslationPart", header: "gp_GTrsf.hxx".}
proc setTrsf*(this: var GTrsf; t: TrsfObj) {.cdecl, importcpp: "SetTrsf", header: "gp_GTrsf.hxx".}
proc isNegative*(this: GTrsf): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                  header: "gp_GTrsf.hxx".}
proc isSingular*(this: GTrsf): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                  header: "gp_GTrsf.hxx".}
proc form*(this: GTrsf): TrsfFormObj {.noSideEffect, cdecl, importcpp: "Form",
                                header: "gp_GTrsf.hxx".}
proc setForm*(this: var GTrsf) {.cdecl, importcpp: "SetForm", header: "gp_GTrsf.hxx".}
proc translationPart*(this: GTrsf): XyzObj {.noSideEffect, cdecl,
                                      importcpp: "TranslationPart", header: "gp_GTrsf.hxx".}
proc vectorialPart*(this: GTrsf): MatObj {.noSideEffect, cdecl,
                                    importcpp: "VectorialPart", header: "gp_GTrsf.hxx".}
proc value*(this: GTrsf; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_GTrsf.hxx".}
proc `()`*(this: GTrsf; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "gp_GTrsf.hxx".}
proc invert*(this: var GTrsf) {.cdecl, importcpp: "Invert", header: "gp_GTrsf.hxx".}
proc inverted*(this: GTrsf): GTrsf {.noSideEffect, cdecl, importcpp: "Inverted",
                                 header: "gp_GTrsf.hxx".}
proc multiplied*(this: GTrsf; t: GTrsf): GTrsf {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_GTrsf.hxx".}
proc `*`*(this: GTrsf; t: GTrsf): GTrsf {.noSideEffect, cdecl, importcpp: "(# * #)",
                                    header: "gp_GTrsf.hxx".}
proc multiply*(this: var GTrsf; t: GTrsf) {.cdecl, importcpp: "Multiply", header: "gp_GTrsf.hxx".}
proc `*=`*(this: var GTrsf; t: GTrsf) {.cdecl, importcpp: "(# *= #)", header: "gp_GTrsf.hxx".}
proc preMultiply*(this: var GTrsf; t: GTrsf) {.cdecl, importcpp: "PreMultiply",
    header: "gp_GTrsf.hxx".}
proc power*(this: var GTrsf; n: cint) {.cdecl, importcpp: "Power", header: "gp_GTrsf.hxx".}
proc powered*(this: GTrsf; n: cint): GTrsf {.noSideEffect, cdecl, importcpp: "Powered",
                                       header: "gp_GTrsf.hxx".}
proc transforms*(this: GTrsf; coord: var XyzObj) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_GTrsf.hxx".}
proc transforms*(this: GTrsf; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Transforms", header: "gp_GTrsf.hxx".}
proc trsf*(this: GTrsf): TrsfObj {.noSideEffect, cdecl, importcpp: "Trsf", header: "gp_GTrsf.hxx".}
proc getMat4*[T](this: GTrsf; theMat: var NCollectionMat4[T]) {.noSideEffect, cdecl,
    importcpp: "GetMat4", header: "gp_GTrsf.hxx".}
proc dumpJson*(this: GTrsf; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_GTrsf.hxx".}
