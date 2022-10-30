{.experimental: "callOperator".}
import gp_types
#import ../../tkernel/ncollection/ncollection_types
#import ../../tkernel/standard/standard_types
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

proc mat2d*(): Mat2dObj {.cdecl, constructor, importcpp: "gp_Mat2d(@)", header: "gp_Mat2d.hxx".}
proc mat2d*(col1: XyObj; col2: XyObj): Mat2dObj {.cdecl, constructor,
                                      importcpp: "gp_Mat2d(@)", header: "gp_Mat2d.hxx".}
proc setCol*(this: var Mat2dObj; col: cint; value: XyObj) {.cdecl, importcpp: "SetCol",
    header: "gp_Mat2d.hxx".}
proc setCols*(this: var Mat2dObj; col1: XyObj; col2: XyObj) {.cdecl, importcpp: "SetCols",
    header: "gp_Mat2d.hxx".}
proc setDiagonal*(this: var Mat2dObj; x1: cfloat; x2: cfloat) {.cdecl,
    importcpp: "SetDiagonal", header: "gp_Mat2d.hxx".}
proc setIdentity*(this: var Mat2dObj) {.cdecl, importcpp: "SetIdentity", header: "gp_Mat2d.hxx".}
proc setRotation*(this: var Mat2dObj; ang: cfloat) {.cdecl, importcpp: "SetRotation",
    header: "gp_Mat2d.hxx".}
proc setRow*(this: var Mat2dObj; row: cint; value: XyObj) {.cdecl, importcpp: "SetRow",
    header: "gp_Mat2d.hxx".}
proc setRows*(this: var Mat2dObj; row1: XyObj; row2: XyObj) {.cdecl, importcpp: "SetRows",
    header: "gp_Mat2d.hxx".}
proc setScale*(this: var Mat2dObj; s: cfloat) {.cdecl, importcpp: "SetScale", header: "gp_Mat2d.hxx".}
proc setValue*(this: var Mat2dObj; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "gp_Mat2d.hxx".}
proc column*(this: Mat2dObj; col: cint): XyObj {.noSideEffect, cdecl, importcpp: "Column",
                                     header: "gp_Mat2d.hxx".}
proc determinant*(this: Mat2dObj): cfloat {.noSideEffect, cdecl,
                                     importcpp: "Determinant", header: "gp_Mat2d.hxx".}
proc diagonal*(this: Mat2dObj): XyObj {.noSideEffect, cdecl, importcpp: "Diagonal",
                              header: "gp_Mat2d.hxx".}
proc row*(this: Mat2dObj; row: cint): XyObj {.noSideEffect, cdecl, importcpp: "Row",
                                  header: "gp_Mat2d.hxx".}
proc value*(this: Mat2dObj; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Mat2d.hxx".}
proc `()`*(this: Mat2dObj; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "gp_Mat2d.hxx".}
proc changeValue*(this: var Mat2dObj; row: cint; col: cint): var cfloat {.cdecl,
    importcpp: "ChangeValue", header: "gp_Mat2d.hxx".}
proc `()`*(this: var Mat2dObj; row: cint; col: cint): var cfloat {.cdecl, importcpp: "#(@)",
    header: "gp_Mat2d.hxx".}
proc isSingular*(this: Mat2dObj): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                  header: "gp_Mat2d.hxx".}
proc add*(this: var Mat2dObj; other: Mat2dObj) {.cdecl, importcpp: "Add", header: "gp_Mat2d.hxx".}
proc `+=`*(this: var Mat2dObj; other: Mat2dObj) {.cdecl, importcpp: "(# += #)", header: "gp_Mat2d.hxx".}
proc added*(this: Mat2dObj; other: Mat2dObj): Mat2dObj {.noSideEffect, cdecl, importcpp: "Added",
    header: "gp_Mat2d.hxx".}
proc `+`*(this: Mat2dObj; other: Mat2dObj): Mat2dObj {.noSideEffect, cdecl, importcpp: "(# + #)",
                                        header: "gp_Mat2d.hxx".}
proc divide*(this: var Mat2dObj; scalar: cfloat) {.cdecl, importcpp: "Divide",
    header: "gp_Mat2d.hxx".}
proc `/=`*(this: var Mat2dObj; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
                                        header: "gp_Mat2d.hxx".}
proc divided*(this: Mat2dObj; scalar: cfloat): Mat2dObj {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Mat2d.hxx".}
proc `/`*(this: Mat2dObj; scalar: cfloat): Mat2dObj {.noSideEffect, cdecl,
    importcpp: "(# / #)", header: "gp_Mat2d.hxx".}
proc invert*(this: var Mat2dObj) {.cdecl, importcpp: "Invert", header: "gp_Mat2d.hxx".}
proc inverted*(this: Mat2dObj): Mat2dObj {.noSideEffect, cdecl, importcpp: "Inverted",
                                 header: "gp_Mat2d.hxx".}
proc multiplied*(this: Mat2dObj; other: Mat2dObj): Mat2dObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat2d.hxx".}
proc `*`*(this: Mat2dObj; other: Mat2dObj): Mat2dObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                        header: "gp_Mat2d.hxx".}
proc multiply*(this: var Mat2dObj; other: Mat2dObj) {.cdecl, importcpp: "Multiply",
    header: "gp_Mat2d.hxx".}
proc preMultiply*(this: var Mat2dObj; other: Mat2dObj) {.cdecl, importcpp: "PreMultiply",
    header: "gp_Mat2d.hxx".}
proc multiplied*(this: Mat2dObj; scalar: cfloat): Mat2dObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat2d.hxx".}
proc `*`*(this: Mat2dObj; scalar: cfloat): Mat2dObj {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Mat2d.hxx".}
proc multiply*(this: var Mat2dObj; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Mat2d.hxx".}
proc `*=`*(this: var Mat2dObj; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
                                        header: "gp_Mat2d.hxx".}
proc power*(this: var Mat2dObj; n: cint) {.cdecl, importcpp: "Power", header: "gp_Mat2d.hxx".}
proc powered*(this: Mat2dObj; n: cint): Mat2dObj {.noSideEffect, cdecl, importcpp: "Powered",
                                       header: "gp_Mat2d.hxx".}
proc subtract*(this: var Mat2dObj; other: Mat2dObj) {.cdecl, importcpp: "Subtract",
    header: "gp_Mat2d.hxx".}
proc `-=`*(this: var Mat2dObj; other: Mat2dObj) {.cdecl, importcpp: "(# -= #)", header: "gp_Mat2d.hxx".}
proc subtracted*(this: Mat2dObj; other: Mat2dObj): Mat2dObj {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Mat2d.hxx".}
proc `-`*(this: Mat2dObj; other: Mat2dObj): Mat2dObj {.noSideEffect, cdecl, importcpp: "(# - #)",
                                        header: "gp_Mat2d.hxx".}
proc transpose*(this: var Mat2dObj) {.cdecl, importcpp: "Transpose", header: "gp_Mat2d.hxx".}
proc transposed*(this: Mat2dObj): Mat2dObj {.noSideEffect, cdecl, importcpp: "Transposed",
                                   header: "gp_Mat2d.hxx".}
