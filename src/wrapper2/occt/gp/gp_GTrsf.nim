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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, gp_Mat, gp_XYZ, gp_TrsfForm,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, gp_Trsf

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
  gp_GTrsf* {.importcpp: "gp_GTrsf", header: "gp_GTrsf.hxx", bycopy.} = object ## ! Returns the Identity
                                                                       ## transformation.
    gp_GTrsf* {.importc: "gp_GTrsf".}: Standard_NODISCARD
    gp_GTrsf* {.importc: "gp_GTrsf".}: Standard_NODISCARD
    gp_GTrsf* {.importc: "gp_GTrsf".}: Standard_NODISCARD
    gp_GTrsf* {.importc: "gp_GTrsf".}: Standard_NODISCARD


proc constructgp_GTrsf*(): gp_GTrsf {.constructor, importcpp: "gp_GTrsf(@)",
                                   header: "gp_GTrsf.hxx".}
proc constructgp_GTrsf*(T: gp_Trsf): gp_GTrsf {.constructor,
    importcpp: "gp_GTrsf(@)", header: "gp_GTrsf.hxx".}
proc constructgp_GTrsf*(M: gp_Mat; V: gp_XYZ): gp_GTrsf {.constructor,
    importcpp: "gp_GTrsf(@)", header: "gp_GTrsf.hxx".}
proc SetAffinity*(this: var gp_GTrsf; A1: gp_Ax1; Ratio: Standard_Real) {.
    importcpp: "SetAffinity", header: "gp_GTrsf.hxx".}
proc SetAffinity*(this: var gp_GTrsf; A2: gp_Ax2; Ratio: Standard_Real) {.
    importcpp: "SetAffinity", header: "gp_GTrsf.hxx".}
proc SetValue*(this: var gp_GTrsf; Row: Standard_Integer; Col: Standard_Integer;
              Value: Standard_Real) {.importcpp: "SetValue", header: "gp_GTrsf.hxx".}
proc SetVectorialPart*(this: var gp_GTrsf; Matrix: gp_Mat) {.
    importcpp: "SetVectorialPart", header: "gp_GTrsf.hxx".}
proc SetTranslationPart*(this: var gp_GTrsf; Coord: gp_XYZ) {.
    importcpp: "SetTranslationPart", header: "gp_GTrsf.hxx".}
proc SetTrsf*(this: var gp_GTrsf; T: gp_Trsf) {.importcpp: "SetTrsf",
    header: "gp_GTrsf.hxx".}
proc IsNegative*(this: gp_GTrsf): Standard_Boolean {.noSideEffect,
    importcpp: "IsNegative", header: "gp_GTrsf.hxx".}
proc IsSingular*(this: gp_GTrsf): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingular", header: "gp_GTrsf.hxx".}
proc Form*(this: gp_GTrsf): gp_TrsfForm {.noSideEffect, importcpp: "Form",
                                      header: "gp_GTrsf.hxx".}
proc SetForm*(this: var gp_GTrsf) {.importcpp: "SetForm", header: "gp_GTrsf.hxx".}
proc TranslationPart*(this: gp_GTrsf): gp_XYZ {.noSideEffect,
    importcpp: "TranslationPart", header: "gp_GTrsf.hxx".}
proc VectorialPart*(this: gp_GTrsf): gp_Mat {.noSideEffect,
    importcpp: "VectorialPart", header: "gp_GTrsf.hxx".}
proc Value*(this: gp_GTrsf; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "gp_GTrsf.hxx".}
proc `()`*(this: gp_GTrsf; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "#(@)", header: "gp_GTrsf.hxx".}
proc Invert*(this: var gp_GTrsf) {.importcpp: "Invert", header: "gp_GTrsf.hxx".}
## !!!Ignored construct:  Inverted ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  Multiplied ( const gp_GTrsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const gp_GTrsf & T ) const { return Multiplied ( T ) ; } ! Computes the transformation composed with <me> and T.
## ! <me> = <me> * T void Multiply ( const gp_GTrsf & T ) ;
## Error: identifier expected, but got: *!!!

proc `*=`*(this: var gp_GTrsf; T: gp_GTrsf) {.importcpp: "(# *= #)",
                                        header: "gp_GTrsf.hxx".}
proc PreMultiply*(this: var gp_GTrsf; T: gp_GTrsf) {.importcpp: "PreMultiply",
    header: "gp_GTrsf.hxx".}
proc Power*(this: var gp_GTrsf; N: Standard_Integer) {.importcpp: "Power",
    header: "gp_GTrsf.hxx".}
## !!!Ignored construct:  Powered ( const Standard_Integer N ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transforms*(this: gp_GTrsf; Coord: var gp_XYZ) {.noSideEffect,
    importcpp: "Transforms", header: "gp_GTrsf.hxx".}
proc Transforms*(this: gp_GTrsf; X: var Standard_Real; Y: var Standard_Real;
                Z: var Standard_Real) {.noSideEffect, importcpp: "Transforms",
                                     header: "gp_GTrsf.hxx".}
proc Trsf*(this: gp_GTrsf): gp_Trsf {.noSideEffect, importcpp: "Trsf",
                                  header: "gp_GTrsf.hxx".}
proc GetMat4*[T](this: gp_GTrsf; theMat: var NCollection_Mat4[T]) {.noSideEffect,
    importcpp: "GetMat4", header: "gp_GTrsf.hxx".}
proc DumpJson*(this: gp_GTrsf; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_GTrsf.hxx".}