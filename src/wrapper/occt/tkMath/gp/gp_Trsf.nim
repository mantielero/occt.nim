# /usr/include/opencascade/gp_Trsf.hxx --> occt/tkMath/gp/gp_Trsf.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGptrsf = "/usr/include/opencascade/gp_Trsf.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Quaternion"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Vec"
type
  GpTrsf* {.importcpp: "gp_Trsf", header: headerGptrsf, bycopy.} = object


proc `new`*(this: var GpTrsf; theSize: csize_t): pointer {.
    importcpp: "gp_Trsf::operator new", header: headerGptrsf.}
proc `delete`*(this: var GpTrsf; theAddress: pointer) {.
    importcpp: "gp_Trsf::operator delete", header: headerGptrsf.}
proc `new[]`*(this: var GpTrsf; theSize: csize_t): pointer {.
    importcpp: "gp_Trsf::operator new[]", header: headerGptrsf.}
proc `delete[]`*(this: var GpTrsf; theAddress: pointer) {.
    importcpp: "gp_Trsf::operator delete[]", header: headerGptrsf.}
proc `new`*(this: var GpTrsf; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Trsf::operator new", header: headerGptrsf.}
proc `delete`*(this: var GpTrsf; a2: pointer; a3: pointer) {.
    importcpp: "gp_Trsf::operator delete", header: headerGptrsf.}
proc constructGpTrsf*(): GpTrsf {.constructor, importcpp: "gp_Trsf(@)",
                               header: headerGptrsf.}
proc constructGpTrsf*(t: GpTrsf2d): GpTrsf {.constructor, importcpp: "gp_Trsf(@)",
    header: headerGptrsf.}
proc setMirror*(this: var GpTrsf; p: GpPnt) {.importcpp: "SetMirror",
                                        header: headerGptrsf.}
proc setMirror*(this: var GpTrsf; a1: GpAx1) {.importcpp: "SetMirror",
    header: headerGptrsf.}
proc setMirror*(this: var GpTrsf; a2: GpAx2) {.importcpp: "SetMirror",
    header: headerGptrsf.}
proc setRotation*(this: var GpTrsf; a1: GpAx1; ang: StandardReal) {.
    importcpp: "SetRotation", header: headerGptrsf.}
proc setRotation*(this: var GpTrsf; r: GpQuaternion) {.importcpp: "SetRotation",
    header: headerGptrsf.}
proc setRotationPart*(this: var GpTrsf; r: GpQuaternion) {.
    importcpp: "SetRotationPart", header: headerGptrsf.}
proc setScale*(this: var GpTrsf; p: GpPnt; s: StandardReal) {.importcpp: "SetScale",
    header: headerGptrsf.}
proc setDisplacement*(this: var GpTrsf; fromSystem1: GpAx3; toSystem2: GpAx3) {.
    importcpp: "SetDisplacement", header: headerGptrsf.}
proc setTransformation*(this: var GpTrsf; fromSystem1: GpAx3; toSystem2: GpAx3) {.
    importcpp: "SetTransformation", header: headerGptrsf.}
proc setTransformation*(this: var GpTrsf; toSystem: GpAx3) {.
    importcpp: "SetTransformation", header: headerGptrsf.}
proc setTransformation*(this: var GpTrsf; r: GpQuaternion; t: GpVec) {.
    importcpp: "SetTransformation", header: headerGptrsf.}
proc setTranslation*(this: var GpTrsf; v: GpVec) {.importcpp: "SetTranslation",
    header: headerGptrsf.}
proc setTranslation*(this: var GpTrsf; p1: GpPnt; p2: GpPnt) {.
    importcpp: "SetTranslation", header: headerGptrsf.}
proc setTranslationPart*(this: var GpTrsf; v: GpVec) {.
    importcpp: "SetTranslationPart", header: headerGptrsf.}
proc setScaleFactor*(this: var GpTrsf; s: StandardReal) {.importcpp: "SetScaleFactor",
    header: headerGptrsf.}
proc setForm*(this: var GpTrsf; p: GpTrsfForm) {.importcpp: "SetForm",
    header: headerGptrsf.}
proc setValues*(this: var GpTrsf; a11: StandardReal; a12: StandardReal;
               a13: StandardReal; a14: StandardReal; a21: StandardReal;
               a22: StandardReal; a23: StandardReal; a24: StandardReal;
               a31: StandardReal; a32: StandardReal; a33: StandardReal;
               a34: StandardReal) {.importcpp: "SetValues", header: headerGptrsf.}
proc isNegative*(this: GpTrsf): StandardBoolean {.noSideEffect,
    importcpp: "IsNegative", header: headerGptrsf.}
proc form*(this: GpTrsf): GpTrsfForm {.noSideEffect, importcpp: "Form",
                                   header: headerGptrsf.}
proc scaleFactor*(this: GpTrsf): StandardReal {.noSideEffect,
    importcpp: "ScaleFactor", header: headerGptrsf.}
proc translationPart*(this: GpTrsf): GpXYZ {.noSideEffect,
    importcpp: "TranslationPart", header: headerGptrsf.}
proc getRotation*(this: GpTrsf; theAxis: var GpXYZ; theAngle: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "GetRotation", header: headerGptrsf.}
proc getRotation*(this: GpTrsf): GpQuaternion {.noSideEffect,
    importcpp: "GetRotation", header: headerGptrsf.}
proc vectorialPart*(this: GpTrsf): GpMat {.noSideEffect, importcpp: "VectorialPart",
                                       header: headerGptrsf.}
proc hVectorialPart*(this: GpTrsf): GpMat {.noSideEffect,
                                        importcpp: "HVectorialPart",
                                        header: headerGptrsf.}
proc value*(this: GpTrsf; row: StandardInteger; col: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Value", header: headerGptrsf.}
proc invert*(this: var GpTrsf) {.importcpp: "Invert", header: headerGptrsf.}
proc inverted*(this: GpTrsf): GpTrsf {.noSideEffect, importcpp: "Inverted",
                                   header: headerGptrsf.}
proc multiplied*(this: GpTrsf; t: GpTrsf): GpTrsf {.noSideEffect,
    importcpp: "Multiplied", header: headerGptrsf.}
proc `*`*(this: GpTrsf; t: GpTrsf): GpTrsf {.noSideEffect, importcpp: "(# * #)",
                                       header: headerGptrsf.}
proc multiply*(this: var GpTrsf; t: GpTrsf) {.importcpp: "Multiply",
                                        header: headerGptrsf.}
proc `*=`*(this: var GpTrsf; t: GpTrsf) {.importcpp: "(# *= #)", header: headerGptrsf.}
proc preMultiply*(this: var GpTrsf; t: GpTrsf) {.importcpp: "PreMultiply",
    header: headerGptrsf.}
proc power*(this: var GpTrsf; n: StandardInteger) {.importcpp: "Power",
    header: headerGptrsf.}
proc powered*(this: GpTrsf; n: StandardInteger): GpTrsf {.noSideEffect,
    importcpp: "Powered", header: headerGptrsf.}
proc transforms*(this: GpTrsf; x: var StandardReal; y: var StandardReal;
                z: var StandardReal) {.noSideEffect, importcpp: "Transforms",
                                    header: headerGptrsf.}
proc transforms*(this: GpTrsf; coord: var GpXYZ) {.noSideEffect,
    importcpp: "Transforms", header: headerGptrsf.}
proc getMat4*[T](this: GpTrsf; theMat: var NCollectionMat4[T]) {.noSideEffect,
    importcpp: "GetMat4", header: headerGptrsf.}
proc dumpJson*(this: GpTrsf; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGptrsf.}
proc initFromJson*(this: var GpTrsf; theSStream: StandardSStream;
                  theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: headerGptrsf.}