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

proc quaternion*(): gp_Quaternion {.cdecl, constructor,
                                 importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(x: cfloat; y: cfloat; z: cfloat; w: cfloat): gp_Quaternion {.cdecl,
    constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(theVecFrom: gp_Vec; theVecTo: gp_Vec): gp_Quaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(theVecFrom: gp_Vec; theVecTo: gp_Vec; theHelpCrossVec: gp_Vec): gp_Quaternion {.
    cdecl, constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(theAxis: gp_Vec; theAngle: cfloat): gp_Quaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc quaternion*(theMat: gp_Mat): gp_Quaternion {.cdecl, constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc isEqual*(this: gp_Quaternion; theOther: gp_Quaternion): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_Quaternion.hxx".}
proc setRotation*(this: var gp_Quaternion; theVecFrom: gp_Vec; theVecTo: gp_Vec) {.cdecl,
    importcpp: "SetRotation", header: "gp_Quaternion.hxx".}
proc setRotation*(this: var gp_Quaternion; theVecFrom: gp_Vec; theVecTo: gp_Vec;
                 theHelpCrossVec: gp_Vec) {.cdecl, importcpp: "SetRotation",
                                       header: "gp_Quaternion.hxx".}
proc setVectorAndAngle*(this: var gp_Quaternion; theAxis: gp_Vec; theAngle: cfloat) {.cdecl,
    importcpp: "SetVectorAndAngle", header: "gp_Quaternion.hxx".}
proc getVectorAndAngle*(this: gp_Quaternion; theAxis: var gp_Vec; theAngle: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetVectorAndAngle", header: "gp_Quaternion.hxx".}
proc setMatrix*(this: var gp_Quaternion; theMat: gp_Mat) {.cdecl, importcpp: "SetMatrix",
    header: "gp_Quaternion.hxx".}
proc getMatrix*(this: gp_Quaternion): gp_Mat {.noSideEffect, cdecl, importcpp: "GetMatrix",
                                     header: "gp_Quaternion.hxx".}
proc setEulerAngles*(this: var gp_Quaternion; theOrder: gp_EulerSequence; theAlpha: cfloat;
                    theBeta: cfloat; theGamma: cfloat) {.cdecl,
    importcpp: "SetEulerAngles", header: "gp_Quaternion.hxx".}
proc getEulerAngles*(this: gp_Quaternion; theOrder: gp_EulerSequence; theAlpha: var cfloat;
                    theBeta: var cfloat; theGamma: var cfloat) {.noSideEffect, cdecl,
    importcpp: "GetEulerAngles", header: "gp_Quaternion.hxx".}
proc set*(this: var gp_Quaternion; x: cfloat; y: cfloat; z: cfloat; w: cfloat) {.cdecl,
    importcpp: "Set", header: "gp_Quaternion.hxx".}
proc set*(this: var gp_Quaternion; theQuaternion: gp_Quaternion) {.cdecl, importcpp: "Set",
    header: "gp_Quaternion.hxx".}
proc x*(this: gp_Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Quaternion.hxx".}
proc y*(this: gp_Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Quaternion.hxx".}
proc z*(this: gp_Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_Quaternion.hxx".}
proc w*(this: gp_Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "W", header: "gp_Quaternion.hxx".}
proc setIdent*(this: var gp_Quaternion) {.cdecl, importcpp: "SetIdent", header: "gp_Quaternion.hxx".}
proc reverse*(this: var gp_Quaternion) {.cdecl, importcpp: "Reverse", header: "gp_Quaternion.hxx".}
proc reversed*(this: gp_Quaternion): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "Reversed", header: "gp_Quaternion.hxx".}
proc invert*(this: var gp_Quaternion) {.cdecl, importcpp: "Invert", header: "gp_Quaternion.hxx".}
proc inverted*(this: gp_Quaternion): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "Inverted", header: "gp_Quaternion.hxx".}
proc squareNorm*(this: gp_Quaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareNorm", header: "gp_Quaternion.hxx".}
proc norm*(this: gp_Quaternion): cfloat {.noSideEffect, cdecl, importcpp: "Norm",
                                   header: "gp_Quaternion.hxx".}
proc scale*(this: var gp_Quaternion; theScale: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Quaternion.hxx".}
proc `*=`*(this: var gp_Quaternion; theScale: cfloat) {.cdecl, importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
proc scaled*(this: gp_Quaternion; theScale: cfloat): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Quaternion.hxx".}
proc `*`*(this: gp_Quaternion; theScale: cfloat): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
proc stabilizeLength*(this: var gp_Quaternion) {.cdecl, importcpp: "StabilizeLength",
    header: "gp_Quaternion.hxx".}
proc normalize*(this: var gp_Quaternion) {.cdecl, importcpp: "Normalize", header: "gp_Quaternion.hxx".}
proc normalized*(this: gp_Quaternion): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "Normalized", header: "gp_Quaternion.hxx".}
proc negated*(this: gp_Quaternion): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "Negated", header: "gp_Quaternion.hxx".}
proc `-`*(this: gp_Quaternion): gp_Quaternion {.noSideEffect, cdecl, importcpp: "(- #)",
                                      header: "gp_Quaternion.hxx".}
proc added*(this: gp_Quaternion; theOther: gp_Quaternion): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "Added", header: "gp_Quaternion.hxx".}
proc `+`*(this: gp_Quaternion; theOther: gp_Quaternion): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "(# + #)", header: "gp_Quaternion.hxx".}
proc subtracted*(this: gp_Quaternion; theOther: gp_Quaternion): gp_Quaternion {.noSideEffect,
    cdecl, importcpp: "Subtracted", header: "gp_Quaternion.hxx".}
proc `-`*(this: gp_Quaternion; theOther: gp_Quaternion): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "(# - #)", header: "gp_Quaternion.hxx".}
proc multiplied*(this: gp_Quaternion; theOther: gp_Quaternion): gp_Quaternion {.noSideEffect,
    cdecl, importcpp: "Multiplied", header: "gp_Quaternion.hxx".}
proc `*`*(this: gp_Quaternion; theOther: gp_Quaternion): gp_Quaternion {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
proc add*(this: var gp_Quaternion; theOther: gp_Quaternion) {.cdecl, importcpp: "Add",
    header: "gp_Quaternion.hxx".}
proc `+=`*(this: var gp_Quaternion; theOther: gp_Quaternion) {.cdecl, importcpp: "(# += #)",
    header: "gp_Quaternion.hxx".}
proc subtract*(this: var gp_Quaternion; theOther: gp_Quaternion) {.cdecl,
    importcpp: "Subtract", header: "gp_Quaternion.hxx".}
proc `-=`*(this: var gp_Quaternion; theOther: gp_Quaternion) {.cdecl, importcpp: "(# -= #)",
    header: "gp_Quaternion.hxx".}
proc multiply*(this: var gp_Quaternion; theOther: gp_Quaternion) {.cdecl,
    importcpp: "Multiply", header: "gp_Quaternion.hxx".}
proc `*=`*(this: var gp_Quaternion; theOther: gp_Quaternion) {.cdecl, importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
proc dot*(this: gp_Quaternion; theOther: gp_Quaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "Dot", header: "gp_Quaternion.hxx".}
proc getRotationAngle*(this: gp_Quaternion): cfloat {.noSideEffect, cdecl,
    importcpp: "GetRotationAngle", header: "gp_Quaternion.hxx".}
proc multiply*(this: gp_Quaternion; theVec: gp_Vec): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Multiply", header: "gp_Quaternion.hxx".}
proc `*`*(this: gp_Quaternion; theVec: gp_Vec): gp_Vec {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}
