# /usr/include/opencascade/gp_GTrsf.hxx --> occt/tkMath/gp/gp_GTrsf.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpgtrsf = "/usr/include/opencascade/gp_GTrsf.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Mat"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
type
  GpGTrsf* {.importcpp: "gp_GTrsf", header: headerGpgtrsf, bycopy.} = object


proc `new`*(this: var GpGTrsf; theSize: csize_t): pointer {.
    importcpp: "gp_GTrsf::operator new", header: headerGpgtrsf.}
proc `delete`*(this: var GpGTrsf; theAddress: pointer) {.
    importcpp: "gp_GTrsf::operator delete", header: headerGpgtrsf.}
proc `new[]`*(this: var GpGTrsf; theSize: csize_t): pointer {.
    importcpp: "gp_GTrsf::operator new[]", header: headerGpgtrsf.}
proc `delete[]`*(this: var GpGTrsf; theAddress: pointer) {.
    importcpp: "gp_GTrsf::operator delete[]", header: headerGpgtrsf.}
proc `new`*(this: var GpGTrsf; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_GTrsf::operator new", header: headerGpgtrsf.}
proc `delete`*(this: var GpGTrsf; a2: pointer; a3: pointer) {.
    importcpp: "gp_GTrsf::operator delete", header: headerGpgtrsf.}
proc constructGpGTrsf*(): GpGTrsf {.constructor, importcpp: "gp_GTrsf(@)",
                                 header: headerGpgtrsf.}
proc constructGpGTrsf*(t: GpTrsf): GpGTrsf {.constructor, importcpp: "gp_GTrsf(@)",
    header: headerGpgtrsf.}
proc constructGpGTrsf*(m: GpMat; v: GpXYZ): GpGTrsf {.constructor,
    importcpp: "gp_GTrsf(@)", header: headerGpgtrsf.}
proc setAffinity*(this: var GpGTrsf; a1: GpAx1; ratio: StandardReal) {.
    importcpp: "SetAffinity", header: headerGpgtrsf.}
proc setAffinity*(this: var GpGTrsf; a2: GpAx2; ratio: StandardReal) {.
    importcpp: "SetAffinity", header: headerGpgtrsf.}
proc setValue*(this: var GpGTrsf; row: StandardInteger; col: StandardInteger;
              value: StandardReal) {.importcpp: "SetValue", header: headerGpgtrsf.}
proc setVectorialPart*(this: var GpGTrsf; matrix: GpMat) {.
    importcpp: "SetVectorialPart", header: headerGpgtrsf.}
proc setTranslationPart*(this: var GpGTrsf; coord: GpXYZ) {.
    importcpp: "SetTranslationPart", header: headerGpgtrsf.}
proc setTrsf*(this: var GpGTrsf; t: GpTrsf) {.importcpp: "SetTrsf",
                                        header: headerGpgtrsf.}
proc isNegative*(this: GpGTrsf): StandardBoolean {.noSideEffect,
    importcpp: "IsNegative", header: headerGpgtrsf.}
proc isSingular*(this: GpGTrsf): StandardBoolean {.noSideEffect,
    importcpp: "IsSingular", header: headerGpgtrsf.}
proc form*(this: GpGTrsf): GpTrsfForm {.noSideEffect, importcpp: "Form",
                                    header: headerGpgtrsf.}
proc setForm*(this: var GpGTrsf) {.importcpp: "SetForm", header: headerGpgtrsf.}
proc translationPart*(this: GpGTrsf): GpXYZ {.noSideEffect,
    importcpp: "TranslationPart", header: headerGpgtrsf.}
proc vectorialPart*(this: GpGTrsf): GpMat {.noSideEffect, importcpp: "VectorialPart",
                                        header: headerGpgtrsf.}
proc value*(this: GpGTrsf; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Value", header: headerGpgtrsf.}
proc `()`*(this: GpGTrsf; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "#(@)", header: headerGpgtrsf.}
proc invert*(this: var GpGTrsf) {.importcpp: "Invert", header: headerGpgtrsf.}
proc inverted*(this: GpGTrsf): GpGTrsf {.noSideEffect, importcpp: "Inverted",
                                     header: headerGpgtrsf.}
proc multiplied*(this: GpGTrsf; t: GpGTrsf): GpGTrsf {.noSideEffect,
    importcpp: "Multiplied", header: headerGpgtrsf.}
proc `*`*(this: GpGTrsf; t: GpGTrsf): GpGTrsf {.noSideEffect, importcpp: "(# * #)",
    header: headerGpgtrsf.}
proc multiply*(this: var GpGTrsf; t: GpGTrsf) {.importcpp: "Multiply",
    header: headerGpgtrsf.}
proc `*=`*(this: var GpGTrsf; t: GpGTrsf) {.importcpp: "(# *= #)", header: headerGpgtrsf.}
proc preMultiply*(this: var GpGTrsf; t: GpGTrsf) {.importcpp: "PreMultiply",
    header: headerGpgtrsf.}
proc power*(this: var GpGTrsf; n: StandardInteger) {.importcpp: "Power",
    header: headerGpgtrsf.}
proc powered*(this: GpGTrsf; n: StandardInteger): GpGTrsf {.noSideEffect,
    importcpp: "Powered", header: headerGpgtrsf.}
proc transforms*(this: GpGTrsf; coord: var GpXYZ) {.noSideEffect,
    importcpp: "Transforms", header: headerGpgtrsf.}
proc transforms*(this: GpGTrsf; x: var StandardReal; y: var StandardReal;
                z: var StandardReal) {.noSideEffect, importcpp: "Transforms",
                                    header: headerGpgtrsf.}
proc trsf*(this: GpGTrsf): GpTrsf {.noSideEffect, importcpp: "Trsf",
                                header: headerGpgtrsf.}
proc getMat4*[T](this: GpGTrsf; theMat: var NCollectionMat4[T]) {.noSideEffect,
    importcpp: "GetMat4", header: headerGpgtrsf.}
proc dumpJson*(this: GpGTrsf; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpgtrsf.}