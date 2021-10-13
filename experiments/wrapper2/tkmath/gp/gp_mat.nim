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
  GpMat* {.importcpp: "gp_Mat", header: "gp_Mat.hxx", bycopy.} = object ## ! creates  a matrix with null coefficients.


proc constructGpMat*(): GpMat {.cdecl, constructor, importcpp: "gp_Mat(@)",
                             dynlib: tkmath.}
proc constructGpMat*(a11: cfloat; a12: cfloat; a13: cfloat; a21: cfloat; a22: cfloat;
                    a23: cfloat; a31: cfloat; a32: cfloat; a33: cfloat): GpMat {.cdecl,
    constructor, importcpp: "gp_Mat(@)", dynlib: tkmath.}
proc constructGpMat*(col1: GpXYZ; col2: GpXYZ; col3: GpXYZ): GpMat {.cdecl, constructor,
    importcpp: "gp_Mat(@)", dynlib: tkmath.}
proc setCol*(this: var GpMat; col: cint; value: GpXYZ) {.cdecl, importcpp: "SetCol",
    dynlib: tkmath.}
proc setCols*(this: var GpMat; col1: GpXYZ; col2: GpXYZ; col3: GpXYZ) {.cdecl,
    importcpp: "SetCols", dynlib: tkmath.}
proc setCross*(this: var GpMat; `ref`: GpXYZ) {.cdecl, importcpp: "SetCross",
    dynlib: tkmath.}
proc setDiagonal*(this: var GpMat; x1: cfloat; x2: cfloat; x3: cfloat) {.cdecl,
    importcpp: "SetDiagonal", dynlib: tkmath.}
proc setDot*(this: var GpMat; `ref`: GpXYZ) {.cdecl, importcpp: "SetDot", dynlib: tkmath.}
proc setIdentity*(this: var GpMat) {.cdecl, importcpp: "SetIdentity", dynlib: tkmath.}
proc setRotation*(this: var GpMat; axis: GpXYZ; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", dynlib: tkmath.}
proc setRow*(this: var GpMat; row: cint; value: GpXYZ) {.cdecl, importcpp: "SetRow",
    dynlib: tkmath.}
proc setRows*(this: var GpMat; row1: GpXYZ; row2: GpXYZ; row3: GpXYZ) {.cdecl,
    importcpp: "SetRows", dynlib: tkmath.}
proc setScale*(this: var GpMat; s: cfloat) {.cdecl, importcpp: "SetScale", dynlib: tkmath.}
proc setValue*(this: var GpMat; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc column*(this: GpMat; col: cint): GpXYZ {.noSideEffect, cdecl, importcpp: "Column",
                                        dynlib: tkmath.}
proc determinant*(this: GpMat): cfloat {.noSideEffect, cdecl,
                                     importcpp: "Determinant", dynlib: tkmath.}
proc diagonal*(this: GpMat): GpXYZ {.noSideEffect, cdecl, importcpp: "Diagonal",
                                 dynlib: tkmath.}
proc row*(this: GpMat; row: cint): GpXYZ {.noSideEffect, cdecl, importcpp: "Row",
                                     dynlib: tkmath.}
proc value*(this: GpMat; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc `()`*(this: GpMat; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkmath.}
proc changeValue*(this: var GpMat; row: cint; col: cint): var cfloat {.cdecl,
    importcpp: "ChangeValue", dynlib: tkmath.}
proc `()`*(this: var GpMat; row: cint; col: cint): var cfloat {.cdecl, importcpp: "#(@)",
    dynlib: tkmath.}
proc isSingular*(this: GpMat): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                  dynlib: tkmath.}
proc add*(this: var GpMat; other: GpMat) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var GpMat; other: GpMat) {.cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: GpMat; other: GpMat): GpMat {.noSideEffect, cdecl, importcpp: "Added",
    dynlib: tkmath.}
proc `+`*(this: GpMat; other: GpMat): GpMat {.noSideEffect, cdecl, importcpp: "(# + #)",
                                        dynlib: tkmath.}
proc divide*(this: var GpMat; scalar: cfloat) {.cdecl, importcpp: "Divide",
    dynlib: tkmath.}
proc `/=`*(this: var GpMat; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
                                        dynlib: tkmath.}
proc divided*(this: GpMat; scalar: cfloat): GpMat {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: GpMat; scalar: cfloat): GpMat {.noSideEffect, cdecl,
    importcpp: "(# / #)", dynlib: tkmath.}
proc invert*(this: var GpMat) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: GpMat): GpMat {.noSideEffect, cdecl, importcpp: "Inverted",
                                 dynlib: tkmath.}
proc multiplied*(this: GpMat; other: GpMat): GpMat {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpMat; other: GpMat): GpMat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                        dynlib: tkmath.}
proc multiply*(this: var GpMat; other: GpMat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpMat; other: GpMat) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc preMultiply*(this: var GpMat; other: GpMat) {.cdecl, importcpp: "PreMultiply",
    dynlib: tkmath.}
proc multiplied*(this: GpMat; scalar: cfloat): GpMat {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpMat; scalar: cfloat): GpMat {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiply*(this: var GpMat; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpMat; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
                                        dynlib: tkmath.}
proc power*(this: var GpMat; n: cint) {.cdecl, importcpp: "Power", dynlib: tkmath.}
proc powered*(this: GpMat; n: cint): GpMat {.noSideEffect, cdecl, importcpp: "Powered",
                                       dynlib: tkmath.}
proc subtract*(this: var GpMat; other: GpMat) {.cdecl, importcpp: "Subtract",
    dynlib: tkmath.}
proc `-=`*(this: var GpMat; other: GpMat) {.cdecl, importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: GpMat; other: GpMat): GpMat {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: GpMat; other: GpMat): GpMat {.noSideEffect, cdecl, importcpp: "(# - #)",
                                        dynlib: tkmath.}
proc transpose*(this: var GpMat) {.cdecl, importcpp: "Transpose", dynlib: tkmath.}
proc transposed*(this: GpMat): GpMat {.noSideEffect, cdecl, importcpp: "Transposed",
                                   dynlib: tkmath.}
proc dumpJson*(this: GpMat; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}