{.experimental: "callOperator".}
import gp_types
#import ../ncollection/ncollection_types
#import ../standard/standard_types
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

proc mat2d*(): gp_Mat2d {.cdecl, constructor, importcpp: "gp_Mat2d(@)", header: "gp_Mat2d.hxx".}
proc mat2d*(col1: gp_Xy; col2: gp_Xy): gp_Mat2d {.cdecl, constructor,
                                      importcpp: "gp_Mat2d(@)", header: "gp_Mat2d.hxx".}
proc setCol*(this: var gp_Mat2d; col: cint; value: gp_Xy) {.cdecl, importcpp: "SetCol",
    header: "gp_Mat2d.hxx".}
proc setCols*(this: var gp_Mat2d; col1: gp_Xy; col2: gp_Xy) {.cdecl, importcpp: "SetCols",
    header: "gp_Mat2d.hxx".}
proc setDiagonal*(this: var gp_Mat2d; x1: cfloat; x2: cfloat) {.cdecl,
    importcpp: "SetDiagonal", header: "gp_Mat2d.hxx".}
proc setIdentity*(this: var gp_Mat2d) {.cdecl, importcpp: "SetIdentity", header: "gp_Mat2d.hxx".}
proc setRotation*(this: var gp_Mat2d; ang: cfloat) {.cdecl, importcpp: "SetRotation",
    header: "gp_Mat2d.hxx".}
proc setRow*(this: var gp_Mat2d; row: cint; value: gp_Xy) {.cdecl, importcpp: "SetRow",
    header: "gp_Mat2d.hxx".}
proc setRows*(this: var gp_Mat2d; row1: gp_Xy; row2: gp_Xy) {.cdecl, importcpp: "SetRows",
    header: "gp_Mat2d.hxx".}
proc setScale*(this: var gp_Mat2d; s: cfloat) {.cdecl, importcpp: "SetScale", header: "gp_Mat2d.hxx".}
proc setValue*(this: var gp_Mat2d; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "gp_Mat2d.hxx".}
proc column*(this: gp_Mat2d; col: cint): gp_Xy {.noSideEffect, cdecl, importcpp: "Column",
                                     header: "gp_Mat2d.hxx".}
proc determinant*(this: gp_Mat2d): cfloat {.noSideEffect, cdecl,
                                     importcpp: "Determinant", header: "gp_Mat2d.hxx".}
proc diagonal*(this: gp_Mat2d): gp_Xy {.noSideEffect, cdecl, importcpp: "Diagonal",
                              header: "gp_Mat2d.hxx".}
proc row*(this: gp_Mat2d; row: cint): gp_Xy {.noSideEffect, cdecl, importcpp: "Row",
                                  header: "gp_Mat2d.hxx".}
proc value*(this: gp_Mat2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Mat2d.hxx".}
proc `()`*(this: gp_Mat2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "gp_Mat2d.hxx".}
proc changeValue*(this: var gp_Mat2d; row: cint; col: cint): var cfloat {.cdecl,
    importcpp: "ChangeValue", header: "gp_Mat2d.hxx".}
proc `()`*(this: var gp_Mat2d; row: cint; col: cint): var cfloat {.cdecl, importcpp: "#(@)",
    header: "gp_Mat2d.hxx".}
proc isSingular*(this: gp_Mat2d): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                  header: "gp_Mat2d.hxx".}
proc add*(this: var gp_Mat2d; other: gp_Mat2d) {.cdecl, importcpp: "Add", header: "gp_Mat2d.hxx".}
proc `+=`*(this: var gp_Mat2d; other: gp_Mat2d) {.cdecl, importcpp: "(# += #)", header: "gp_Mat2d.hxx".}
proc added*(this: gp_Mat2d; other: gp_Mat2d): gp_Mat2d {.noSideEffect, cdecl, importcpp: "Added",
    header: "gp_Mat2d.hxx".}
proc `+`*(this: gp_Mat2d; other: gp_Mat2d): gp_Mat2d {.noSideEffect, cdecl, importcpp: "(# + #)",
                                        header: "gp_Mat2d.hxx".}
proc divide*(this: var gp_Mat2d; scalar: cfloat) {.cdecl, importcpp: "Divide",
    header: "gp_Mat2d.hxx".}
proc `/=`*(this: var gp_Mat2d; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
                                        header: "gp_Mat2d.hxx".}
proc divided*(this: gp_Mat2d; scalar: cfloat): gp_Mat2d {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Mat2d.hxx".}
proc `/`*(this: gp_Mat2d; scalar: cfloat): gp_Mat2d {.noSideEffect, cdecl,
    importcpp: "(# / #)", header: "gp_Mat2d.hxx".}
proc invert*(this: var gp_Mat2d) {.cdecl, importcpp: "Invert", header: "gp_Mat2d.hxx".}
proc inverted*(this: gp_Mat2d): gp_Mat2d {.noSideEffect, cdecl, importcpp: "Inverted",
                                 header: "gp_Mat2d.hxx".}
proc multiplied*(this: gp_Mat2d; other: gp_Mat2d): gp_Mat2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat2d.hxx".}
proc `*`*(this: gp_Mat2d; other: gp_Mat2d): gp_Mat2d {.noSideEffect, cdecl, importcpp: "(# * #)",
                                        header: "gp_Mat2d.hxx".}
proc multiply*(this: var gp_Mat2d; other: gp_Mat2d) {.cdecl, importcpp: "Multiply",
    header: "gp_Mat2d.hxx".}
proc preMultiply*(this: var gp_Mat2d; other: gp_Mat2d) {.cdecl, importcpp: "PreMultiply",
    header: "gp_Mat2d.hxx".}
proc multiplied*(this: gp_Mat2d; scalar: cfloat): gp_Mat2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat2d.hxx".}
proc `*`*(this: gp_Mat2d; scalar: cfloat): gp_Mat2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Mat2d.hxx".}
proc multiply*(this: var gp_Mat2d; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Mat2d.hxx".}
proc `*=`*(this: var gp_Mat2d; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
                                        header: "gp_Mat2d.hxx".}
proc power*(this: var gp_Mat2d; n: cint) {.cdecl, importcpp: "Power", header: "gp_Mat2d.hxx".}
proc powered*(this: gp_Mat2d; n: cint): gp_Mat2d {.noSideEffect, cdecl, importcpp: "Powered",
                                       header: "gp_Mat2d.hxx".}
proc subtract*(this: var gp_Mat2d; other: gp_Mat2d) {.cdecl, importcpp: "Subtract",
    header: "gp_Mat2d.hxx".}
proc `-=`*(this: var gp_Mat2d; other: gp_Mat2d) {.cdecl, importcpp: "(# -= #)", header: "gp_Mat2d.hxx".}
proc subtracted*(this: gp_Mat2d; other: gp_Mat2d): gp_Mat2d {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Mat2d.hxx".}
proc `-`*(this: gp_Mat2d; other: gp_Mat2d): gp_Mat2d {.noSideEffect, cdecl, importcpp: "(# - #)",
                                        header: "gp_Mat2d.hxx".}
proc transpose*(this: var gp_Mat2d) {.cdecl, importcpp: "Transpose", header: "gp_Mat2d.hxx".}
proc transposed*(this: gp_Mat2d): gp_Mat2d {.noSideEffect, cdecl, importcpp: "Transposed",
                                   header: "gp_Mat2d.hxx".}
