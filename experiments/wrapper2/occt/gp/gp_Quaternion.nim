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


proc constructQuaternion*(): Quaternion {.constructor,
                                       importcpp: "gp_Quaternion(@)",
                                       header: "gp_Quaternion.hxx".}
proc constructQuaternion*(x: float; y: float; z: float; w: float): Quaternion {.
    constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc constructQuaternion*(theVecFrom: Vec; theVecTo: Vec): Quaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc constructQuaternion*(theVecFrom: Vec; theVecTo: Vec; theHelpCrossVec: Vec): Quaternion {.
    constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc constructQuaternion*(theAxis: Vec; theAngle: float): Quaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc constructQuaternion*(theMat: Mat): Quaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc isEqual*(this: Quaternion; theOther: Quaternion): bool {.noSideEffect,
    importcpp: "IsEqual", header: "gp_Quaternion.hxx".}
proc setRotation*(this: var Quaternion; theVecFrom: Vec; theVecTo: Vec) {.
    importcpp: "SetRotation", header: "gp_Quaternion.hxx".}
proc setRotation*(this: var Quaternion; theVecFrom: Vec; theVecTo: Vec;
                 theHelpCrossVec: Vec) {.importcpp: "SetRotation",
                                       header: "gp_Quaternion.hxx".}
proc setVectorAndAngle*(this: var Quaternion; theAxis: Vec; theAngle: float) {.
    importcpp: "SetVectorAndAngle", header: "gp_Quaternion.hxx".}
proc getVectorAndAngle*(this: Quaternion; theAxis: var Vec; theAngle: var float) {.
    noSideEffect, importcpp: "GetVectorAndAngle", header: "gp_Quaternion.hxx".}
proc setMatrix*(this: var Quaternion; theMat: Mat) {.importcpp: "SetMatrix",
    header: "gp_Quaternion.hxx".}
proc getMatrix*(this: Quaternion): Mat {.noSideEffect, importcpp: "GetMatrix",
                                     header: "gp_Quaternion.hxx".}
proc setEulerAngles*(this: var Quaternion; theOrder: EulerSequence; theAlpha: float;
                    theBeta: float; theGamma: float) {.importcpp: "SetEulerAngles",
    header: "gp_Quaternion.hxx".}
proc getEulerAngles*(this: Quaternion; theOrder: EulerSequence; theAlpha: var float;
                    theBeta: var float; theGamma: var float) {.noSideEffect,
    importcpp: "GetEulerAngles", header: "gp_Quaternion.hxx".}
proc set*(this: var Quaternion; x: float; y: float; z: float; w: float) {.importcpp: "Set",
    header: "gp_Quaternion.hxx".}
proc set*(this: var Quaternion; theQuaternion: Quaternion) {.importcpp: "Set",
    header: "gp_Quaternion.hxx".}
proc x*(this: Quaternion): float {.noSideEffect, importcpp: "X",
                               header: "gp_Quaternion.hxx".}
proc y*(this: Quaternion): float {.noSideEffect, importcpp: "Y",
                               header: "gp_Quaternion.hxx".}
proc z*(this: Quaternion): float {.noSideEffect, importcpp: "Z",
                               header: "gp_Quaternion.hxx".}
proc w*(this: Quaternion): float {.noSideEffect, importcpp: "W",
                               header: "gp_Quaternion.hxx".}
proc setIdent*(this: var Quaternion) {.importcpp: "SetIdent",
                                   header: "gp_Quaternion.hxx".}
proc reverse*(this: var Quaternion) {.importcpp: "Reverse",
                                  header: "gp_Quaternion.hxx".}
proc reversed*(this: Quaternion): Quaternion {.noSideEffect, importcpp: "Reversed",
    header: "gp_Quaternion.hxx".}
proc invert*(this: var Quaternion) {.importcpp: "Invert", header: "gp_Quaternion.hxx".}
proc inverted*(this: Quaternion): Quaternion {.noSideEffect, importcpp: "Inverted",
    header: "gp_Quaternion.hxx".}
proc squareNorm*(this: Quaternion): float {.noSideEffect, importcpp: "SquareNorm",
                                        header: "gp_Quaternion.hxx".}
proc norm*(this: Quaternion): float {.noSideEffect, importcpp: "Norm",
                                  header: "gp_Quaternion.hxx".}
proc scale*(this: var Quaternion; theScale: float) {.importcpp: "Scale",
    header: "gp_Quaternion.hxx".}
proc `*=`*(this: var Quaternion; theScale: float) {.importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
proc scaled*(this: Quaternion; theScale: float): Quaternion {.noSideEffect,
    importcpp: "Scaled", header: "gp_Quaternion.hxx".}
proc `*`*(this: Quaternion; theScale: float): Quaternion {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
proc stabilizeLength*(this: var Quaternion) {.importcpp: "StabilizeLength",
    header: "gp_Quaternion.hxx".}
proc normalize*(this: var Quaternion) {.importcpp: "Normalize",
                                    header: "gp_Quaternion.hxx".}
proc normalized*(this: Quaternion): Quaternion {.noSideEffect,
    importcpp: "Normalized", header: "gp_Quaternion.hxx".}
proc negated*(this: Quaternion): Quaternion {.noSideEffect, importcpp: "Negated",
    header: "gp_Quaternion.hxx".}
proc `-`*(this: Quaternion): Quaternion {.noSideEffect, importcpp: "(- #)",
                                      header: "gp_Quaternion.hxx".}
proc added*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    importcpp: "Added", header: "gp_Quaternion.hxx".}
proc `+`*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    importcpp: "(# + #)", header: "gp_Quaternion.hxx".}
proc subtracted*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    importcpp: "Subtracted", header: "gp_Quaternion.hxx".}
proc `-`*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    importcpp: "(# - #)", header: "gp_Quaternion.hxx".}
proc multiplied*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    importcpp: "Multiplied", header: "gp_Quaternion.hxx".}
proc `*`*(this: Quaternion; theOther: Quaternion): Quaternion {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
proc add*(this: var Quaternion; theOther: Quaternion) {.importcpp: "Add",
    header: "gp_Quaternion.hxx".}
proc `+=`*(this: var Quaternion; theOther: Quaternion) {.importcpp: "(# += #)",
    header: "gp_Quaternion.hxx".}
proc subtract*(this: var Quaternion; theOther: Quaternion) {.importcpp: "Subtract",
    header: "gp_Quaternion.hxx".}
proc `-=`*(this: var Quaternion; theOther: Quaternion) {.importcpp: "(# -= #)",
    header: "gp_Quaternion.hxx".}
proc multiply*(this: var Quaternion; theOther: Quaternion) {.importcpp: "Multiply",
    header: "gp_Quaternion.hxx".}
proc `*=`*(this: var Quaternion; theOther: Quaternion) {.importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
proc dot*(this: Quaternion; theOther: Quaternion): float {.noSideEffect,
    importcpp: "Dot", header: "gp_Quaternion.hxx".}
proc getRotationAngle*(this: Quaternion): float {.noSideEffect,
    importcpp: "GetRotationAngle", header: "gp_Quaternion.hxx".}
proc multiply*(this: Quaternion; theVec: Vec): Vec {.noSideEffect,
    importcpp: "Multiply", header: "gp_Quaternion.hxx".}
proc `*`*(this: Quaternion; theVec: Vec): Vec {.noSideEffect, importcpp: "(# * #)",
    header: "gp_Quaternion.hxx".}
