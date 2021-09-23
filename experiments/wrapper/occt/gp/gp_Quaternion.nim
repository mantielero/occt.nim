# /usr/include/opencascade/gp_Quaternion.hxx --> occt/gp/gp_Quaternion.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpquaternion = "/usr/include/opencascade/gp_Quaternion.hxx"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Mat"
type
  GpQuaternion* {.importcpp: "gp_Quaternion", header: headerGpquaternion, bycopy.} = object


proc `new`*(this: var GpQuaternion; theSize: csize_t): pointer {.
    importcpp: "gp_Quaternion::operator new", header: headerGpquaternion.}
proc `delete`*(this: var GpQuaternion; theAddress: pointer) {.
    importcpp: "gp_Quaternion::operator delete", header: headerGpquaternion.}
proc `new[]`*(this: var GpQuaternion; theSize: csize_t): pointer {.
    importcpp: "gp_Quaternion::operator new[]", header: headerGpquaternion.}
proc `delete[]`*(this: var GpQuaternion; theAddress: pointer) {.
    importcpp: "gp_Quaternion::operator delete[]", header: headerGpquaternion.}
proc `new`*(this: var GpQuaternion; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Quaternion::operator new", header: headerGpquaternion.}
proc `delete`*(this: var GpQuaternion; a2: pointer; a3: pointer) {.
    importcpp: "gp_Quaternion::operator delete", header: headerGpquaternion.}
proc constructGpQuaternion*(): GpQuaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: headerGpquaternion.}
proc constructGpQuaternion*(x: StandardReal; y: StandardReal; z: StandardReal;
                           w: StandardReal): GpQuaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: headerGpquaternion.}
proc constructGpQuaternion*(theVecFrom: GpVec; theVecTo: GpVec): GpQuaternion {.
    constructor, importcpp: "gp_Quaternion(@)", header: headerGpquaternion.}
proc constructGpQuaternion*(theVecFrom: GpVec; theVecTo: GpVec;
                           theHelpCrossVec: GpVec): GpQuaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: headerGpquaternion.}
proc constructGpQuaternion*(theAxis: GpVec; theAngle: StandardReal): GpQuaternion {.
    constructor, importcpp: "gp_Quaternion(@)", header: headerGpquaternion.}
proc constructGpQuaternion*(theMat: GpMat): GpQuaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: headerGpquaternion.}
proc isEqual*(this: GpQuaternion; theOther: GpQuaternion): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: headerGpquaternion.}
proc setRotation*(this: var GpQuaternion; theVecFrom: GpVec; theVecTo: GpVec) {.
    importcpp: "SetRotation", header: headerGpquaternion.}
proc setRotation*(this: var GpQuaternion; theVecFrom: GpVec; theVecTo: GpVec;
                 theHelpCrossVec: GpVec) {.importcpp: "SetRotation",
    header: headerGpquaternion.}
proc setVectorAndAngle*(this: var GpQuaternion; theAxis: GpVec; theAngle: StandardReal) {.
    importcpp: "SetVectorAndAngle", header: headerGpquaternion.}
proc getVectorAndAngle*(this: GpQuaternion; theAxis: var GpVec;
                       theAngle: var StandardReal) {.noSideEffect,
    importcpp: "GetVectorAndAngle", header: headerGpquaternion.}
proc setMatrix*(this: var GpQuaternion; theMat: GpMat) {.importcpp: "SetMatrix",
    header: headerGpquaternion.}
proc getMatrix*(this: GpQuaternion): GpMat {.noSideEffect, importcpp: "GetMatrix",
    header: headerGpquaternion.}
proc setEulerAngles*(this: var GpQuaternion; theOrder: GpEulerSequence;
                    theAlpha: StandardReal; theBeta: StandardReal;
                    theGamma: StandardReal) {.importcpp: "SetEulerAngles",
    header: headerGpquaternion.}
proc getEulerAngles*(this: GpQuaternion; theOrder: GpEulerSequence;
                    theAlpha: var StandardReal; theBeta: var StandardReal;
                    theGamma: var StandardReal) {.noSideEffect,
    importcpp: "GetEulerAngles", header: headerGpquaternion.}
proc set*(this: var GpQuaternion; x: StandardReal; y: StandardReal; z: StandardReal;
         w: StandardReal) {.importcpp: "Set", header: headerGpquaternion.}
proc set*(this: var GpQuaternion; theQuaternion: GpQuaternion) {.importcpp: "Set",
    header: headerGpquaternion.}
proc x*(this: GpQuaternion): StandardReal {.noSideEffect, importcpp: "X",
                                        header: headerGpquaternion.}
proc y*(this: GpQuaternion): StandardReal {.noSideEffect, importcpp: "Y",
                                        header: headerGpquaternion.}
proc z*(this: GpQuaternion): StandardReal {.noSideEffect, importcpp: "Z",
                                        header: headerGpquaternion.}
proc w*(this: GpQuaternion): StandardReal {.noSideEffect, importcpp: "W",
                                        header: headerGpquaternion.}
proc setIdent*(this: var GpQuaternion) {.importcpp: "SetIdent",
                                     header: headerGpquaternion.}
proc reverse*(this: var GpQuaternion) {.importcpp: "Reverse",
                                    header: headerGpquaternion.}
proc reversed*(this: GpQuaternion): GpQuaternion {.noSideEffect,
    importcpp: "Reversed", header: headerGpquaternion.}
proc invert*(this: var GpQuaternion) {.importcpp: "Invert", header: headerGpquaternion.}
proc inverted*(this: GpQuaternion): GpQuaternion {.noSideEffect,
    importcpp: "Inverted", header: headerGpquaternion.}
proc squareNorm*(this: GpQuaternion): StandardReal {.noSideEffect,
    importcpp: "SquareNorm", header: headerGpquaternion.}
proc norm*(this: GpQuaternion): StandardReal {.noSideEffect, importcpp: "Norm",
    header: headerGpquaternion.}
proc scale*(this: var GpQuaternion; theScale: StandardReal) {.importcpp: "Scale",
    header: headerGpquaternion.}
proc `*=`*(this: var GpQuaternion; theScale: StandardReal) {.importcpp: "(# *= #)",
    header: headerGpquaternion.}
proc scaled*(this: GpQuaternion; theScale: StandardReal): GpQuaternion {.noSideEffect,
    importcpp: "Scaled", header: headerGpquaternion.}
proc `*`*(this: GpQuaternion; theScale: StandardReal): GpQuaternion {.noSideEffect,
    importcpp: "(# * #)", header: headerGpquaternion.}
proc stabilizeLength*(this: var GpQuaternion) {.importcpp: "StabilizeLength",
    header: headerGpquaternion.}
proc normalize*(this: var GpQuaternion) {.importcpp: "Normalize",
                                      header: headerGpquaternion.}
proc normalized*(this: GpQuaternion): GpQuaternion {.noSideEffect,
    importcpp: "Normalized", header: headerGpquaternion.}
proc negated*(this: GpQuaternion): GpQuaternion {.noSideEffect, importcpp: "Negated",
    header: headerGpquaternion.}
proc `-`*(this: GpQuaternion): GpQuaternion {.noSideEffect, importcpp: "(- #)",
    header: headerGpquaternion.}
proc added*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.noSideEffect,
    importcpp: "Added", header: headerGpquaternion.}
proc `+`*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.noSideEffect,
    importcpp: "(# + #)", header: headerGpquaternion.}
proc subtracted*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.
    noSideEffect, importcpp: "Subtracted", header: headerGpquaternion.}
proc `-`*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.noSideEffect,
    importcpp: "(# - #)", header: headerGpquaternion.}
proc multiplied*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.
    noSideEffect, importcpp: "Multiplied", header: headerGpquaternion.}
proc `*`*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.noSideEffect,
    importcpp: "(# * #)", header: headerGpquaternion.}
proc add*(this: var GpQuaternion; theOther: GpQuaternion) {.importcpp: "Add",
    header: headerGpquaternion.}
proc `+=`*(this: var GpQuaternion; theOther: GpQuaternion) {.importcpp: "(# += #)",
    header: headerGpquaternion.}
proc subtract*(this: var GpQuaternion; theOther: GpQuaternion) {.
    importcpp: "Subtract", header: headerGpquaternion.}
proc `-=`*(this: var GpQuaternion; theOther: GpQuaternion) {.importcpp: "(# -= #)",
    header: headerGpquaternion.}
proc multiply*(this: var GpQuaternion; theOther: GpQuaternion) {.
    importcpp: "Multiply", header: headerGpquaternion.}
proc `*=`*(this: var GpQuaternion; theOther: GpQuaternion) {.importcpp: "(# *= #)",
    header: headerGpquaternion.}
proc dot*(this: GpQuaternion; theOther: GpQuaternion): StandardReal {.noSideEffect,
    importcpp: "Dot", header: headerGpquaternion.}
proc getRotationAngle*(this: GpQuaternion): StandardReal {.noSideEffect,
    importcpp: "GetRotationAngle", header: headerGpquaternion.}
proc multiply*(this: GpQuaternion; theVec: GpVec): GpVec {.noSideEffect,
    importcpp: "Multiply", header: headerGpquaternion.}
proc `*`*(this: GpQuaternion; theVec: GpVec): GpVec {.noSideEffect,
    importcpp: "(# * #)", header: headerGpquaternion.}