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
                                 importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc newQuaternion*(x: cfloat; y: cfloat; z: cfloat; w: cfloat): Quaternion {.cdecl,
    constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc newQuaternion*(theVecFrom: Vec; theVecTo: Vec): Quaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc newQuaternion*(theVecFrom: Vec; theVecTo: Vec; theHelpCrossVec: Vec): Quaternion {.
    cdecl, constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc newQuaternion*(theAxis: Vec; theAngle: cfloat): Quaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc newQuaternion*(theMat: Mat): Quaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc isEqual*(this: Quaternion; theOther: Quaternion): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_Quaternion.hxx".}
proc setRotation*(this: var Quaternion; theVecFrom: Vec; theVecTo: Vec) {.cdecl,
    importcpp: "SetRotation", header: "gp_Quaternion.hxx".}
proc setRotation*(this: var Quaternion; theVecFrom: Vec; theVecTo: Vec;
                 theHelpCrossVec: Vec) {.cdecl, importcpp: "SetRotation",
                                       header: "gp_Quaternion.hxx".}
proc setVectorAndAngle*(this: var Quaternion; theAxis: Vec; theAngle: cfloat) {.cdecl,
    importcpp: "SetVectorAndAngle", header: "gp_Quaternion.hxx".}
proc getVectorAndAngle*(this: Quaternion; theAxis: var Vec; theAngle: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetVectorAndAngle", header: "gp_Quaternion.hxx".}
proc setMatrix*(this: var Quaternion; theMat: Mat) {.cdecl, importcpp: "SetMatrix",
    header: "gp_Quaternion.hxx".}
proc getMatrix*(this: Quaternion): Mat {.noSideEffect, cdecl, importcpp: "GetMatrix",
                                     header: "gp_Quaternion.hxx".}
proc setEulerAngles*(this: var Quaternion; theOrder: EulerSequence; theAlpha: cfloat;
                    theBeta: cfloat; theGamma: cfloat) {.cdecl,
    importcpp: "SetEulerAngles", header: "gp_Quaternion.hxx".}
proc getEulerAngles*(this: Quaternion; theOrder: EulerSequence; theAlpha: var cfloat;
                    theBeta: var cfloat; theGamma: var cfloat) {.noSideEffect, cdecl,
    importcpp: "GetEulerAngles", header: "gp_Quaternion.hxx".}
proc set*(this: var Quaternion; x: cfloat; y: cfloat; z: cfloat; w: cfloat) {.cdecl,
    importcpp: "Set", header: "gp_Quaternion.hxx".}
proc set*(this: var Quaternion; theQuaternion: Quaternion) {.cdecl, importcpp: "Set",
    header: "gp_Quaternion.hxx".}
proc x*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Quaternion.hxx".}
proc y*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Quaternion.hxx".}
proc z*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_Quaternion.hxx".}
proc w*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "W", header: "gp_Quaternion.hxx".}
proc setIdent*(this: var Quaternion) {.cdecl, importcpp: "SetIdent", header: "gp_Quaternion.hxx".}
proc reverse*(this: var Quaternion) {.cdecl, importcpp: "Reverse", header: "gp_Quaternion.hxx".}
proc reversed*(this: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Reversed", header: "gp_Quaternion.hxx".}
proc invert*(this: var Quaternion) {.cdecl, importcpp: "Invert", header: "gp_Quaternion.hxx".}
proc inverted*(this: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Inverted", header: "gp_Quaternion.hxx".}
proc squareNorm*(this: Quaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareNorm", header: "gp_Quaternion.hxx".}
proc norm*(this: Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "Norm",
                                   header: "gp_Quaternion.hxx".}
proc scale*(this: var Quaternion; theScale: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Quaternion.hxx".}
proc `*=`*(this: var Quaternion; theScale: cfloat) {.cdecl, importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
proc scaled*(this: Quaternion; theScale: cfloat): Quaternion {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Quaternion.hxx".}
proc `*`*(this: Quaternion; theScale: cfloat): Quaternion {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
proc stabilizeLength*(this: var Quaternion) {.cdecl, importcpp: "StabilizeLength",
    header: "gp_Quaternion.hxx".}
proc normalize*(this: var Quaternion) {.cdecl, importcpp: "Normalize", header: "gp_Quaternion.hxx".}
proc normalized*(this: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Normalized", header: "gp_Quaternion.hxx".}
proc negated*(this: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Negated", header: "gp_Quaternion.hxx".}
proc `-`*(this: Quaternion): Quaternion {.noSideEffect, cdecl, importcpp: "(- #)",
                                      header: "gp_Quaternion.hxx".}
proc added*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "Added", header: "gp_Quaternion.hxx".}
proc `+`*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "(# + #)", header: "gp_Quaternion.hxx".}
proc subtracted*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    cdecl, importcpp: "Subtracted", header: "gp_Quaternion.hxx".}
proc `-`*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "(# - #)", header: "gp_Quaternion.hxx".}
proc multiplied*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    cdecl, importcpp: "Multiplied", header: "gp_Quaternion.hxx".}
proc `*`*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
proc add*(this: var Quaternion; theOther: Quaternion) {.cdecl, importcpp: "Add",
    header: "gp_Quaternion.hxx".}
proc `+=`*(this: var Quaternion; theOther: Quaternion) {.cdecl, importcpp: "(# += #)",
    header: "gp_Quaternion.hxx".}
proc subtract*(this: var Quaternion; theOther: Quaternion) {.cdecl,
    importcpp: "Subtract", header: "gp_Quaternion.hxx".}
proc `-=`*(this: var Quaternion; theOther: Quaternion) {.cdecl, importcpp: "(# -= #)",
    header: "gp_Quaternion.hxx".}
proc multiply*(this: var Quaternion; theOther: Quaternion) {.cdecl,
    importcpp: "Multiply", header: "gp_Quaternion.hxx".}
proc `*=`*(this: var Quaternion; theOther: Quaternion) {.cdecl, importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
proc dot*(this: Quaternion; theOther: Quaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "Dot", header: "gp_Quaternion.hxx".}
proc getRotationAngle*(this: Quaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "GetRotationAngle", header: "gp_Quaternion.hxx".}
proc multiply*(this: Quaternion; theVec: Vec): Vec {.noSideEffect, cdecl,
    importcpp: "Multiply", header: "gp_Quaternion.hxx".}
proc `*`*(this: Quaternion; theVec: Vec): Vec {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}