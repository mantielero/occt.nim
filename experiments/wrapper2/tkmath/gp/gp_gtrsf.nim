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

type
  GpGTrsf* {.importcpp: "gp_GTrsf", header: "gp_GTrsf.hxx", bycopy.} = object ## ! Returns the Identity
                                                                      ## transformation.


proc constructGpGTrsf*(): GpGTrsf {.cdecl, constructor, importcpp: "gp_GTrsf(@)",
                                 dynlib: tkmath.}
proc constructGpGTrsf*(t: GpTrsf): GpGTrsf {.cdecl, constructor,
    importcpp: "gp_GTrsf(@)", dynlib: tkmath.}
proc constructGpGTrsf*(m: GpMat; v: GpXYZ): GpGTrsf {.cdecl, constructor,
    importcpp: "gp_GTrsf(@)", dynlib: tkmath.}
proc setAffinity*(this: var GpGTrsf; a1: GpAx1; ratio: cfloat) {.cdecl,
    importcpp: "SetAffinity", dynlib: tkmath.}
proc setAffinity*(this: var GpGTrsf; a2: GpAx2; ratio: cfloat) {.cdecl,
    importcpp: "SetAffinity", dynlib: tkmath.}
proc setValue*(this: var GpGTrsf; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc setVectorialPart*(this: var GpGTrsf; matrix: GpMat) {.cdecl,
    importcpp: "SetVectorialPart", dynlib: tkmath.}
proc setTranslationPart*(this: var GpGTrsf; coord: GpXYZ) {.cdecl,
    importcpp: "SetTranslationPart", dynlib: tkmath.}
proc setTrsf*(this: var GpGTrsf; t: GpTrsf) {.cdecl, importcpp: "SetTrsf", dynlib: tkmath.}
proc isNegative*(this: GpGTrsf): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                    dynlib: tkmath.}
proc isSingular*(this: GpGTrsf): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                    dynlib: tkmath.}
proc form*(this: GpGTrsf): GpTrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                                    dynlib: tkmath.}
proc setForm*(this: var GpGTrsf) {.cdecl, importcpp: "SetForm", dynlib: tkmath.}
proc translationPart*(this: GpGTrsf): GpXYZ {.noSideEffect, cdecl,
    importcpp: "TranslationPart", dynlib: tkmath.}
proc vectorialPart*(this: GpGTrsf): GpMat {.noSideEffect, cdecl,
                                        importcpp: "VectorialPart", dynlib: tkmath.}
proc value*(this: GpGTrsf; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc `()`*(this: GpGTrsf; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc invert*(this: var GpGTrsf) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: GpGTrsf): GpGTrsf {.noSideEffect, cdecl, importcpp: "Inverted",
                                     dynlib: tkmath.}
proc multiplied*(this: GpGTrsf; t: GpGTrsf): GpGTrsf {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpGTrsf; t: GpGTrsf): GpGTrsf {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiply*(this: var GpGTrsf; t: GpGTrsf) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpGTrsf; t: GpGTrsf) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc preMultiply*(this: var GpGTrsf; t: GpGTrsf) {.cdecl, importcpp: "PreMultiply",
    dynlib: tkmath.}
proc power*(this: var GpGTrsf; n: cint) {.cdecl, importcpp: "Power", dynlib: tkmath.}
proc powered*(this: GpGTrsf; n: cint): GpGTrsf {.noSideEffect, cdecl,
    importcpp: "Powered", dynlib: tkmath.}
proc transforms*(this: GpGTrsf; coord: var GpXYZ) {.noSideEffect, cdecl,
    importcpp: "Transforms", dynlib: tkmath.}
proc transforms*(this: GpGTrsf; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Transforms", dynlib: tkmath.}
proc trsf*(this: GpGTrsf): GpTrsf {.noSideEffect, cdecl, importcpp: "Trsf",
                                dynlib: tkmath.}
proc getMat4*[T](this: GpGTrsf; theMat: var NCollectionMat4[T]) {.noSideEffect, cdecl,
    importcpp: "GetMat4", dynlib: tkmath.}
proc dumpJson*(this: GpGTrsf; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}