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
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_XY"
type
  Mat2d* {.importcpp: "gp_Mat2d", header: "gp_Mat2d.hxx", bycopy.} = object ## ! Creates  a matrix with null
                                                                    ## coefficients.


proc newMat2d*(): Mat2d {.cdecl, constructor, importcpp: "gp_Mat2d(@)", header: "gp_Mat2d.hxx".}
proc newMat2d*(col1: Xy; col2: Xy): Mat2d {.cdecl, constructor,
                                      importcpp: "gp_Mat2d(@)", header: "gp_Mat2d.hxx".}
proc setCol*(this: var Mat2d; col: cint; value: Xy) {.cdecl, importcpp: "SetCol",
    header: "gp_Mat2d.hxx".}
proc setCols*(this: var Mat2d; col1: Xy; col2: Xy) {.cdecl, importcpp: "SetCols",
    header: "gp_Mat2d.hxx".}
proc setDiagonal*(this: var Mat2d; x1: cfloat; x2: cfloat) {.cdecl,
    importcpp: "SetDiagonal", header: "gp_Mat2d.hxx".}
proc setIdentity*(this: var Mat2d) {.cdecl, importcpp: "SetIdentity", header: "gp_Mat2d.hxx".}
proc setRotation*(this: var Mat2d; ang: cfloat) {.cdecl, importcpp: "SetRotation",
    header: "gp_Mat2d.hxx".}
proc setRow*(this: var Mat2d; row: cint; value: Xy) {.cdecl, importcpp: "SetRow",
    header: "gp_Mat2d.hxx".}
proc setRows*(this: var Mat2d; row1: Xy; row2: Xy) {.cdecl, importcpp: "SetRows",
    header: "gp_Mat2d.hxx".}
proc setScale*(this: var Mat2d; s: cfloat) {.cdecl, importcpp: "SetScale", header: "gp_Mat2d.hxx".}
proc setValue*(this: var Mat2d; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "gp_Mat2d.hxx".}
proc column*(this: Mat2d; col: cint): Xy {.noSideEffect, cdecl, importcpp: "Column",
                                     header: "gp_Mat2d.hxx".}
proc determinant*(this: Mat2d): cfloat {.noSideEffect, cdecl,
                                     importcpp: "Determinant", header: "gp_Mat2d.hxx".}
proc diagonal*(this: Mat2d): Xy {.noSideEffect, cdecl, importcpp: "Diagonal",
                              header: "gp_Mat2d.hxx".}
proc row*(this: Mat2d; row: cint): Xy {.noSideEffect, cdecl, importcpp: "Row",
                                  header: "gp_Mat2d.hxx".}
proc value*(this: Mat2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Mat2d.hxx".}
proc `()`*(this: Mat2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "gp_Mat2d.hxx".}
proc changeValue*(this: var Mat2d; row: cint; col: cint): var cfloat {.cdecl,
    importcpp: "ChangeValue", header: "gp_Mat2d.hxx".}
proc `()`*(this: var Mat2d; row: cint; col: cint): var cfloat {.cdecl, importcpp: "#(@)",
    header: "gp_Mat2d.hxx".}
proc isSingular*(this: Mat2d): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                  header: "gp_Mat2d.hxx".}
proc add*(this: var Mat2d; other: Mat2d) {.cdecl, importcpp: "Add", header: "gp_Mat2d.hxx".}
proc `+=`*(this: var Mat2d; other: Mat2d) {.cdecl, importcpp: "(# += #)", header: "gp_Mat2d.hxx".}
proc added*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, cdecl, importcpp: "Added",
    header: "gp_Mat2d.hxx".}
proc `+`*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, cdecl, importcpp: "(# + #)",
                                        header: "gp_Mat2d.hxx".}
proc divide*(this: var Mat2d; scalar: cfloat) {.cdecl, importcpp: "Divide",
    header: "gp_Mat2d.hxx".}
proc `/=`*(this: var Mat2d; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
                                        header: "gp_Mat2d.hxx".}
proc divided*(this: Mat2d; scalar: cfloat): Mat2d {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Mat2d.hxx".}
proc `/`*(this: Mat2d; scalar: cfloat): Mat2d {.noSideEffect, cdecl,
    importcpp: "(# / #)", header: "gp_Mat2d.hxx".}
proc invert*(this: var Mat2d) {.cdecl, importcpp: "Invert", header: "gp_Mat2d.hxx".}
proc inverted*(this: Mat2d): Mat2d {.noSideEffect, cdecl, importcpp: "Inverted",
                                 header: "gp_Mat2d.hxx".}
proc multiplied*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat2d.hxx".}
proc `*`*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, cdecl, importcpp: "(# * #)",
                                        header: "gp_Mat2d.hxx".}
proc multiply*(this: var Mat2d; other: Mat2d) {.cdecl, importcpp: "Multiply",
    header: "gp_Mat2d.hxx".}
proc preMultiply*(this: var Mat2d; other: Mat2d) {.cdecl, importcpp: "PreMultiply",
    header: "gp_Mat2d.hxx".}
proc multiplied*(this: Mat2d; scalar: cfloat): Mat2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat2d.hxx".}
proc `*`*(this: Mat2d; scalar: cfloat): Mat2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Mat2d.hxx".}
proc multiply*(this: var Mat2d; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Mat2d.hxx".}
proc `*=`*(this: var Mat2d; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
                                        header: "gp_Mat2d.hxx".}
proc power*(this: var Mat2d; n: cint) {.cdecl, importcpp: "Power", header: "gp_Mat2d.hxx".}
proc powered*(this: Mat2d; n: cint): Mat2d {.noSideEffect, cdecl, importcpp: "Powered",
                                       header: "gp_Mat2d.hxx".}
proc subtract*(this: var Mat2d; other: Mat2d) {.cdecl, importcpp: "Subtract",
    header: "gp_Mat2d.hxx".}
proc `-=`*(this: var Mat2d; other: Mat2d) {.cdecl, importcpp: "(# -= #)", header: "gp_Mat2d.hxx".}
proc subtracted*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Mat2d.hxx".}
proc `-`*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, cdecl, importcpp: "(# - #)",
                                        header: "gp_Mat2d.hxx".}
proc transpose*(this: var Mat2d) {.cdecl, importcpp: "Transpose", header: "gp_Mat2d.hxx".}
proc transposed*(this: Mat2d): Mat2d {.noSideEffect, cdecl, importcpp: "Transposed",
                                   header: "gp_Mat2d.hxx".}