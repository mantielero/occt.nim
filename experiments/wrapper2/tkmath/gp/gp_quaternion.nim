##  Created on: 2010-05-11
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Vec"
discard "forward decl of gp_Mat"
type
  GpQuaternion* {.importcpp: "gp_Quaternion", header: "gp_Quaternion.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## identity
                                                                                     ## quaternion


proc constructGpQuaternion*(): GpQuaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc constructGpQuaternion*(x: cfloat; y: cfloat; z: cfloat; w: cfloat): GpQuaternion {.
    cdecl, constructor, importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc constructGpQuaternion*(theVecFrom: GpVec; theVecTo: GpVec): GpQuaternion {.cdecl,
    constructor, importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc constructGpQuaternion*(theVecFrom: GpVec; theVecTo: GpVec;
                           theHelpCrossVec: GpVec): GpQuaternion {.cdecl,
    constructor, importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc constructGpQuaternion*(theAxis: GpVec; theAngle: cfloat): GpQuaternion {.cdecl,
    constructor, importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc constructGpQuaternion*(theMat: GpMat): GpQuaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc isEqual*(this: GpQuaternion; theOther: GpQuaternion): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc setRotation*(this: var GpQuaternion; theVecFrom: GpVec; theVecTo: GpVec) {.cdecl,
    importcpp: "SetRotation", dynlib: tkmath.}
proc setRotation*(this: var GpQuaternion; theVecFrom: GpVec; theVecTo: GpVec;
                 theHelpCrossVec: GpVec) {.cdecl, importcpp: "SetRotation",
    dynlib: tkmath.}
proc setVectorAndAngle*(this: var GpQuaternion; theAxis: GpVec; theAngle: cfloat) {.
    cdecl, importcpp: "SetVectorAndAngle", dynlib: tkmath.}
proc getVectorAndAngle*(this: GpQuaternion; theAxis: var GpVec; theAngle: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetVectorAndAngle", dynlib: tkmath.}
proc setMatrix*(this: var GpQuaternion; theMat: GpMat) {.cdecl, importcpp: "SetMatrix",
    dynlib: tkmath.}
proc getMatrix*(this: GpQuaternion): GpMat {.noSideEffect, cdecl,
    importcpp: "GetMatrix", dynlib: tkmath.}
proc setEulerAngles*(this: var GpQuaternion; theOrder: GpEulerSequence;
                    theAlpha: cfloat; theBeta: cfloat; theGamma: cfloat) {.cdecl,
    importcpp: "SetEulerAngles", dynlib: tkmath.}
proc getEulerAngles*(this: GpQuaternion; theOrder: GpEulerSequence;
                    theAlpha: var cfloat; theBeta: var cfloat; theGamma: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetEulerAngles", dynlib: tkmath.}
proc set*(this: var GpQuaternion; x: cfloat; y: cfloat; z: cfloat; w: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkmath.}
proc set*(this: var GpQuaternion; theQuaternion: GpQuaternion) {.cdecl,
    importcpp: "Set", dynlib: tkmath.}
proc x*(this: GpQuaternion): cfloat {.noSideEffect, cdecl, importcpp: "X",
                                  dynlib: tkmath.}
proc y*(this: GpQuaternion): cfloat {.noSideEffect, cdecl, importcpp: "Y",
                                  dynlib: tkmath.}
proc z*(this: GpQuaternion): cfloat {.noSideEffect, cdecl, importcpp: "Z",
                                  dynlib: tkmath.}
proc w*(this: GpQuaternion): cfloat {.noSideEffect, cdecl, importcpp: "W",
                                  dynlib: tkmath.}
proc setIdent*(this: var GpQuaternion) {.cdecl, importcpp: "SetIdent", dynlib: tkmath.}
proc reverse*(this: var GpQuaternion) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpQuaternion): GpQuaternion {.noSideEffect, cdecl,
    importcpp: "Reversed", dynlib: tkmath.}
proc invert*(this: var GpQuaternion) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: GpQuaternion): GpQuaternion {.noSideEffect, cdecl,
    importcpp: "Inverted", dynlib: tkmath.}
proc squareNorm*(this: GpQuaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareNorm", dynlib: tkmath.}
proc norm*(this: GpQuaternion): cfloat {.noSideEffect, cdecl, importcpp: "Norm",
                                     dynlib: tkmath.}
proc scale*(this: var GpQuaternion; theScale: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc `*=`*(this: var GpQuaternion; theScale: cfloat) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc scaled*(this: GpQuaternion; theScale: cfloat): GpQuaternion {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc `*`*(this: GpQuaternion; theScale: cfloat): GpQuaternion {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc stabilizeLength*(this: var GpQuaternion) {.cdecl, importcpp: "StabilizeLength",
    dynlib: tkmath.}
proc normalize*(this: var GpQuaternion) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: GpQuaternion): GpQuaternion {.noSideEffect, cdecl,
    importcpp: "Normalized", dynlib: tkmath.}
proc negated*(this: GpQuaternion): GpQuaternion {.noSideEffect, cdecl,
    importcpp: "Negated", dynlib: tkmath.}
proc `-`*(this: GpQuaternion): GpQuaternion {.noSideEffect, cdecl, importcpp: "(- #)",
    dynlib: tkmath.}
proc added*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.noSideEffect,
    cdecl, importcpp: "Added", dynlib: tkmath.}
proc `+`*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.noSideEffect,
    cdecl, importcpp: "(# + #)", dynlib: tkmath.}
proc subtracted*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.
    noSideEffect, cdecl, importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.noSideEffect,
    cdecl, importcpp: "(# - #)", dynlib: tkmath.}
proc multiplied*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpQuaternion; theOther: GpQuaternion): GpQuaternion {.noSideEffect,
    cdecl, importcpp: "(# * #)", dynlib: tkmath.}
proc add*(this: var GpQuaternion; theOther: GpQuaternion) {.cdecl, importcpp: "Add",
    dynlib: tkmath.}
proc `+=`*(this: var GpQuaternion; theOther: GpQuaternion) {.cdecl,
    importcpp: "(# += #)", dynlib: tkmath.}
proc subtract*(this: var GpQuaternion; theOther: GpQuaternion) {.cdecl,
    importcpp: "Subtract", dynlib: tkmath.}
proc `-=`*(this: var GpQuaternion; theOther: GpQuaternion) {.cdecl,
    importcpp: "(# -= #)", dynlib: tkmath.}
proc multiply*(this: var GpQuaternion; theOther: GpQuaternion) {.cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc `*=`*(this: var GpQuaternion; theOther: GpQuaternion) {.cdecl,
    importcpp: "(# *= #)", dynlib: tkmath.}
proc dot*(this: GpQuaternion; theOther: GpQuaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "Dot", dynlib: tkmath.}
proc getRotationAngle*(this: GpQuaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "GetRotationAngle", dynlib: tkmath.}
proc multiply*(this: GpQuaternion; theVec: GpVec): GpVec {.noSideEffect, cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc `*`*(this: GpQuaternion; theVec: GpVec): GpVec {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}