import gp_types

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

proc quaternion*(): QuaternionObj {.cdecl, constructor,
                                 importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(x: cfloat; y: cfloat; z: cfloat; w: cfloat): QuaternionObj {.cdecl,
    constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(theVecFrom: gp_Vec; theVecTo: gp_Vec): QuaternionObj {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(theVecFrom: gp_Vec; theVecTo: gp_Vec; theHelpCrossVec: gp_Vec): QuaternionObj {.
    cdecl, constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(theAxis: gp_Vec; theAngle: cfloat): QuaternionObj {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(theMat: MatObj): QuaternionObj {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc isEqual*(this: QuaternionObj; theOther: QuaternionObj): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_Quaternion.hxx".}
proc setRotation*(this: var QuaternionObj; theVecFrom: gp_Vec; theVecTo: gp_Vec) {.cdecl,
    importcpp: "SetRotation", header: "gp_Quaternion.hxx".}
proc setRotation*(this: var QuaternionObj; theVecFrom: gp_Vec; theVecTo: gp_Vec;
                 theHelpCrossVec: gp_Vec) {.cdecl, importcpp: "SetRotation",
                                       header: "gp_Quaternion.hxx".}
proc setVectorAndAngle*(this: var QuaternionObj; theAxis: gp_Vec; theAngle: cfloat) {.cdecl,
    importcpp: "SetVectorAndAngle", header: "gp_Quaternion.hxx".}
proc getVectorAndAngle*(this: QuaternionObj; theAxis: var gp_Vec; theAngle: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetVectorAndAngle", header: "gp_Quaternion.hxx".}
proc setMatrix*(this: var QuaternionObj; theMat: MatObj) {.cdecl, importcpp: "SetMatrix",
    header: "gp_Quaternion.hxx".}
proc getMatrix*(this: QuaternionObj): MatObj {.noSideEffect, cdecl, importcpp: "GetMatrix",
                                     header: "gp_Quaternion.hxx".}
proc setEulerAngles*(this: var QuaternionObj; theOrder: EulerSequenceObj; theAlpha: cfloat;
                    theBeta: cfloat; theGamma: cfloat) {.cdecl,
    importcpp: "SetEulerAngles", header: "gp_Quaternion.hxx".}
proc getEulerAngles*(this: QuaternionObj; theOrder: EulerSequenceObj; theAlpha: var cfloat;
                    theBeta: var cfloat; theGamma: var cfloat) {.noSideEffect, cdecl,
    importcpp: "GetEulerAngles", header: "gp_Quaternion.hxx".}
proc set*(this: var QuaternionObj; x: cfloat; y: cfloat; z: cfloat; w: cfloat) {.cdecl,
    importcpp: "Set", header: "gp_Quaternion.hxx".}
proc set*(this: var QuaternionObj; theQuaternion: QuaternionObj) {.cdecl, importcpp: "Set",
    header: "gp_Quaternion.hxx".}
proc x*(this: QuaternionObj): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Quaternion.hxx".}
proc y*(this: QuaternionObj): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Quaternion.hxx".}
proc z*(this: QuaternionObj): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_Quaternion.hxx".}
proc w*(this: QuaternionObj): cfloat {.noSideEffect, cdecl, importcpp: "W", header: "gp_Quaternion.hxx".}
proc setIdent*(this: var QuaternionObj) {.cdecl, importcpp: "SetIdent", header: "gp_Quaternion.hxx".}
proc reverse*(this: var QuaternionObj) {.cdecl, importcpp: "Reverse", header: "gp_Quaternion.hxx".}
proc reversed*(this: QuaternionObj): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "Reversed", header: "gp_Quaternion.hxx".}
proc invert*(this: var QuaternionObj) {.cdecl, importcpp: "Invert", header: "gp_Quaternion.hxx".}
proc inverted*(this: QuaternionObj): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "Inverted", header: "gp_Quaternion.hxx".}
proc squareNorm*(this: QuaternionObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareNorm", header: "gp_Quaternion.hxx".}
proc norm*(this: QuaternionObj): cfloat {.noSideEffect, cdecl, importcpp: "Norm",
                                   header: "gp_Quaternion.hxx".}
proc scale*(this: var QuaternionObj; theScale: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Quaternion.hxx".}
proc `*=`*(this: var QuaternionObj; theScale: cfloat) {.cdecl, importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
proc scaled*(this: QuaternionObj; theScale: cfloat): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Quaternion.hxx".}
proc `*`*(this: QuaternionObj; theScale: cfloat): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
proc stabilizeLength*(this: var QuaternionObj) {.cdecl, importcpp: "StabilizeLength",
    header: "gp_Quaternion.hxx".}
proc normalize*(this: var QuaternionObj) {.cdecl, importcpp: "Normalize", header: "gp_Quaternion.hxx".}
proc normalized*(this: QuaternionObj): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "Normalized", header: "gp_Quaternion.hxx".}
proc negated*(this: QuaternionObj): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "Negated", header: "gp_Quaternion.hxx".}
proc `-`*(this: QuaternionObj): QuaternionObj {.noSideEffect, cdecl, importcpp: "(- #)",
                                      header: "gp_Quaternion.hxx".}
proc added*(this: QuaternionObj; theOther: QuaternionObj): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "Added", header: "gp_Quaternion.hxx".}
proc `+`*(this: QuaternionObj; theOther: QuaternionObj): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "(# + #)", header: "gp_Quaternion.hxx".}
proc subtracted*(this: QuaternionObj; theOther: QuaternionObj): QuaternionObj {.noSideEffect,
    cdecl, importcpp: "Subtracted", header: "gp_Quaternion.hxx".}
proc `-`*(this: QuaternionObj; theOther: QuaternionObj): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "(# - #)", header: "gp_Quaternion.hxx".}
proc multiplied*(this: QuaternionObj; theOther: QuaternionObj): QuaternionObj {.noSideEffect,
    cdecl, importcpp: "Multiplied", header: "gp_Quaternion.hxx".}
proc `*`*(this: QuaternionObj; theOther: QuaternionObj): QuaternionObj {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
proc add*(this: var QuaternionObj; theOther: QuaternionObj) {.cdecl, importcpp: "Add",
    header: "gp_Quaternion.hxx".}
proc `+=`*(this: var QuaternionObj; theOther: QuaternionObj) {.cdecl, importcpp: "(# += #)",
    header: "gp_Quaternion.hxx".}
proc subtract*(this: var QuaternionObj; theOther: QuaternionObj) {.cdecl,
    importcpp: "Subtract", header: "gp_Quaternion.hxx".}
proc `-=`*(this: var QuaternionObj; theOther: QuaternionObj) {.cdecl, importcpp: "(# -= #)",
    header: "gp_Quaternion.hxx".}
proc multiply*(this: var QuaternionObj; theOther: QuaternionObj) {.cdecl,
    importcpp: "Multiply", header: "gp_Quaternion.hxx".}
proc `*=`*(this: var QuaternionObj; theOther: QuaternionObj) {.cdecl, importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
proc dot*(this: QuaternionObj; theOther: QuaternionObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Dot", header: "gp_Quaternion.hxx".}
proc getRotationAngle*(this: QuaternionObj): cfloat {.noSideEffect, cdecl,
    importcpp: "GetRotationAngle", header: "gp_Quaternion.hxx".}
proc multiply*(this: QuaternionObj; theVec: gp_Vec): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Multiply", header: "gp_Quaternion.hxx".}
proc `*`*(this: QuaternionObj; theVec: gp_Vec): gp_Vec {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
