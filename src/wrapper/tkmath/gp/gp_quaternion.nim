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
  Quaternion* {.importcpp: "gp_Quaternion", header: "gp_Quaternion.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## identity
                                                                                   ## quaternion


proc newQuaternion*(): Quaternion {.cdecl, constructor,
                                 importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc newQuaternion*(x: cfloat; y: cfloat; z: cfloat; w: cfloat): Quaternion {.cdecl,
    constructor, importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc newQuaternion*(theVecFrom: Vec; theVecTo: Vec): Quaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc newQuaternion*(theVecFrom: Vec; theVecTo: Vec; theHelpCrossVec: Vec): Quaternion {.
    cdecl, constructor, importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc newQuaternion*(theAxis: Vec; theAngle: cfloat): Quaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc newQuaternion*(theMat: Mat): Quaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", dynlib: tkmath.}
proc isEqual*(this: Quaternion; theOther: Quaternion): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc setRotation*(this: var Quaternion; theVecFrom: Vec; theVecTo: Vec) {.cdecl,
    importcpp: "SetRotation", dynlib: tkmath.}
proc setRotation*(this: var Quaternion; theVecFrom: Vec; theVecTo: Vec;
                 theHelpCrossVec: Vec) {.cdecl, importcpp: "SetRotation",
                                       dynlib: tkmath.}
proc setVectorAndAngle*(this: var Quaternion; theAxis: Vec; theAngle: cfloat) {.cdecl,
    importcpp: "SetVectorAndAngle", dynlib: tkmath.}
proc getVectorAndAngle*(this: Quaternion; theAxis: var Vec; theAngle: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetVectorAndAngle", dynlib: tkmath.}
proc setMatrix*(this: var Quaternion; theMat: Mat) {.cdecl, importcpp: "SetMatrix",
    dynlib: tkmath.}
proc getMatrix*(this: Quaternion): Mat {.noSideEffect, cdecl, importcpp: "GetMatrix",
                                     dynlib: tkmath.}
proc setEulerAngles*(this: var Quaternion; theOrder: EulerSequence; theAlpha: cfloat;
                    theBeta: cfloat; theGamma: cfloat) {.cdecl,
    importcpp: "SetEulerAngles", dynlib: tkmath.}
proc getEulerAngles*(this: Quaternion; theOrder: EulerSequence; theAlpha: var cfloat;
                    theBeta: var cfloat; theGamma: var cfloat) {.noSideEffect, cdecl,
    importcpp: "GetEulerAngles", dynlib: tkmath.}
proc set*(this: var Quaternion; x: cfloat; y: cfloat; z: cfloat; w: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkmath.}
proc set*(this: var Quaternion; theQuaternion: Quaternion) {.cdecl, importcpp: "Set",
    dynlib: tkmath.}
proc x*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc w*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "W", dynlib: tkmath.}
proc setIdent*(this: var Quaternion) {.cdecl, importcpp: "SetIdent", dynlib: tkmath.}
proc reverse*(this: var Quaternion) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Reversed", dynlib: tkmath.}
proc invert*(this: var Quaternion) {.cdecl, importcpp: "Invert", dynlib: tkmath.}
proc inverted*(this: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Inverted", dynlib: tkmath.}
proc squareNorm*(this: Quaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareNorm", dynlib: tkmath.}
proc norm*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "Norm",
                                   dynlib: tkmath.}
proc scale*(this: var Quaternion; theScale: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc `*=`*(this: var Quaternion; theScale: cfloat) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc scaled*(this: Quaternion; theScale: cfloat): Quaternion {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc `*`*(this: Quaternion; theScale: cfloat): Quaternion {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc stabilizeLength*(this: var Quaternion) {.cdecl, importcpp: "StabilizeLength",
    dynlib: tkmath.}
proc normalize*(this: var Quaternion) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Normalized", dynlib: tkmath.}
proc negated*(this: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Negated", dynlib: tkmath.}
proc `-`*(this: Quaternion): Quaternion {.noSideEffect, cdecl, importcpp: "(- #)",
                                      dynlib: tkmath.}
proc added*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Added", dynlib: tkmath.}
proc `+`*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "(# + #)", dynlib: tkmath.}
proc subtracted*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    cdecl, importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "(# - #)", dynlib: tkmath.}
proc multiplied*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    cdecl, importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc add*(this: var Quaternion; theOther: Quaternion) {.cdecl, importcpp: "Add",
    dynlib: tkmath.}
proc `+=`*(this: var Quaternion; theOther: Quaternion) {.cdecl, importcpp: "(# += #)",
    dynlib: tkmath.}
proc subtract*(this: var Quaternion; theOther: Quaternion) {.cdecl,
    importcpp: "Subtract", dynlib: tkmath.}
proc `-=`*(this: var Quaternion; theOther: Quaternion) {.cdecl, importcpp: "(# -= #)",
    dynlib: tkmath.}
proc multiply*(this: var Quaternion; theOther: Quaternion) {.cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc `*=`*(this: var Quaternion; theOther: Quaternion) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc dot*(this: Quaternion; theOther: Quaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "Dot", dynlib: tkmath.}
proc getRotationAngle*(this: Quaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "GetRotationAngle", dynlib: tkmath.}
proc multiply*(this: Quaternion; theVec: Vec): Vec {.noSideEffect, cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc `*`*(this: Quaternion; theVec: Vec): Vec {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}