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
  Mat* {.importcpp: "gp_Mat", header: "gp_Mat.hxx", bycopy.} = object ## ! creates  a matrix with null coefficients.


proc newMat*(): Mat {.cdecl, constructor, importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc newMat*(a11: cfloat; a12: cfloat; a13: cfloat; a21: cfloat; a22: cfloat; a23: cfloat;
            a31: cfloat; a32: cfloat; a33: cfloat): Mat {.cdecl, constructor,
    importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc newMat*(col1: Xyz; col2: Xyz; col3: Xyz): Mat {.cdecl, constructor,
    importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc setCol*(this: var Mat; col: cint; value: Xyz) {.cdecl, importcpp: "SetCol",
    header: "gp_Mat.hxx".}
proc setCols*(this: var Mat; col1: Xyz; col2: Xyz; col3: Xyz) {.cdecl,
    importcpp: "SetCols", header: "gp_Mat.hxx".}
proc setCross*(this: var Mat; `ref`: Xyz) {.cdecl, importcpp: "SetCross", header: "gp_Mat.hxx".}
proc setDiagonal*(this: var Mat; x1: cfloat; x2: cfloat; x3: cfloat) {.cdecl,
    importcpp: "SetDiagonal", header: "gp_Mat.hxx".}
proc setDot*(this: var Mat; `ref`: Xyz) {.cdecl, importcpp: "SetDot", header: "gp_Mat.hxx".}
proc setIdentity*(this: var Mat) {.cdecl, importcpp: "SetIdentity", header: "gp_Mat.hxx".}
proc setRotation*(this: var Mat; axis: Xyz; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "gp_Mat.hxx".}
proc setRow*(this: var Mat; row: cint; value: Xyz) {.cdecl, importcpp: "SetRow",
    header: "gp_Mat.hxx".}
proc setRows*(this: var Mat; row1: Xyz; row2: Xyz; row3: Xyz) {.cdecl,
    importcpp: "SetRows", header: "gp_Mat.hxx".}
proc setScale*(this: var Mat; s: cfloat) {.cdecl, importcpp: "SetScale", header: "gp_Mat.hxx".}
proc setValue*(this: var Mat; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "gp_Mat.hxx".}
proc column*(this: Mat; col: cint): Xyz {.noSideEffect, cdecl, importcpp: "Column",
                                    header: "gp_Mat.hxx".}
proc determinant*(this: Mat): cfloat {.noSideEffect, cdecl, importcpp: "Determinant",
                                   header: "gp_Mat.hxx".}
proc diagonal*(this: Mat): Xyz {.noSideEffect, cdecl, importcpp: "Diagonal",
                             header: "gp_Mat.hxx".}
proc row*(this: Mat; row: cint): Xyz {.noSideEffect, cdecl, importcpp: "Row",
                                 header: "gp_Mat.hxx".}
proc value*(this: Mat; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Mat.hxx".}
proc `()`*(this: Mat; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "gp_Mat.hxx".}
proc changeValue*(this: var Mat; row: cint; col: cint): var cfloat {.cdecl,
    importcpp: "ChangeValue", header: "gp_Mat.hxx".}
proc `()`*(this: var Mat; row: cint; col: cint): var cfloat {.cdecl, importcpp: "#(@)",
    header: "gp_Mat.hxx".}
proc isSingular*(this: Mat): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                header: "gp_Mat.hxx".}
proc add*(this: var Mat; other: Mat) {.cdecl, importcpp: "Add", header: "gp_Mat.hxx".}
proc `+=`*(this: var Mat; other: Mat) {.cdecl, importcpp: "(# += #)", header: "gp_Mat.hxx".}
proc added*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl, importcpp: "Added",
                                    header: "gp_Mat.hxx".}
proc `+`*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  header: "gp_Mat.hxx".}
proc divide*(this: var Mat; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_Mat.hxx".}
proc `/=`*(this: var Mat; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_Mat.hxx".}
proc divided*(this: Mat; scalar: cfloat): Mat {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Mat.hxx".}
proc `/`*(this: Mat; scalar: cfloat): Mat {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      header: "gp_Mat.hxx".}
proc invert*(this: var Mat) {.cdecl, importcpp: "Invert", header: "gp_Mat.hxx".}
proc inverted*(this: Mat): Mat {.noSideEffect, cdecl, importcpp: "Inverted",
                             header: "gp_Mat.hxx".}
proc multiplied*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat.hxx".}
proc `*`*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                  header: "gp_Mat.hxx".}
proc multiply*(this: var Mat; other: Mat) {.cdecl, importcpp: "Multiply", header: "gp_Mat.hxx".}
proc `*=`*(this: var Mat; other: Mat) {.cdecl, importcpp: "(# *= #)", header: "gp_Mat.hxx".}
proc preMultiply*(this: var Mat; other: Mat) {.cdecl, importcpp: "PreMultiply",
    header: "gp_Mat.hxx".}
proc multiplied*(this: Mat; scalar: cfloat): Mat {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat.hxx".}
proc `*`*(this: Mat; scalar: cfloat): Mat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      header: "gp_Mat.hxx".}
proc multiply*(this: var Mat; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Mat.hxx".}
proc `*=`*(this: var Mat; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_Mat.hxx".}
proc power*(this: var Mat; n: cint) {.cdecl, importcpp: "Power", header: "gp_Mat.hxx".}
proc powered*(this: Mat; n: cint): Mat {.noSideEffect, cdecl, importcpp: "Powered",
                                   header: "gp_Mat.hxx".}
proc subtract*(this: var Mat; other: Mat) {.cdecl, importcpp: "Subtract", header: "gp_Mat.hxx".}
proc `-=`*(this: var Mat; other: Mat) {.cdecl, importcpp: "(# -= #)", header: "gp_Mat.hxx".}
proc subtracted*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Mat.hxx".}
proc `-`*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  header: "gp_Mat.hxx".}
proc transpose*(this: var Mat) {.cdecl, importcpp: "Transpose", header: "gp_Mat.hxx".}
proc transposed*(this: Mat): Mat {.noSideEffect, cdecl, importcpp: "Transposed",
                               header: "gp_Mat.hxx".}
proc dumpJson*(this: Mat; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Mat.hxx".}