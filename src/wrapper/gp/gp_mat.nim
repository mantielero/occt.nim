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

proc mat*(): MatObj {.cdecl, constructor, importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc mat*(a11: cfloat; a12: cfloat; a13: cfloat; a21: cfloat; a22: cfloat; a23: cfloat;
            a31: cfloat; a32: cfloat; a33: cfloat): MatObj {.cdecl, constructor,
    importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc mat*(col1: XyzObj; col2: XyzObj; col3: XyzObj): MatObj {.cdecl, constructor,
    importcpp: "gp_Mat(@)", header: "gp_Mat.hxx".}
proc setCol*(this: var MatObj; col: cint; value: XyzObj) {.cdecl, importcpp: "SetCol",
    header: "gp_Mat.hxx".}
proc setCols*(this: var MatObj; col1: XyzObj; col2: XyzObj; col3: XyzObj) {.cdecl,
    importcpp: "SetCols", header: "gp_Mat.hxx".}
proc setCross*(this: var MatObj; `ref`: XyzObj) {.cdecl, importcpp: "SetCross", header: "gp_Mat.hxx".}
proc setDiagonal*(this: var MatObj; x1: cfloat; x2: cfloat; x3: cfloat) {.cdecl,
    importcpp: "SetDiagonal", header: "gp_Mat.hxx".}
proc setDot*(this: var MatObj; `ref`: XyzObj) {.cdecl, importcpp: "SetDot", header: "gp_Mat.hxx".}
proc setIdentity*(this: var MatObj) {.cdecl, importcpp: "SetIdentity", header: "gp_Mat.hxx".}
proc setRotation*(this: var MatObj; axis: XyzObj; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "gp_Mat.hxx".}
proc setRow*(this: var MatObj; row: cint; value: XyzObj) {.cdecl, importcpp: "SetRow",
    header: "gp_Mat.hxx".}
proc setRows*(this: var MatObj; row1: XyzObj; row2: XyzObj; row3: XyzObj) {.cdecl,
    importcpp: "SetRows", header: "gp_Mat.hxx".}
proc setScale*(this: var MatObj; s: cfloat) {.cdecl, importcpp: "SetScale", header: "gp_Mat.hxx".}
proc setValue*(this: var MatObj; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "gp_Mat.hxx".}
proc column*(this: MatObj; col: cint): XyzObj {.noSideEffect, cdecl, importcpp: "Column",
                                    header: "gp_Mat.hxx".}
proc determinant*(this: MatObj): cfloat {.noSideEffect, cdecl, importcpp: "Determinant",
                                   header: "gp_Mat.hxx".}
proc diagonal*(this: MatObj): XyzObj {.noSideEffect, cdecl, importcpp: "Diagonal",
                             header: "gp_Mat.hxx".}
proc row*(this: MatObj; row: cint): XyzObj {.noSideEffect, cdecl, importcpp: "Row",
                                 header: "gp_Mat.hxx".}
proc value*(this: MatObj; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_Mat.hxx".}
proc `()`*(this: MatObj; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "gp_Mat.hxx".}
proc changeValue*(this: var MatObj; row: cint; col: cint): var cfloat {.cdecl,
    importcpp: "ChangeValue", header: "gp_Mat.hxx".}
proc `()`*(this: var MatObj; row: cint; col: cint): var cfloat {.cdecl, importcpp: "#(@)",
    header: "gp_Mat.hxx".}
proc isSingular*(this: MatObj): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                header: "gp_Mat.hxx".}
proc add*(this: var MatObj; other: MatObj) {.cdecl, importcpp: "Add", header: "gp_Mat.hxx".}
proc `+=`*(this: var MatObj; other: MatObj) {.cdecl, importcpp: "(# += #)", header: "gp_Mat.hxx".}
proc added*(this: MatObj; other: MatObj): MatObj {.noSideEffect, cdecl, importcpp: "Added",
                                    header: "gp_Mat.hxx".}
proc `+`*(this: MatObj; other: MatObj): MatObj {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  header: "gp_Mat.hxx".}
proc divide*(this: var MatObj; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_Mat.hxx".}
proc `/=`*(this: var MatObj; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_Mat.hxx".}
proc divided*(this: MatObj; scalar: cfloat): MatObj {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Mat.hxx".}
proc `/`*(this: MatObj; scalar: cfloat): MatObj {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      header: "gp_Mat.hxx".}
proc invert*(this: var MatObj) {.cdecl, importcpp: "Invert", header: "gp_Mat.hxx".}
proc inverted*(this: MatObj): MatObj {.noSideEffect, cdecl, importcpp: "Inverted",
                             header: "gp_Mat.hxx".}
proc multiplied*(this: MatObj; other: MatObj): MatObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat.hxx".}
proc `*`*(this: MatObj; other: MatObj): MatObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                  header: "gp_Mat.hxx".}
proc multiply*(this: var MatObj; other: MatObj) {.cdecl, importcpp: "Multiply", header: "gp_Mat.hxx".}
proc `*=`*(this: var MatObj; other: MatObj) {.cdecl, importcpp: "(# *= #)", header: "gp_Mat.hxx".}
proc preMultiply*(this: var MatObj; other: MatObj) {.cdecl, importcpp: "PreMultiply",
    header: "gp_Mat.hxx".}
proc multiplied*(this: MatObj; scalar: cfloat): MatObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Mat.hxx".}
proc `*`*(this: MatObj; scalar: cfloat): MatObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      header: "gp_Mat.hxx".}
proc multiply*(this: var MatObj; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Mat.hxx".}
proc `*=`*(this: var MatObj; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_Mat.hxx".}
proc power*(this: var MatObj; n: cint) {.cdecl, importcpp: "Power", header: "gp_Mat.hxx".}
proc powered*(this: MatObj; n: cint): MatObj {.noSideEffect, cdecl, importcpp: "Powered",
                                   header: "gp_Mat.hxx".}
proc subtract*(this: var MatObj; other: MatObj) {.cdecl, importcpp: "Subtract", header: "gp_Mat.hxx".}
proc `-=`*(this: var MatObj; other: MatObj) {.cdecl, importcpp: "(# -= #)", header: "gp_Mat.hxx".}
proc subtracted*(this: MatObj; other: MatObj): MatObj {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Mat.hxx".}
proc `-`*(this: MatObj; other: MatObj): MatObj {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  header: "gp_Mat.hxx".}
proc transpose*(this: var MatObj) {.cdecl, importcpp: "Transpose", header: "gp_Mat.hxx".}
proc transposed*(this: MatObj): MatObj {.noSideEffect, cdecl, importcpp: "Transposed",
                               header: "gp_Mat.hxx".}
proc dumpJson*(this: MatObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Mat.hxx".}
