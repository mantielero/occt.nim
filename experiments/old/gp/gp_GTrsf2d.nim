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
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Mat2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
type
  GTrsf2d* {.importcpp: "gp_GTrsf2d", header: "gp_GTrsf2d.hxx", bycopy.} = object


proc `new`*(this: var GTrsf2d; theSize: csize_t): pointer {.
    importcpp: "gp_GTrsf2d::operator new", header: "gp_GTrsf2d.hxx".}
proc `delete`*(this: var GTrsf2d; theAddress: pointer) {.
    importcpp: "gp_GTrsf2d::operator delete", header: "gp_GTrsf2d.hxx".}
proc `new[]`*(this: var GTrsf2d; theSize: csize_t): pointer {.
    importcpp: "gp_GTrsf2d::operator new[]", header: "gp_GTrsf2d.hxx".}
proc `delete[]`*(this: var GTrsf2d; theAddress: pointer) {.
    importcpp: "gp_GTrsf2d::operator delete[]", header: "gp_GTrsf2d.hxx".}
proc `new`*(this: var GTrsf2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_GTrsf2d::operator new", header: "gp_GTrsf2d.hxx".}
proc `delete`*(this: var GTrsf2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_GTrsf2d::operator delete", header: "gp_GTrsf2d.hxx".}
proc constructGTrsf2d*(): GTrsf2d {.constructor, importcpp: "gp_GTrsf2d(@)",
                                 header: "gp_GTrsf2d.hxx".}
proc constructGTrsf2d*(t: Trsf2d): GTrsf2d {.constructor, importcpp: "gp_GTrsf2d(@)",
    header: "gp_GTrsf2d.hxx".}
proc constructGTrsf2d*(m: Mat2d; v: Xy): GTrsf2d {.constructor,
    importcpp: "gp_GTrsf2d(@)", header: "gp_GTrsf2d.hxx".}
proc setAffinity*(this: var GTrsf2d; a: Ax2d; ratio: StandardReal) {.
    importcpp: "SetAffinity", header: "gp_GTrsf2d.hxx".}
proc setValue*(this: var GTrsf2d; row: int; col: int; value: StandardReal) {.
    importcpp: "SetValue", header: "gp_GTrsf2d.hxx".}
proc setTranslationPart*(this: var GTrsf2d; coord: Xy) {.
    importcpp: "SetTranslationPart", header: "gp_GTrsf2d.hxx".}
proc setTrsf2d*(this: var GTrsf2d; t: Trsf2d) {.importcpp: "SetTrsf2d",
    header: "gp_GTrsf2d.hxx".}
proc setVectorialPart*(this: var GTrsf2d; matrix: Mat2d) {.
    importcpp: "SetVectorialPart", header: "gp_GTrsf2d.hxx".}
proc isNegative*(this: GTrsf2d): StandardBoolean {.noSideEffect,
    importcpp: "IsNegative", header: "gp_GTrsf2d.hxx".}
proc isSingular*(this: GTrsf2d): StandardBoolean {.noSideEffect,
    importcpp: "IsSingular", header: "gp_GTrsf2d.hxx".}
proc form*(this: GTrsf2d): TrsfForm {.noSideEffect, importcpp: "Form",
                                  header: "gp_GTrsf2d.hxx".}
proc translationPart*(this: GTrsf2d): Xy {.noSideEffect,
                                       importcpp: "TranslationPart",
                                       header: "gp_GTrsf2d.hxx".}
proc vectorialPart*(this: GTrsf2d): Mat2d {.noSideEffect, importcpp: "VectorialPart",
                                        header: "gp_GTrsf2d.hxx".}
proc value*(this: GTrsf2d; row: int; col: int): StandardReal {.noSideEffect,
    importcpp: "Value", header: "gp_GTrsf2d.hxx".}
proc `()`*(this: GTrsf2d; row: int; col: int): StandardReal {.noSideEffect,
    importcpp: "#(@)", header: "gp_GTrsf2d.hxx".}
proc invert*(this: var GTrsf2d) {.importcpp: "Invert", header: "gp_GTrsf2d.hxx".}
proc inverted*(this: GTrsf2d): GTrsf2d {.noSideEffect, importcpp: "Inverted",
                                     header: "gp_GTrsf2d.hxx".}
proc multiplied*(this: GTrsf2d; t: GTrsf2d): GTrsf2d {.noSideEffect,
    importcpp: "Multiplied", header: "gp_GTrsf2d.hxx".}
proc `*`*(this: GTrsf2d; t: GTrsf2d): GTrsf2d {.noSideEffect, importcpp: "(# * #)",
    header: "gp_GTrsf2d.hxx".}
proc multiply*(this: var GTrsf2d; t: GTrsf2d) {.importcpp: "Multiply",
    header: "gp_GTrsf2d.hxx".}
proc `*=`*(this: var GTrsf2d; t: GTrsf2d) {.importcpp: "(# *= #)",
                                      header: "gp_GTrsf2d.hxx".}
proc preMultiply*(this: var GTrsf2d; t: GTrsf2d) {.importcpp: "PreMultiply",
    header: "gp_GTrsf2d.hxx".}
proc power*(this: var GTrsf2d; n: int) {.importcpp: "Power", header: "gp_GTrsf2d.hxx".}
proc powered*(this: GTrsf2d; n: int): GTrsf2d {.noSideEffect, importcpp: "Powered",
    header: "gp_GTrsf2d.hxx".}
proc transforms*(this: GTrsf2d; coord: var Xy) {.noSideEffect, importcpp: "Transforms",
    header: "gp_GTrsf2d.hxx".}
proc transformed*(this: GTrsf2d; coord: Xy): Xy {.noSideEffect,
    importcpp: "Transformed", header: "gp_GTrsf2d.hxx".}
proc transforms*(this: GTrsf2d; x: var StandardReal; y: var StandardReal) {.noSideEffect,
    importcpp: "Transforms", header: "gp_GTrsf2d.hxx".}
proc trsf2d*(this: GTrsf2d): Trsf2d {.noSideEffect, importcpp: "Trsf2d",
                                  header: "gp_GTrsf2d.hxx".}