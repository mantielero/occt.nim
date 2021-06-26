# /usr/include/opencascade/gp_GTrsf2d.hxx --> occt/gp/gp_GTrsf2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpgtrsf2d = "/usr/include/opencascade/gp_GTrsf2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Mat2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
type
  GpGTrsf2d* {.importcpp: "gp_GTrsf2d", header: headerGpgtrsf2d, bycopy.} = object


proc `new`*(this: var GpGTrsf2d; theSize: csize_t): pointer {.
    importcpp: "gp_GTrsf2d::operator new", header: headerGpgtrsf2d.}
proc `delete`*(this: var GpGTrsf2d; theAddress: pointer) {.
    importcpp: "gp_GTrsf2d::operator delete", header: headerGpgtrsf2d.}
proc `new[]`*(this: var GpGTrsf2d; theSize: csize_t): pointer {.
    importcpp: "gp_GTrsf2d::operator new[]", header: headerGpgtrsf2d.}
proc `delete[]`*(this: var GpGTrsf2d; theAddress: pointer) {.
    importcpp: "gp_GTrsf2d::operator delete[]", header: headerGpgtrsf2d.}
proc `new`*(this: var GpGTrsf2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_GTrsf2d::operator new", header: headerGpgtrsf2d.}
proc `delete`*(this: var GpGTrsf2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_GTrsf2d::operator delete", header: headerGpgtrsf2d.}
proc constructGpGTrsf2d*(): GpGTrsf2d {.constructor, importcpp: "gp_GTrsf2d(@)",
                                     header: headerGpgtrsf2d.}
proc constructGpGTrsf2d*(t: GpTrsf2d): GpGTrsf2d {.constructor,
    importcpp: "gp_GTrsf2d(@)", header: headerGpgtrsf2d.}
proc constructGpGTrsf2d*(m: GpMat2d; v: GpXY): GpGTrsf2d {.constructor,
    importcpp: "gp_GTrsf2d(@)", header: headerGpgtrsf2d.}
proc setAffinity*(this: var GpGTrsf2d; a: GpAx2d; ratio: StandardReal) {.
    importcpp: "SetAffinity", header: headerGpgtrsf2d.}
proc setValue*(this: var GpGTrsf2d; row: StandardInteger; col: StandardInteger;
              value: StandardReal) {.importcpp: "SetValue", header: headerGpgtrsf2d.}
proc setTranslationPart*(this: var GpGTrsf2d; coord: GpXY) {.
    importcpp: "SetTranslationPart", header: headerGpgtrsf2d.}
proc setTrsf2d*(this: var GpGTrsf2d; t: GpTrsf2d) {.importcpp: "SetTrsf2d",
    header: headerGpgtrsf2d.}
proc setVectorialPart*(this: var GpGTrsf2d; matrix: GpMat2d) {.
    importcpp: "SetVectorialPart", header: headerGpgtrsf2d.}
proc isNegative*(this: GpGTrsf2d): StandardBoolean {.noSideEffect,
    importcpp: "IsNegative", header: headerGpgtrsf2d.}
proc isSingular*(this: GpGTrsf2d): StandardBoolean {.noSideEffect,
    importcpp: "IsSingular", header: headerGpgtrsf2d.}
proc form*(this: GpGTrsf2d): GpTrsfForm {.noSideEffect, importcpp: "Form",
                                      header: headerGpgtrsf2d.}
proc translationPart*(this: GpGTrsf2d): GpXY {.noSideEffect,
    importcpp: "TranslationPart", header: headerGpgtrsf2d.}
proc vectorialPart*(this: GpGTrsf2d): GpMat2d {.noSideEffect,
    importcpp: "VectorialPart", header: headerGpgtrsf2d.}
proc value*(this: GpGTrsf2d; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Value", header: headerGpgtrsf2d.}
proc `()`*(this: GpGTrsf2d; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "#(@)", header: headerGpgtrsf2d.}
proc invert*(this: var GpGTrsf2d) {.importcpp: "Invert", header: headerGpgtrsf2d.}
proc inverted*(this: GpGTrsf2d): GpGTrsf2d {.noSideEffect, importcpp: "Inverted",
    header: headerGpgtrsf2d.}
proc multiplied*(this: GpGTrsf2d; t: GpGTrsf2d): GpGTrsf2d {.noSideEffect,
    importcpp: "Multiplied", header: headerGpgtrsf2d.}
proc `*`*(this: GpGTrsf2d; t: GpGTrsf2d): GpGTrsf2d {.noSideEffect,
    importcpp: "(# * #)", header: headerGpgtrsf2d.}
proc multiply*(this: var GpGTrsf2d; t: GpGTrsf2d) {.importcpp: "Multiply",
    header: headerGpgtrsf2d.}
proc `*=`*(this: var GpGTrsf2d; t: GpGTrsf2d) {.importcpp: "(# *= #)",
    header: headerGpgtrsf2d.}
proc preMultiply*(this: var GpGTrsf2d; t: GpGTrsf2d) {.importcpp: "PreMultiply",
    header: headerGpgtrsf2d.}
proc power*(this: var GpGTrsf2d; n: StandardInteger) {.importcpp: "Power",
    header: headerGpgtrsf2d.}
proc powered*(this: GpGTrsf2d; n: StandardInteger): GpGTrsf2d {.noSideEffect,
    importcpp: "Powered", header: headerGpgtrsf2d.}
proc transforms*(this: GpGTrsf2d; coord: var GpXY) {.noSideEffect,
    importcpp: "Transforms", header: headerGpgtrsf2d.}
proc transformed*(this: GpGTrsf2d; coord: GpXY): GpXY {.noSideEffect,
    importcpp: "Transformed", header: headerGpgtrsf2d.}
proc transforms*(this: GpGTrsf2d; x: var StandardReal; y: var StandardReal) {.
    noSideEffect, importcpp: "Transforms", header: headerGpgtrsf2d.}
proc trsf2d*(this: GpGTrsf2d): GpTrsf2d {.noSideEffect, importcpp: "Trsf2d",
                                      header: headerGpgtrsf2d.}