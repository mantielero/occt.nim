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
  GpMat2d* {.importcpp: "gp_Mat2d", header: "gp_Mat2d.hxx", bycopy.} = object ## ! Creates  a matrix with null
                                                                      ## coefficients.


proc constructGpMat2d*(): GpMat2d {.cdecl, constructor, importcpp: "gp_Mat2d(@)",
                                 dynlib: tkmath.}
proc constructGpMat2d*(col1: GpXY; col2: GpXY): GpMat2d {.cdecl, constructor,
    importcpp: "gp_Mat2d(@)", dynlib: tkmath.}
proc setCol*(this: var GpMat2d; col: cint; value: GpXY) {.cdecl, importcpp: "SetCol",
    dynlib: tkmath.}
proc setCols*(this: var GpMat2d; col1: GpXY; col2: GpXY) {.cdecl, importcpp: "SetCols",
    dynlib: tkmath.}
proc setDiagonal*(this: var GpMat2d; x1: cfloat; x2: cfloat) {.cdecl,
    importcpp: "SetDiagonal", dynlib: tkmath.}
proc setIdentity*(this: var GpMat2d) {.cdecl, importcpp: "SetIdentity", dynlib: tkmath.}
proc setRotation*(this: var GpMat2d; ang: cfloat) {.cdecl, importcpp: "SetRotation",
    dynlib: tkmath.}
proc setRow*(this: var GpMat2d; row: cint; value: GpXY) {.cdecl, importcpp: "SetRow",
    dynlib: tkmath.}
proc setRows*(this: var GpMat2d; row1: GpXY; row2: GpXY) {.cdecl, importcpp: "SetRows",
    dynlib: tkmath.}
proc setScale*(this: var GpMat2d; s: cfloat) {.cdecl, importcpp: "SetScale",
    dynlib: tkmath.}
proc setValue*(this: var GpMat2d; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc column*(this: GpMat2d; col: cint): GpXY {.noSideEffect, cdecl, importcpp: "Column",
    dynlib: tkmath.}
proc determinant*(this: GpMat2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Determinant", dynlib: tkmath.}
proc diagonal*(this: GpMat2d): GpXY {.noSideEffect, cdecl, importcpp: "Diagonal",
                                  dynlib: tkmath.}
proc row*(this: GpMat2d; row: cint): GpXY {.noSideEffect, cdecl, importcpp: "Row",
                                      dynlib: tkmath.}
proc value*(this: GpMat2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc `()`*(this: GpMat2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc changeValue*(this: var GpMat2d; row: cint; col: cint): var cfloat {.cdecl,
    importcpp: "ChangeValue", dynlib: tkmath.}
proc `()`*(this: var GpMat2d; row: cint; col: cint): var cfloat {.cdecl, importcpp: "#(@)",
    dynlib: tkmath.}
proc isSingular*(this: GpMat2d): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                    dynlib: tkmath.}
proc add*(this: var GpMat2d; other: GpMat2d) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var GpMat2d; other: GpMat2d) {.cdecl, importcpp: "(# += #)",
    dynlib: tkmath.}
proc added*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, cdecl,
    importcpp: "Added", dynlib: tkmath.}
proc `+`*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, cdecl,
    importcpp: "(# + #)", dynlib: tkmath.}
proc divide*(this: var GpMat2d; scalar: cfloat) {.cdecl, importcpp: "Divide",
    dynlib: tkmath.}
proc `/=`*(this: var GpMat2d; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
    dynlib: tkmath.}
proc divided*(this: GpMat2d; scalar: cfloat): GpMat2d {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: GpMat2d; scalar: cfloat): GpMat2d {.noSideEffect, cdecl,
    importcpp: "(# / #)", dynlib: tkmath.}
proc invert*(this: var GpMat2d) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: GpMat2d): GpMat2d {.noSideEffect, cdecl, importcpp: "Inverted",
                                     dynlib: tkmath.}
proc multiplied*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiply*(this: var GpMat2d; other: GpMat2d) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc preMultiply*(this: var GpMat2d; other: GpMat2d) {.cdecl, importcpp: "PreMultiply",
    dynlib: tkmath.}
proc multiplied*(this: GpMat2d; scalar: cfloat): GpMat2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpMat2d; scalar: cfloat): GpMat2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiply*(this: var GpMat2d; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpMat2d; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc power*(this: var GpMat2d; n: cint) {.cdecl, importcpp: "Power", dynlib: tkmath.}
proc powered*(this: GpMat2d; n: cint): GpMat2d {.noSideEffect, cdecl,
    importcpp: "Powered", dynlib: tkmath.}
proc subtract*(this: var GpMat2d; other: GpMat2d) {.cdecl, importcpp: "Subtract",
    dynlib: tkmath.}
proc `-=`*(this: var GpMat2d; other: GpMat2d) {.cdecl, importcpp: "(# -= #)",
    dynlib: tkmath.}
proc subtracted*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, cdecl,
    importcpp: "(# - #)", dynlib: tkmath.}
proc transpose*(this: var GpMat2d) {.cdecl, importcpp: "Transpose", dynlib: tkmath.}
proc transposed*(this: GpMat2d): GpMat2d {.noSideEffect, cdecl,
                                       importcpp: "Transposed", dynlib: tkmath.}