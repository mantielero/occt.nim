# /usr/include/opencascade/gp_Mat.hxx --> occt/tkMath/gp/gp_Mat.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpmat = "/usr/include/opencascade/gp_Mat.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf"
type
  GpMat* {.importcpp: "gp_Mat", header: headerGpmat, bycopy.} = object


proc `new`*(this: var GpMat; theSize: csize_t): pointer {.
    importcpp: "gp_Mat::operator new", header: headerGpmat.}
proc `delete`*(this: var GpMat; theAddress: pointer) {.
    importcpp: "gp_Mat::operator delete", header: headerGpmat.}
proc `new[]`*(this: var GpMat; theSize: csize_t): pointer {.
    importcpp: "gp_Mat::operator new[]", header: headerGpmat.}
proc `delete[]`*(this: var GpMat; theAddress: pointer) {.
    importcpp: "gp_Mat::operator delete[]", header: headerGpmat.}
proc `new`*(this: var GpMat; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Mat::operator new", header: headerGpmat.}
proc `delete`*(this: var GpMat; a2: pointer; a3: pointer) {.
    importcpp: "gp_Mat::operator delete", header: headerGpmat.}
proc constructGpMat*(): GpMat {.constructor, importcpp: "gp_Mat(@)",
                             header: headerGpmat.}
proc constructGpMat*(a11: StandardReal; a12: StandardReal; a13: StandardReal;
                    a21: StandardReal; a22: StandardReal; a23: StandardReal;
                    a31: StandardReal; a32: StandardReal; a33: StandardReal): GpMat {.
    constructor, importcpp: "gp_Mat(@)", header: headerGpmat.}
proc constructGpMat*(col1: GpXYZ; col2: GpXYZ; col3: GpXYZ): GpMat {.constructor,
    importcpp: "gp_Mat(@)", header: headerGpmat.}
proc setCol*(this: var GpMat; col: StandardInteger; value: GpXYZ) {.importcpp: "SetCol",
    header: headerGpmat.}
proc setCols*(this: var GpMat; col1: GpXYZ; col2: GpXYZ; col3: GpXYZ) {.
    importcpp: "SetCols", header: headerGpmat.}
proc setCross*(this: var GpMat; `ref`: GpXYZ) {.importcpp: "SetCross",
    header: headerGpmat.}
proc setDiagonal*(this: var GpMat; x1: StandardReal; x2: StandardReal; x3: StandardReal) {.
    importcpp: "SetDiagonal", header: headerGpmat.}
proc setDot*(this: var GpMat; `ref`: GpXYZ) {.importcpp: "SetDot", header: headerGpmat.}
proc setIdentity*(this: var GpMat) {.importcpp: "SetIdentity", header: headerGpmat.}
proc setRotation*(this: var GpMat; axis: GpXYZ; ang: StandardReal) {.
    importcpp: "SetRotation", header: headerGpmat.}
proc setRow*(this: var GpMat; row: StandardInteger; value: GpXYZ) {.importcpp: "SetRow",
    header: headerGpmat.}
proc setRows*(this: var GpMat; row1: GpXYZ; row2: GpXYZ; row3: GpXYZ) {.
    importcpp: "SetRows", header: headerGpmat.}
proc setScale*(this: var GpMat; s: StandardReal) {.importcpp: "SetScale",
    header: headerGpmat.}
proc setValue*(this: var GpMat; row: StandardInteger; col: StandardInteger;
              value: StandardReal) {.importcpp: "SetValue", header: headerGpmat.}
proc column*(this: GpMat; col: StandardInteger): GpXYZ {.noSideEffect,
    importcpp: "Column", header: headerGpmat.}
proc determinant*(this: GpMat): StandardReal {.noSideEffect,
    importcpp: "Determinant", header: headerGpmat.}
proc diagonal*(this: GpMat): GpXYZ {.noSideEffect, importcpp: "Diagonal",
                                 header: headerGpmat.}
proc row*(this: GpMat; row: StandardInteger): GpXYZ {.noSideEffect, importcpp: "Row",
    header: headerGpmat.}
proc value*(this: GpMat; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Value", header: headerGpmat.}
proc `()`*(this: GpMat; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "#(@)", header: headerGpmat.}
proc changeValue*(this: var GpMat; row: StandardInteger; col: StandardInteger): var StandardReal {.
    importcpp: "ChangeValue", header: headerGpmat.}
proc `()`*(this: var GpMat; row: StandardInteger; col: StandardInteger): var StandardReal {.
    importcpp: "#(@)", header: headerGpmat.}
proc isSingular*(this: GpMat): StandardBoolean {.noSideEffect,
    importcpp: "IsSingular", header: headerGpmat.}
proc add*(this: var GpMat; other: GpMat) {.importcpp: "Add", header: headerGpmat.}
proc `+=`*(this: var GpMat; other: GpMat) {.importcpp: "(# += #)", header: headerGpmat.}
proc added*(this: GpMat; other: GpMat): GpMat {.noSideEffect, importcpp: "Added",
    header: headerGpmat.}
proc `+`*(this: GpMat; other: GpMat): GpMat {.noSideEffect, importcpp: "(# + #)",
                                        header: headerGpmat.}
proc divide*(this: var GpMat; scalar: StandardReal) {.importcpp: "Divide",
    header: headerGpmat.}
proc `/=`*(this: var GpMat; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: headerGpmat.}
proc divided*(this: GpMat; scalar: StandardReal): GpMat {.noSideEffect,
    importcpp: "Divided", header: headerGpmat.}
proc `/`*(this: GpMat; scalar: StandardReal): GpMat {.noSideEffect,
    importcpp: "(# / #)", header: headerGpmat.}
proc invert*(this: var GpMat) {.importcpp: "Invert", header: headerGpmat.}
proc inverted*(this: GpMat): GpMat {.noSideEffect, importcpp: "Inverted",
                                 header: headerGpmat.}
proc multiplied*(this: GpMat; other: GpMat): GpMat {.noSideEffect,
    importcpp: "Multiplied", header: headerGpmat.}
proc `*`*(this: GpMat; other: GpMat): GpMat {.noSideEffect, importcpp: "(# * #)",
                                        header: headerGpmat.}
proc multiply*(this: var GpMat; other: GpMat) {.importcpp: "Multiply",
    header: headerGpmat.}
proc `*=`*(this: var GpMat; other: GpMat) {.importcpp: "(# *= #)", header: headerGpmat.}
proc preMultiply*(this: var GpMat; other: GpMat) {.importcpp: "PreMultiply",
    header: headerGpmat.}
proc multiplied*(this: GpMat; scalar: StandardReal): GpMat {.noSideEffect,
    importcpp: "Multiplied", header: headerGpmat.}
proc `*`*(this: GpMat; scalar: StandardReal): GpMat {.noSideEffect,
    importcpp: "(# * #)", header: headerGpmat.}
proc multiply*(this: var GpMat; scalar: StandardReal) {.importcpp: "Multiply",
    header: headerGpmat.}
proc `*=`*(this: var GpMat; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: headerGpmat.}
proc power*(this: var GpMat; n: StandardInteger) {.importcpp: "Power",
    header: headerGpmat.}
proc powered*(this: GpMat; n: StandardInteger): GpMat {.noSideEffect,
    importcpp: "Powered", header: headerGpmat.}
proc subtract*(this: var GpMat; other: GpMat) {.importcpp: "Subtract",
    header: headerGpmat.}
proc `-=`*(this: var GpMat; other: GpMat) {.importcpp: "(# -= #)", header: headerGpmat.}
proc subtracted*(this: GpMat; other: GpMat): GpMat {.noSideEffect,
    importcpp: "Subtracted", header: headerGpmat.}
proc `-`*(this: GpMat; other: GpMat): GpMat {.noSideEffect, importcpp: "(# - #)",
                                        header: headerGpmat.}
proc transpose*(this: var GpMat) {.importcpp: "Transpose", header: headerGpmat.}
proc transposed*(this: GpMat): GpMat {.noSideEffect, importcpp: "Transposed",
                                   header: headerGpmat.}
proc dumpJson*(this: GpMat; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpmat.}