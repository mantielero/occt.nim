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


proc newGTrsf*(): gp_GTrsf {.cdecl, constructor, importcpp: "gp_GTrsf(@)", header: "gp_GTrsf.hxx".}
proc newGTrsf*(t: gp_Trsf): gp_GTrsf {.cdecl, constructor, importcpp: "gp_GTrsf(@)",
                             header: "gp_GTrsf.hxx".}
proc newGTrsf*(m: gp_Mat; v: gp_Xyz): gp_GTrsf {.cdecl, constructor, importcpp: "gp_GTrsf(@)",
                                  header: "gp_GTrsf.hxx".}
proc setAffinity*(this: var gp_GTrsf; a1: gp_Ax1; ratio: cfloat) {.cdecl,
    importcpp: "SetAffinity", header: "gp_GTrsf.hxx".}
proc setAffinity*(this: var gp_GTrsf; a2: gp_Ax2; ratio: cfloat) {.cdecl,
    importcpp: "SetAffinity", header: "gp_GTrsf.hxx".}
proc setValue*(this: var gp_GTrsf; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "gp_GTrsf.hxx".}
proc setVectorialPart*(this: var gp_GTrsf; matrix: gp_Mat) {.cdecl,
    importcpp: "SetVectorialPart", header: "gp_GTrsf.hxx".}
proc setTranslationPart*(this: var gp_GTrsf; coord: gp_Xyz) {.cdecl,
    importcpp: "SetTranslationPart", header: "gp_GTrsf.hxx".}
proc setTrsf*(this: var gp_GTrsf; t: gp_Trsf) {.cdecl, importcpp: "SetTrsf", header: "gp_GTrsf.hxx".}
proc isNegative*(this: gp_GTrsf): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                  header: "gp_GTrsf.hxx".}
proc isSingular*(this: gp_GTrsf): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                  header: "gp_GTrsf.hxx".}
proc form*(this: gp_GTrsf): gp_TrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                                header: "gp_GTrsf.hxx".}
proc setForm*(this: var gp_GTrsf) {.cdecl, importcpp: "SetForm", header: "gp_GTrsf.hxx".}
proc translationPart*(this: gp_GTrsf): gp_Xyz {.noSideEffect, cdecl,
                                      importcpp: "TranslationPart", header: "gp_GTrsf.hxx".}
proc vectorialPart*(this: gp_GTrsf): gp_Mat {.noSideEffect, cdecl,
                                    importcpp: "VectorialPart", header: "gp_GTrsf.hxx".}
proc value*(this: gp_GTrsf; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_GTrsf.hxx".}
proc `()`*(this: gp_GTrsf; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "gp_GTrsf.hxx".}
proc invert*(this: var gp_GTrsf) {.cdecl, importcpp: "Invert", header: "gp_GTrsf.hxx".}
proc inverted*(this: gp_GTrsf): gp_GTrsf {.noSideEffect, cdecl, importcpp: "Inverted",
                                 header: "gp_GTrsf.hxx".}
proc multiplied*(this: gp_GTrsf; t: gp_GTrsf): gp_GTrsf {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_GTrsf.hxx".}
proc `*`*(this: gp_GTrsf; t: gp_GTrsf): gp_GTrsf {.noSideEffect, cdecl, importcpp: "(# * #)",
                                    header: "gp_GTrsf.hxx".}
proc multiply*(this: var gp_GTrsf; t: gp_GTrsf) {.cdecl, importcpp: "Multiply", header: "gp_GTrsf.hxx".}
proc `*=`*(this: var gp_GTrsf; t: gp_GTrsf) {.cdecl, importcpp: "(# *= #)", header: "gp_GTrsf.hxx".}
proc preMultiply*(this: var gp_GTrsf; t: gp_GTrsf) {.cdecl, importcpp: "PreMultiply",
    header: "gp_GTrsf.hxx".}
proc power*(this: var gp_GTrsf; n: cint) {.cdecl, importcpp: "Power", header: "gp_GTrsf.hxx".}
proc powered*(this: gp_GTrsf; n: cint): gp_GTrsf {.noSideEffect, cdecl, importcpp: "Powered",
                                       header: "gp_GTrsf.hxx".}
proc transforms*(this: gp_GTrsf; coord: var gp_Xyz) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_GTrsf.hxx".}
proc transforms*(this: gp_GTrsf; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Transforms", header: "gp_GTrsf.hxx".}
proc trsf*(this: gp_GTrsf): gp_Trsf {.noSideEffect, cdecl, importcpp: "Trsf", header: "gp_GTrsf.hxx".}
proc getMat4*[T](this: gp_GTrsf; theMat: var NCollectionMat4[T]) {.noSideEffect, cdecl,
    importcpp: "GetMat4", header: "gp_GTrsf.hxx".}
proc dumpJson*(this: gp_GTrsf; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_GTrsf.hxx".}
