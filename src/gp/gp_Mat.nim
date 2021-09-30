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
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf"
type
  Mat* {.importcpp: "gp_Mat", header: "gp_Mat.hxx", bycopy.} = object


proc `new`*(this: var Mat; theSize: csize_t): pointer {.
    importcpp: "gp_Mat::operator new", header: "gp_Mat.hxx".}
proc `delete`*(this: var Mat; theAddress: pointer) {.
    importcpp: "gp_Mat::operator delete", header: "gp_Mat.hxx".}
proc `new[]`*(this: var Mat; theSize: csize_t): pointer {.
    importcpp: "gp_Mat::operator new[]", header: "gp_Mat.hxx".}
proc `delete[]`*(this: var Mat; theAddress: pointer) {.
    importcpp: "gp_Mat::operator delete[]", header: "gp_Mat.hxx".}
proc `new`*(this: var Mat; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Mat::operator new", header: "gp_Mat.hxx".}
proc `delete`*(this: var Mat; a2: pointer; a3: pointer) {.
    importcpp: "gp_Mat::operator delete", header: "gp_Mat.hxx".}
proc constructMat*(): Mat {.constructor, importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc constructMat*(a11: StandardReal; a12: StandardReal; a13: StandardReal;
                  a21: StandardReal; a22: StandardReal; a23: StandardReal;
                  a31: StandardReal; a32: StandardReal; a33: StandardReal): Mat {.
    constructor, importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc constructMat*(col1: Xyz; col2: Xyz; col3: Xyz): Mat {.constructor,
    importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc setCol*(this: var Mat; col: int; value: Xyz) {.importcpp: "SetCol",
    header: "gp_Mat.hxx".}
proc setCols*(this: var Mat; col1: Xyz; col2: Xyz; col3: Xyz) {.importcpp: "SetCols",
    header: "gp_Mat.hxx".}
proc setCross*(this: var Mat; `ref`: Xyz) {.importcpp: "SetCross", header: "gp_Mat.hxx".}
proc setDiagonal*(this: var Mat; x1: StandardReal; x2: StandardReal; x3: StandardReal) {.
    importcpp: "SetDiagonal", header: "gp_Mat.hxx".}
proc setDot*(this: var Mat; `ref`: Xyz) {.importcpp: "SetDot", header: "gp_Mat.hxx".}
proc setIdentity*(this: var Mat) {.importcpp: "SetIdentity", header: "gp_Mat.hxx".}
proc setRotation*(this: var Mat; axis: Xyz; ang: StandardReal) {.
    importcpp: "SetRotation", header: "gp_Mat.hxx".}
proc setRow*(this: var Mat; row: int; value: Xyz) {.importcpp: "SetRow",
    header: "gp_Mat.hxx".}
proc setRows*(this: var Mat; row1: Xyz; row2: Xyz; row3: Xyz) {.importcpp: "SetRows",
    header: "gp_Mat.hxx".}
proc setScale*(this: var Mat; s: StandardReal) {.importcpp: "SetScale",
    header: "gp_Mat.hxx".}
proc setValue*(this: var Mat; row: int; col: int; value: StandardReal) {.
    importcpp: "SetValue", header: "gp_Mat.hxx".}
proc column*(this: Mat; col: int): Xyz {.noSideEffect, importcpp: "Column",
                                   header: "gp_Mat.hxx".}
proc determinant*(this: Mat): StandardReal {.noSideEffect, importcpp: "Determinant",
    header: "gp_Mat.hxx".}
proc diagonal*(this: Mat): Xyz {.noSideEffect, importcpp: "Diagonal",
                             header: "gp_Mat.hxx".}
proc row*(this: Mat; row: int): Xyz {.noSideEffect, importcpp: "Row",
                                header: "gp_Mat.hxx".}
proc value*(this: Mat; row: int; col: int): StandardReal {.noSideEffect,
    importcpp: "Value", header: "gp_Mat.hxx".}
proc `()`*(this: Mat; row: int; col: int): StandardReal {.noSideEffect,
    importcpp: "#(@)", header: "gp_Mat.hxx".}
proc changeValue*(this: var Mat; row: int; col: int): var StandardReal {.
    importcpp: "ChangeValue", header: "gp_Mat.hxx".}
proc `()`*(this: var Mat; row: int; col: int): var StandardReal {.importcpp: "#(@)",
    header: "gp_Mat.hxx".}
proc isSingular*(this: Mat): StandardBoolean {.noSideEffect, importcpp: "IsSingular",
    header: "gp_Mat.hxx".}
proc add*(this: var Mat; other: Mat) {.importcpp: "Add", header: "gp_Mat.hxx".}
proc `+=`*(this: var Mat; other: Mat) {.importcpp: "(# += #)", header: "gp_Mat.hxx".}
proc added*(this: Mat; other: Mat): Mat {.noSideEffect, importcpp: "Added",
                                    header: "gp_Mat.hxx".}
proc `+`*(this: Mat; other: Mat): Mat {.noSideEffect, importcpp: "(# + #)",
                                  header: "gp_Mat.hxx".}
proc divide*(this: var Mat; scalar: StandardReal) {.importcpp: "Divide",
    header: "gp_Mat.hxx".}
proc `/=`*(this: var Mat; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: "gp_Mat.hxx".}
proc divided*(this: Mat; scalar: StandardReal): Mat {.noSideEffect,
    importcpp: "Divided", header: "gp_Mat.hxx".}
proc `/`*(this: Mat; scalar: StandardReal): Mat {.noSideEffect, importcpp: "(# / #)",
    header: "gp_Mat.hxx".}
proc invert*(this: var Mat) {.importcpp: "Invert", header: "gp_Mat.hxx".}
proc inverted*(this: Mat): Mat {.noSideEffect, importcpp: "Inverted",
                             header: "gp_Mat.hxx".}
proc multiplied*(this: Mat; other: Mat): Mat {.noSideEffect, importcpp: "Multiplied",
    header: "gp_Mat.hxx".}
proc `*`*(this: Mat; other: Mat): Mat {.noSideEffect, importcpp: "(# * #)",
                                  header: "gp_Mat.hxx".}
proc multiply*(this: var Mat; other: Mat) {.importcpp: "Multiply", header: "gp_Mat.hxx".}
proc `*=`*(this: var Mat; other: Mat) {.importcpp: "(# *= #)", header: "gp_Mat.hxx".}
proc preMultiply*(this: var Mat; other: Mat) {.importcpp: "PreMultiply",
    header: "gp_Mat.hxx".}
proc multiplied*(this: Mat; scalar: StandardReal): Mat {.noSideEffect,
    importcpp: "Multiplied", header: "gp_Mat.hxx".}
proc `*`*(this: Mat; scalar: StandardReal): Mat {.noSideEffect, importcpp: "(# * #)",
    header: "gp_Mat.hxx".}
proc multiply*(this: var Mat; scalar: StandardReal) {.importcpp: "Multiply",
    header: "gp_Mat.hxx".}
proc `*=`*(this: var Mat; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: "gp_Mat.hxx".}
proc power*(this: var Mat; n: int) {.importcpp: "Power", header: "gp_Mat.hxx".}
proc powered*(this: Mat; n: int): Mat {.noSideEffect, importcpp: "Powered",
                                  header: "gp_Mat.hxx".}
proc subtract*(this: var Mat; other: Mat) {.importcpp: "Subtract", header: "gp_Mat.hxx".}
proc `-=`*(this: var Mat; other: Mat) {.importcpp: "(# -= #)", header: "gp_Mat.hxx".}
proc subtracted*(this: Mat; other: Mat): Mat {.noSideEffect, importcpp: "Subtracted",
    header: "gp_Mat.hxx".}
proc `-`*(this: Mat; other: Mat): Mat {.noSideEffect, importcpp: "(# - #)",
                                  header: "gp_Mat.hxx".}
proc transpose*(this: var Mat) {.importcpp: "Transpose", header: "gp_Mat.hxx".}
proc transposed*(this: Mat): Mat {.noSideEffect, importcpp: "Transposed",
                               header: "gp_Mat.hxx".}
proc dumpJson*(this: Mat; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Mat.hxx".}