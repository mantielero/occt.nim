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


proc constructMat2d*(): Mat2d {.constructor, importcpp: "gp_Mat2d(@)",
                             header: "gp_Mat2d.hxx".}
proc constructMat2d*(col1: Xy; col2: Xy): Mat2d {.constructor,
    importcpp: "gp_Mat2d(@)", header: "gp_Mat2d.hxx".}
proc setCol*(this: var Mat2d; col: int; value: Xy) {.importcpp: "SetCol",
    header: "gp_Mat2d.hxx".}
proc setCols*(this: var Mat2d; col1: Xy; col2: Xy) {.importcpp: "SetCols",
    header: "gp_Mat2d.hxx".}
proc setDiagonal*(this: var Mat2d; x1: float; x2: float) {.importcpp: "SetDiagonal",
    header: "gp_Mat2d.hxx".}
proc setIdentity*(this: var Mat2d) {.importcpp: "SetIdentity", header: "gp_Mat2d.hxx".}
proc setRotation*(this: var Mat2d; ang: float) {.importcpp: "SetRotation",
    header: "gp_Mat2d.hxx".}
proc setRow*(this: var Mat2d; row: int; value: Xy) {.importcpp: "SetRow",
    header: "gp_Mat2d.hxx".}
proc setRows*(this: var Mat2d; row1: Xy; row2: Xy) {.importcpp: "SetRows",
    header: "gp_Mat2d.hxx".}
proc setScale*(this: var Mat2d; s: float) {.importcpp: "SetScale",
                                      header: "gp_Mat2d.hxx".}
proc setValue*(this: var Mat2d; row: int; col: int; value: float) {.importcpp: "SetValue",
    header: "gp_Mat2d.hxx".}
proc column*(this: Mat2d; col: int): Xy {.noSideEffect, importcpp: "Column",
                                    header: "gp_Mat2d.hxx".}
proc determinant*(this: Mat2d): float {.noSideEffect, importcpp: "Determinant",
                                    header: "gp_Mat2d.hxx".}
proc diagonal*(this: Mat2d): Xy {.noSideEffect, importcpp: "Diagonal",
                              header: "gp_Mat2d.hxx".}
proc row*(this: Mat2d; row: int): Xy {.noSideEffect, importcpp: "Row",
                                 header: "gp_Mat2d.hxx".}
proc value*(this: Mat2d; row: int; col: int): float {.noSideEffect, importcpp: "Value",
    header: "gp_Mat2d.hxx".}
proc `()`*(this: Mat2d; row: int; col: int): float {.noSideEffect, importcpp: "#(@)",
    header: "gp_Mat2d.hxx".}
proc changeValue*(this: var Mat2d; row: int; col: int): var float {.
    importcpp: "ChangeValue", header: "gp_Mat2d.hxx".}
proc `()`*(this: var Mat2d; row: int; col: int): var float {.importcpp: "#(@)",
    header: "gp_Mat2d.hxx".}
proc isSingular*(this: Mat2d): bool {.noSideEffect, importcpp: "IsSingular",
                                  header: "gp_Mat2d.hxx".}
proc add*(this: var Mat2d; other: Mat2d) {.importcpp: "Add", header: "gp_Mat2d.hxx".}
proc `+=`*(this: var Mat2d; other: Mat2d) {.importcpp: "(# += #)",
                                      header: "gp_Mat2d.hxx".}
proc added*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, importcpp: "Added",
    header: "gp_Mat2d.hxx".}
proc `+`*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, importcpp: "(# + #)",
                                        header: "gp_Mat2d.hxx".}
proc divide*(this: var Mat2d; scalar: float) {.importcpp: "Divide",
    header: "gp_Mat2d.hxx".}
proc `/=`*(this: var Mat2d; scalar: float) {.importcpp: "(# /= #)",
                                       header: "gp_Mat2d.hxx".}
proc divided*(this: Mat2d; scalar: float): Mat2d {.noSideEffect, importcpp: "Divided",
    header: "gp_Mat2d.hxx".}
proc `/`*(this: Mat2d; scalar: float): Mat2d {.noSideEffect, importcpp: "(# / #)",
    header: "gp_Mat2d.hxx".}
proc invert*(this: var Mat2d) {.importcpp: "Invert", header: "gp_Mat2d.hxx".}
proc inverted*(this: Mat2d): Mat2d {.noSideEffect, importcpp: "Inverted",
                                 header: "gp_Mat2d.hxx".}
proc multiplied*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect,
    importcpp: "Multiplied", header: "gp_Mat2d.hxx".}
proc `*`*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, importcpp: "(# * #)",
                                        header: "gp_Mat2d.hxx".}
proc multiply*(this: var Mat2d; other: Mat2d) {.importcpp: "Multiply",
    header: "gp_Mat2d.hxx".}
proc preMultiply*(this: var Mat2d; other: Mat2d) {.importcpp: "PreMultiply",
    header: "gp_Mat2d.hxx".}
proc multiplied*(this: Mat2d; scalar: float): Mat2d {.noSideEffect,
    importcpp: "Multiplied", header: "gp_Mat2d.hxx".}
proc `*`*(this: Mat2d; scalar: float): Mat2d {.noSideEffect, importcpp: "(# * #)",
    header: "gp_Mat2d.hxx".}
proc multiply*(this: var Mat2d; scalar: float) {.importcpp: "Multiply",
    header: "gp_Mat2d.hxx".}
proc `*=`*(this: var Mat2d; scalar: float) {.importcpp: "(# *= #)",
                                       header: "gp_Mat2d.hxx".}
proc power*(this: var Mat2d; n: int) {.importcpp: "Power", header: "gp_Mat2d.hxx".}
proc powered*(this: Mat2d; n: int): Mat2d {.noSideEffect, importcpp: "Powered",
                                      header: "gp_Mat2d.hxx".}
proc subtract*(this: var Mat2d; other: Mat2d) {.importcpp: "Subtract",
    header: "gp_Mat2d.hxx".}
proc `-=`*(this: var Mat2d; other: Mat2d) {.importcpp: "(# -= #)",
                                      header: "gp_Mat2d.hxx".}
proc subtracted*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect,
    importcpp: "Subtracted", header: "gp_Mat2d.hxx".}
proc `-`*(this: Mat2d; other: Mat2d): Mat2d {.noSideEffect, importcpp: "(# - #)",
                                        header: "gp_Mat2d.hxx".}
proc transpose*(this: var Mat2d) {.importcpp: "Transpose", header: "gp_Mat2d.hxx".}
proc transposed*(this: Mat2d): Mat2d {.noSideEffect, importcpp: "Transposed",
                                   header: "gp_Mat2d.hxx".}
