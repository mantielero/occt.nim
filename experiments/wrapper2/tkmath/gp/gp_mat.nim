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


proc newMat*(): Mat {.cdecl, constructor, importcpp: "gp_Mat(@)", dynlib: tkmath.}
proc newMat*(a11: cfloat; a12: cfloat; a13: cfloat; a21: cfloat; a22: cfloat; a23: cfloat;
            a31: cfloat; a32: cfloat; a33: cfloat): Mat {.cdecl, constructor,
    importcpp: "gp_Mat(@)", dynlib: tkmath.}
proc newMat*(col1: Xyz; col2: Xyz; col3: Xyz): Mat {.cdecl, constructor,
    importcpp: "gp_Mat(@)", dynlib: tkmath.}
proc setCol*(this: var Mat; col: cint; value: Xyz) {.cdecl, importcpp: "SetCol",
    dynlib: tkmath.}
proc setCols*(this: var Mat; col1: Xyz; col2: Xyz; col3: Xyz) {.cdecl,
    importcpp: "SetCols", dynlib: tkmath.}
proc setCross*(this: var Mat; `ref`: Xyz) {.cdecl, importcpp: "SetCross", dynlib: tkmath.}
proc setDiagonal*(this: var Mat; x1: cfloat; x2: cfloat; x3: cfloat) {.cdecl,
    importcpp: "SetDiagonal", dynlib: tkmath.}
proc setDot*(this: var Mat; `ref`: Xyz) {.cdecl, importcpp: "SetDot", dynlib: tkmath.}
proc setIdentity*(this: var Mat) {.cdecl, importcpp: "SetIdentity", dynlib: tkmath.}
proc setRotation*(this: var Mat; axis: Xyz; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", dynlib: tkmath.}
proc setRow*(this: var Mat; row: cint; value: Xyz) {.cdecl, importcpp: "SetRow",
    dynlib: tkmath.}
proc setRows*(this: var Mat; row1: Xyz; row2: Xyz; row3: Xyz) {.cdecl,
    importcpp: "SetRows", dynlib: tkmath.}
proc setScale*(this: var Mat; s: cfloat) {.cdecl, importcpp: "SetScale", dynlib: tkmath.}
proc setValue*(this: var Mat; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc column*(this: Mat; col: cint): Xyz {.noSideEffect, cdecl, importcpp: "Column",
                                    dynlib: tkmath.}
proc determinant*(this: Mat): cfloat {.noSideEffect, cdecl, importcpp: "Determinant",
                                   dynlib: tkmath.}
proc diagonal*(this: Mat): Xyz {.noSideEffect, cdecl, importcpp: "Diagonal",
                             dynlib: tkmath.}
proc row*(this: Mat; row: cint): Xyz {.noSideEffect, cdecl, importcpp: "Row",
                                 dynlib: tkmath.}
proc value*(this: Mat; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc `()`*(this: Mat; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc changeValue*(this: var Mat; row: cint; col: cint): var cfloat {.cdecl,
    importcpp: "ChangeValue", dynlib: tkmath.}
proc `()`*(this: var Mat; row: cint; col: cint): var cfloat {.cdecl, importcpp: "#(@)",
    dynlib: tkmath.}
proc isSingular*(this: Mat): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                dynlib: tkmath.}
proc add*(this: var Mat; other: Mat) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var Mat; other: Mat) {.cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl, importcpp: "Added",
                                    dynlib: tkmath.}
proc `+`*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  dynlib: tkmath.}
proc divide*(this: var Mat; scalar: cfloat) {.cdecl, importcpp: "Divide", dynlib: tkmath.}
proc `/=`*(this: var Mat; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", dynlib: tkmath.}
proc divided*(this: Mat; scalar: cfloat): Mat {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: Mat; scalar: cfloat): Mat {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      dynlib: tkmath.}
proc invert*(this: var Mat) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: Mat): Mat {.noSideEffect, cdecl, importcpp: "Inverted",
                             dynlib: tkmath.}
proc multiplied*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                  dynlib: tkmath.}
proc multiply*(this: var Mat; other: Mat) {.cdecl, importcpp: "Multiply", dynlib: tkmath.}
proc `*=`*(this: var Mat; other: Mat) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc preMultiply*(this: var Mat; other: Mat) {.cdecl, importcpp: "PreMultiply",
    dynlib: tkmath.}
proc multiplied*(this: Mat; scalar: cfloat): Mat {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Mat; scalar: cfloat): Mat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      dynlib: tkmath.}
proc multiply*(this: var Mat; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var Mat; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc power*(this: var Mat; n: cint) {.cdecl, importcpp: "Power", dynlib: tkmath.}
proc powered*(this: Mat; n: cint): Mat {.noSideEffect, cdecl, importcpp: "Powered",
                                   dynlib: tkmath.}
proc subtract*(this: var Mat; other: Mat) {.cdecl, importcpp: "Subtract", dynlib: tkmath.}
proc `-=`*(this: var Mat; other: Mat) {.cdecl, importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: Mat; other: Mat): Mat {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  dynlib: tkmath.}
proc transpose*(this: var Mat) {.cdecl, importcpp: "Transpose", dynlib: tkmath.}
proc transposed*(this: Mat): Mat {.noSideEffect, cdecl, importcpp: "Transposed",
                               dynlib: tkmath.}
proc dumpJson*(this: Mat; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}