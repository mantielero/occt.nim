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
# when defined(SetForm):
#   discard
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

type
  GTrsf* {.importcpp: "gp_GTrsf", header: "gp_GTrsf.hxx", bycopy.} = object ## ! Returns the Identity
                                                                    ## transformation.


proc constructGTrsf*(): GTrsf {.constructor, importcpp: "gp_GTrsf(@)",
                             header: "gp_GTrsf.hxx".}
proc constructGTrsf*(t: Trsf): GTrsf {.constructor, importcpp: "gp_GTrsf(@)",
                                   header: "gp_GTrsf.hxx".}
proc constructGTrsf*(m: Mat; v: Xyz): GTrsf {.constructor, importcpp: "gp_GTrsf(@)",
                                        header: "gp_GTrsf.hxx".}
proc setAffinity*(this: var GTrsf; a1: Ax1; ratio: float) {.importcpp: "SetAffinity",
    header: "gp_GTrsf.hxx".}
proc setAffinity*(this: var GTrsf; a2: Ax2; ratio: float) {.importcpp: "SetAffinity",
    header: "gp_GTrsf.hxx".}
proc setValue*(this: var GTrsf; row: int; col: int; value: float) {.importcpp: "SetValue",
    header: "gp_GTrsf.hxx".}
proc setVectorialPart*(this: var GTrsf; matrix: Mat) {.importcpp: "SetVectorialPart",
    header: "gp_GTrsf.hxx".}
proc setTranslationPart*(this: var GTrsf; coord: Xyz) {.
    importcpp: "SetTranslationPart", header: "gp_GTrsf.hxx".}
proc setTrsf*(this: var GTrsf; t: Trsf) {.importcpp: "SetTrsf", header: "gp_GTrsf.hxx".}
proc isNegative*(this: GTrsf): bool {.noSideEffect, importcpp: "IsNegative",
                                  header: "gp_GTrsf.hxx".}
proc isSingular*(this: GTrsf): bool {.noSideEffect, importcpp: "IsSingular",
                                  header: "gp_GTrsf.hxx".}
proc form*(this: GTrsf): TrsfForm {.noSideEffect, importcpp: "Form",
                                header: "gp_GTrsf.hxx".}
proc setForm*(this: var GTrsf) {.importcpp: "SetForm", header: "gp_GTrsf.hxx".}
proc translationPart*(this: GTrsf): Xyz {.noSideEffect, importcpp: "TranslationPart",
                                      header: "gp_GTrsf.hxx".}
proc vectorialPart*(this: GTrsf): Mat {.noSideEffect, importcpp: "VectorialPart",
                                    header: "gp_GTrsf.hxx".}
proc value*(this: GTrsf; row: int; col: int): float {.noSideEffect, importcpp: "Value",
    header: "gp_GTrsf.hxx".}
proc `()`*(this: GTrsf; row: int; col: int): float {.noSideEffect, importcpp: "#(@)",
    header: "gp_GTrsf.hxx".}
proc invert*(this: var GTrsf) {.importcpp: "Invert", header: "gp_GTrsf.hxx".}
proc inverted*(this: GTrsf): GTrsf {.noSideEffect, importcpp: "Inverted",
                                 header: "gp_GTrsf.hxx".}
proc multiplied*(this: GTrsf; t: GTrsf): GTrsf {.noSideEffect, importcpp: "Multiplied",
    header: "gp_GTrsf.hxx".}
proc `*`*(this: GTrsf; t: GTrsf): GTrsf {.noSideEffect, importcpp: "(# * #)",
                                    header: "gp_GTrsf.hxx".}
proc multiply*(this: var GTrsf; t: GTrsf) {.importcpp: "Multiply",
                                      header: "gp_GTrsf.hxx".}
proc `*=`*(this: var GTrsf; t: GTrsf) {.importcpp: "(# *= #)", header: "gp_GTrsf.hxx".}
proc preMultiply*(this: var GTrsf; t: GTrsf) {.importcpp: "PreMultiply",
    header: "gp_GTrsf.hxx".}
proc power*(this: var GTrsf; n: int) {.importcpp: "Power", header: "gp_GTrsf.hxx".}
proc powered*(this: GTrsf; n: int): GTrsf {.noSideEffect, importcpp: "Powered",
                                      header: "gp_GTrsf.hxx".}
proc transforms*(this: GTrsf; coord: var Xyz) {.noSideEffect, importcpp: "Transforms",
    header: "gp_GTrsf.hxx".}
proc transforms*(this: GTrsf; x: var float; y: var float; z: var float) {.noSideEffect,
    importcpp: "Transforms", header: "gp_GTrsf.hxx".}
proc trsf*(this: GTrsf): Trsf {.noSideEffect, importcpp: "Trsf", header: "gp_GTrsf.hxx".}
proc getMat4*[T](this: GTrsf; theMat: var NCollectionMat4[T]) {.noSideEffect,
    importcpp: "GetMat4", header: "gp_GTrsf.hxx".}
proc dumpJson*(this: GTrsf; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_GTrsf.hxx".}
