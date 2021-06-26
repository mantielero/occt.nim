# /usr/include/opencascade/gp_Trsf2d.hxx --> occt/tkMath/gp/gp_Trsf2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGptrsf2d = "/usr/include/opencascade/gp_Trsf2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Mat2d"
type
  GpTrsf2d* {.importcpp: "gp_Trsf2d", header: headerGptrsf2d, bycopy.} = object


proc `new`*(this: var GpTrsf2d; theSize: csize_t): pointer {.
    importcpp: "gp_Trsf2d::operator new", header: headerGptrsf2d.}
proc `delete`*(this: var GpTrsf2d; theAddress: pointer) {.
    importcpp: "gp_Trsf2d::operator delete", header: headerGptrsf2d.}
proc `new[]`*(this: var GpTrsf2d; theSize: csize_t): pointer {.
    importcpp: "gp_Trsf2d::operator new[]", header: headerGptrsf2d.}
proc `delete[]`*(this: var GpTrsf2d; theAddress: pointer) {.
    importcpp: "gp_Trsf2d::operator delete[]", header: headerGptrsf2d.}
proc `new`*(this: var GpTrsf2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Trsf2d::operator new", header: headerGptrsf2d.}
proc `delete`*(this: var GpTrsf2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Trsf2d::operator delete", header: headerGptrsf2d.}
proc constructGpTrsf2d*(): GpTrsf2d {.constructor, importcpp: "gp_Trsf2d(@)",
                                   header: headerGptrsf2d.}
proc constructGpTrsf2d*(t: GpTrsf): GpTrsf2d {.constructor,
    importcpp: "gp_Trsf2d(@)", header: headerGptrsf2d.}
proc setMirror*(this: var GpTrsf2d; p: GpPnt2d) {.importcpp: "SetMirror",
    header: headerGptrsf2d.}
proc setMirror*(this: var GpTrsf2d; a: GpAx2d) {.importcpp: "SetMirror",
    header: headerGptrsf2d.}
proc setRotation*(this: var GpTrsf2d; p: GpPnt2d; ang: StandardReal) {.
    importcpp: "SetRotation", header: headerGptrsf2d.}
proc setScale*(this: var GpTrsf2d; p: GpPnt2d; s: StandardReal) {.importcpp: "SetScale",
    header: headerGptrsf2d.}
proc setTransformation*(this: var GpTrsf2d; fromSystem1: GpAx2d; toSystem2: GpAx2d) {.
    importcpp: "SetTransformation", header: headerGptrsf2d.}
proc setTransformation*(this: var GpTrsf2d; toSystem: GpAx2d) {.
    importcpp: "SetTransformation", header: headerGptrsf2d.}
proc setTranslation*(this: var GpTrsf2d; v: GpVec2d) {.importcpp: "SetTranslation",
    header: headerGptrsf2d.}
proc setTranslation*(this: var GpTrsf2d; p1: GpPnt2d; p2: GpPnt2d) {.
    importcpp: "SetTranslation", header: headerGptrsf2d.}
proc setTranslationPart*(this: var GpTrsf2d; v: GpVec2d) {.
    importcpp: "SetTranslationPart", header: headerGptrsf2d.}
proc setScaleFactor*(this: var GpTrsf2d; s: StandardReal) {.
    importcpp: "SetScaleFactor", header: headerGptrsf2d.}
proc isNegative*(this: GpTrsf2d): StandardBoolean {.noSideEffect,
    importcpp: "IsNegative", header: headerGptrsf2d.}
proc form*(this: GpTrsf2d): GpTrsfForm {.noSideEffect, importcpp: "Form",
                                     header: headerGptrsf2d.}
proc scaleFactor*(this: GpTrsf2d): StandardReal {.noSideEffect,
    importcpp: "ScaleFactor", header: headerGptrsf2d.}
proc translationPart*(this: GpTrsf2d): GpXY {.noSideEffect,
    importcpp: "TranslationPart", header: headerGptrsf2d.}
proc vectorialPart*(this: GpTrsf2d): GpMat2d {.noSideEffect,
    importcpp: "VectorialPart", header: headerGptrsf2d.}
proc hVectorialPart*(this: GpTrsf2d): GpMat2d {.noSideEffect,
    importcpp: "HVectorialPart", header: headerGptrsf2d.}
proc rotationPart*(this: GpTrsf2d): StandardReal {.noSideEffect,
    importcpp: "RotationPart", header: headerGptrsf2d.}
proc value*(this: GpTrsf2d; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Value", header: headerGptrsf2d.}
proc invert*(this: var GpTrsf2d) {.importcpp: "Invert", header: headerGptrsf2d.}
proc inverted*(this: GpTrsf2d): GpTrsf2d {.noSideEffect, importcpp: "Inverted",
                                       header: headerGptrsf2d.}
proc multiplied*(this: GpTrsf2d; t: GpTrsf2d): GpTrsf2d {.noSideEffect,
    importcpp: "Multiplied", header: headerGptrsf2d.}
proc `*`*(this: GpTrsf2d; t: GpTrsf2d): GpTrsf2d {.noSideEffect, importcpp: "(# * #)",
    header: headerGptrsf2d.}
proc multiply*(this: var GpTrsf2d; t: GpTrsf2d) {.importcpp: "Multiply",
    header: headerGptrsf2d.}
proc `*=`*(this: var GpTrsf2d; t: GpTrsf2d) {.importcpp: "(# *= #)",
                                        header: headerGptrsf2d.}
proc preMultiply*(this: var GpTrsf2d; t: GpTrsf2d) {.importcpp: "PreMultiply",
    header: headerGptrsf2d.}
proc power*(this: var GpTrsf2d; n: StandardInteger) {.importcpp: "Power",
    header: headerGptrsf2d.}
proc powered*(this: var GpTrsf2d; n: StandardInteger): GpTrsf2d {.importcpp: "Powered",
    header: headerGptrsf2d.}
proc transforms*(this: GpTrsf2d; x: var StandardReal; y: var StandardReal) {.
    noSideEffect, importcpp: "Transforms", header: headerGptrsf2d.}
proc transforms*(this: GpTrsf2d; coord: var GpXY) {.noSideEffect,
    importcpp: "Transforms", header: headerGptrsf2d.}
proc setValues*(this: var GpTrsf2d; a11: StandardReal; a12: StandardReal;
               a13: StandardReal; a21: StandardReal; a22: StandardReal;
               a23: StandardReal) {.importcpp: "SetValues", header: headerGptrsf2d.}