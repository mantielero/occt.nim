# /usr/include/opencascade/gp_Mat2d.hxx --> occt/tkMath/gp/gp_Mat2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpmat2d = "/usr/include/opencascade/gp_Mat2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_XY"
type
  GpMat2d* {.importcpp: "gp_Mat2d", header: headerGpmat2d, bycopy.} = object


proc `new`*(this: var GpMat2d; theSize: csize_t): pointer {.
    importcpp: "gp_Mat2d::operator new", header: headerGpmat2d.}
proc `delete`*(this: var GpMat2d; theAddress: pointer) {.
    importcpp: "gp_Mat2d::operator delete", header: headerGpmat2d.}
proc `new[]`*(this: var GpMat2d; theSize: csize_t): pointer {.
    importcpp: "gp_Mat2d::operator new[]", header: headerGpmat2d.}
proc `delete[]`*(this: var GpMat2d; theAddress: pointer) {.
    importcpp: "gp_Mat2d::operator delete[]", header: headerGpmat2d.}
proc `new`*(this: var GpMat2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Mat2d::operator new", header: headerGpmat2d.}
proc `delete`*(this: var GpMat2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Mat2d::operator delete", header: headerGpmat2d.}
proc constructGpMat2d*(): GpMat2d {.constructor, importcpp: "gp_Mat2d(@)",
                                 header: headerGpmat2d.}
proc constructGpMat2d*(col1: GpXY; col2: GpXY): GpMat2d {.constructor,
    importcpp: "gp_Mat2d(@)", header: headerGpmat2d.}
proc setCol*(this: var GpMat2d; col: StandardInteger; value: GpXY) {.
    importcpp: "SetCol", header: headerGpmat2d.}
proc setCols*(this: var GpMat2d; col1: GpXY; col2: GpXY) {.importcpp: "SetCols",
    header: headerGpmat2d.}
proc setDiagonal*(this: var GpMat2d; x1: StandardReal; x2: StandardReal) {.
    importcpp: "SetDiagonal", header: headerGpmat2d.}
proc setIdentity*(this: var GpMat2d) {.importcpp: "SetIdentity", header: headerGpmat2d.}
proc setRotation*(this: var GpMat2d; ang: StandardReal) {.importcpp: "SetRotation",
    header: headerGpmat2d.}
proc setRow*(this: var GpMat2d; row: StandardInteger; value: GpXY) {.
    importcpp: "SetRow", header: headerGpmat2d.}
proc setRows*(this: var GpMat2d; row1: GpXY; row2: GpXY) {.importcpp: "SetRows",
    header: headerGpmat2d.}
proc setScale*(this: var GpMat2d; s: StandardReal) {.importcpp: "SetScale",
    header: headerGpmat2d.}
proc setValue*(this: var GpMat2d; row: StandardInteger; col: StandardInteger;
              value: StandardReal) {.importcpp: "SetValue", header: headerGpmat2d.}
proc column*(this: GpMat2d; col: StandardInteger): GpXY {.noSideEffect,
    importcpp: "Column", header: headerGpmat2d.}
proc determinant*(this: GpMat2d): StandardReal {.noSideEffect,
    importcpp: "Determinant", header: headerGpmat2d.}
proc diagonal*(this: GpMat2d): GpXY {.noSideEffect, importcpp: "Diagonal",
                                  header: headerGpmat2d.}
proc row*(this: GpMat2d; row: StandardInteger): GpXY {.noSideEffect, importcpp: "Row",
    header: headerGpmat2d.}
proc value*(this: GpMat2d; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Value", header: headerGpmat2d.}
proc `()`*(this: GpMat2d; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "#(@)", header: headerGpmat2d.}
proc changeValue*(this: var GpMat2d; row: StandardInteger; col: StandardInteger): var StandardReal {.
    importcpp: "ChangeValue", header: headerGpmat2d.}
proc `()`*(this: var GpMat2d; row: StandardInteger; col: StandardInteger): var StandardReal {.
    importcpp: "#(@)", header: headerGpmat2d.}
proc isSingular*(this: GpMat2d): StandardBoolean {.noSideEffect,
    importcpp: "IsSingular", header: headerGpmat2d.}
proc add*(this: var GpMat2d; other: GpMat2d) {.importcpp: "Add", header: headerGpmat2d.}
proc `+=`*(this: var GpMat2d; other: GpMat2d) {.importcpp: "(# += #)",
    header: headerGpmat2d.}
proc added*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, importcpp: "Added",
    header: headerGpmat2d.}
proc `+`*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, importcpp: "(# + #)",
    header: headerGpmat2d.}
proc divide*(this: var GpMat2d; scalar: StandardReal) {.importcpp: "Divide",
    header: headerGpmat2d.}
proc `/=`*(this: var GpMat2d; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: headerGpmat2d.}
proc divided*(this: GpMat2d; scalar: StandardReal): GpMat2d {.noSideEffect,
    importcpp: "Divided", header: headerGpmat2d.}
proc `/`*(this: GpMat2d; scalar: StandardReal): GpMat2d {.noSideEffect,
    importcpp: "(# / #)", header: headerGpmat2d.}
proc invert*(this: var GpMat2d) {.importcpp: "Invert", header: headerGpmat2d.}
proc inverted*(this: GpMat2d): GpMat2d {.noSideEffect, importcpp: "Inverted",
                                     header: headerGpmat2d.}
proc multiplied*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect,
    importcpp: "Multiplied", header: headerGpmat2d.}
proc `*`*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, importcpp: "(# * #)",
    header: headerGpmat2d.}
proc multiply*(this: var GpMat2d; other: GpMat2d) {.importcpp: "Multiply",
    header: headerGpmat2d.}
proc preMultiply*(this: var GpMat2d; other: GpMat2d) {.importcpp: "PreMultiply",
    header: headerGpmat2d.}
proc multiplied*(this: GpMat2d; scalar: StandardReal): GpMat2d {.noSideEffect,
    importcpp: "Multiplied", header: headerGpmat2d.}
proc `*`*(this: GpMat2d; scalar: StandardReal): GpMat2d {.noSideEffect,
    importcpp: "(# * #)", header: headerGpmat2d.}
proc multiply*(this: var GpMat2d; scalar: StandardReal) {.importcpp: "Multiply",
    header: headerGpmat2d.}
proc `*=`*(this: var GpMat2d; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: headerGpmat2d.}
proc power*(this: var GpMat2d; n: StandardInteger) {.importcpp: "Power",
    header: headerGpmat2d.}
proc powered*(this: GpMat2d; n: StandardInteger): GpMat2d {.noSideEffect,
    importcpp: "Powered", header: headerGpmat2d.}
proc subtract*(this: var GpMat2d; other: GpMat2d) {.importcpp: "Subtract",
    header: headerGpmat2d.}
proc `-=`*(this: var GpMat2d; other: GpMat2d) {.importcpp: "(# -= #)",
    header: headerGpmat2d.}
proc subtracted*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect,
    importcpp: "Subtracted", header: headerGpmat2d.}
proc `-`*(this: GpMat2d; other: GpMat2d): GpMat2d {.noSideEffect, importcpp: "(# - #)",
    header: headerGpmat2d.}
proc transpose*(this: var GpMat2d) {.importcpp: "Transpose", header: headerGpmat2d.}
proc transposed*(this: GpMat2d): GpMat2d {.noSideEffect, importcpp: "Transposed",
                                       header: headerGpmat2d.}