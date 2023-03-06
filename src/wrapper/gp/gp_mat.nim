{.experimental: "callOperator".}
import gp_types
#import ../ncollection/ncollection_types
import ../standard/standard_types

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

proc mat*(): gp_Mat {.cdecl, constructor, importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc mat*(a11: cfloat; a12: cfloat; a13: cfloat; a21: cfloat; a22: cfloat; a23: cfloat;
            a31: cfloat; a32: cfloat; a33: cfloat): gp_Mat {.cdecl, constructor,
    importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc mat*(col1: gp_Xyz; col2: gp_Xyz; col3: gp_Xyz): gp_Mat {.cdecl, constructor,
    importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc setCol*(this: var gp_Mat; col: cint; value: gp_Xyz) {.cdecl, importcpp: "SetCol",
    header: "gp_Mat.hxx".}
proc setCols*(this: var gp_Mat; col1: gp_Xyz; col2: gp_Xyz; col3: gp_Xyz) {.cdecl,
    importcpp: "SetCols", header: "gp_Mat.hxx".}
proc setCross*(this: var gp_Mat; `ref`: gp_Xyz) {.cdecl, importcpp: "SetCross", header: "gp_Mat.hxx".}
proc setDiagonal*(this: var gp_Mat; x1: cfloat; x2: cfloat; x3: cfloat) {.cdecl,
    importcpp: "SetDiagonal", header: "gp_Mat.hxx".}
proc setDot*(this: var gp_Mat; `ref`: gp_Xyz) {.cdecl, importcpp: "SetDot", header: "gp_Mat.hxx".}
proc setIdentity*(this: var gp_Mat) {.cdecl, importcpp: "SetIdentity", header: "gp_Mat.hxx".}
proc setRotation*(this: var gp_Mat; axis: gp_Xyz; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "gp_Mat.hxx".}
proc setRow*(this: var gp_Mat; row: cint; value: gp_Xyz) {.cdecl, importcpp: "SetRow",
    header: "gp_Mat.hxx".}
proc setRows*(this: var gp_Mat; row1: gp_Xyz; row2: gp_Xyz; row3: gp_Xyz) {.cdecl,
    importcpp: "SetRows", header: "gp_Mat.hxx".}
proc setScale*(this: var gp_Mat; s: cfloat) {.cdecl, importcpp: "SetScale", header: "gp_Mat.hxx".}
proc setValue*(this: var gp_Mat; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "gp_Mat.hxx".}
proc column*(this: gp_Mat; col: cint): gp_Xyz {.noSideEffect, cdecl, importcpp: "Column",
                                    header: "gp_Mat.hxx".}
proc determinant*(this: gp_Mat): cfloat {.noSideEffect, cdecl, importcpp: "Determinant",
                                   header: "gp_Mat.hxx".}
proc diagonal*(this: gp_Mat): gp_Xyz {.noSideEffect, cdecl, importcpp: "Diagonal",
                             header: "gp_Mat.hxx".}
proc row*(this: gp_Mat; row: cint): gp_Xyz {.noSideEffect, cdecl, importcpp: "Row",
                                 header: "gp_Mat.hxx".}
proc value*(this: gp_Mat; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Mat.hxx".}
proc `()`*(this: gp_Mat; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "gp_Mat.hxx".}
proc changeValue*(this: var gp_Mat; row: cint; col: cint): var cfloat {.cdecl,
    importcpp: "ChangeValue", header: "gp_Mat.hxx".}
proc `()`*(this: var gp_Mat; row: cint; col: cint): var cfloat {.cdecl, importcpp: "#(@)",
    header: "gp_Mat.hxx".}
proc isSingular*(this: gp_Mat): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                header: "gp_Mat.hxx".}
proc add*(this: var gp_Mat; other: gp_Mat) {.cdecl, importcpp: "Add", header: "gp_Mat.hxx".}
proc `+=`*(this: var gp_Mat; other: gp_Mat) {.cdecl, importcpp: "(# += #)", header: "gp_Mat.hxx".}
proc added*(this: gp_Mat; other: gp_Mat): gp_Mat {.noSideEffect, cdecl, importcpp: "Added",
                                    header: "gp_Mat.hxx".}
proc `+`*(this: gp_Mat; other: gp_Mat): gp_Mat {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  header: "gp_Mat.hxx".}
proc divide*(this: var gp_Mat; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_Mat.hxx".}
proc `/=`*(this: var gp_Mat; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_Mat.hxx".}
proc divided*(this: gp_Mat; scalar: cfloat): gp_Mat {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Mat.hxx".}
proc `/`*(this: gp_Mat; scalar: cfloat): gp_Mat {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      header: "gp_Mat.hxx".}
proc invert*(this: var gp_Mat) {.cdecl, importcpp: "Invert", header: "gp_Mat.hxx".}
proc inverted*(this: gp_Mat): gp_Mat {.noSideEffect, cdecl, importcpp: "Inverted",
                             header: "gp_Mat.hxx".}
proc multiplied*(this: gp_Mat; other: gp_Mat): gp_Mat {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat.hxx".}
proc `*`*(this: gp_Mat; other: gp_Mat): gp_Mat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                  header: "gp_Mat.hxx".}
proc multiply*(this: var gp_Mat; other: gp_Mat) {.cdecl, importcpp: "Multiply", header: "gp_Mat.hxx".}
proc `*=`*(this: var gp_Mat; other: gp_Mat) {.cdecl, importcpp: "(# *= #)", header: "gp_Mat.hxx".}
proc preMultiply*(this: var gp_Mat; other: gp_Mat) {.cdecl, importcpp: "PreMultiply",
    header: "gp_Mat.hxx".}
proc multiplied*(this: gp_Mat; scalar: cfloat): gp_Mat {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat.hxx".}
proc `*`*(this: gp_Mat; scalar: cfloat): gp_Mat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      header: "gp_Mat.hxx".}
proc multiply*(this: var gp_Mat; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Mat.hxx".}
proc `*=`*(this: var gp_Mat; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_Mat.hxx".}
proc power*(this: var gp_Mat; n: cint) {.cdecl, importcpp: "Power", header: "gp_Mat.hxx".}
proc powered*(this: gp_Mat; n: cint): gp_Mat {.noSideEffect, cdecl, importcpp: "Powered",
                                   header: "gp_Mat.hxx".}
proc subtract*(this: var gp_Mat; other: gp_Mat) {.cdecl, importcpp: "Subtract", header: "gp_Mat.hxx".}
proc `-=`*(this: var gp_Mat; other: gp_Mat) {.cdecl, importcpp: "(# -= #)", header: "gp_Mat.hxx".}
proc subtracted*(this: gp_Mat; other: gp_Mat): gp_Mat {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Mat.hxx".}
proc `-`*(this: gp_Mat; other: gp_Mat): gp_Mat {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  header: "gp_Mat.hxx".}
proc transpose*(this: var gp_Mat) {.cdecl, importcpp: "Transpose", header: "gp_Mat.hxx".}
proc transposed*(this: gp_Mat): gp_Mat {.noSideEffect, cdecl, importcpp: "Transposed",
                               header: "gp_Mat.hxx".}
proc dumpJson*(this: gp_Mat; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Mat.hxx".}
