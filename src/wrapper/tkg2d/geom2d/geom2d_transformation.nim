import geom2d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types





##  Created on: 1993-03-24
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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





proc newGeom2dTransformation*(): Geom2dTransformation {.cdecl, constructor,
    importcpp: "Geom2d_Transformation(@)", header: "Geom2d_Transformation.hxx".}
proc newGeom2dTransformation*(t: Trsf2dObj): Geom2dTransformation {.cdecl, constructor,
    importcpp: "Geom2d_Transformation(@)", header: "Geom2d_Transformation.hxx".}
proc setMirror*(this: var Geom2dTransformation; p: Pnt2dObj) {.cdecl,
    importcpp: "SetMirror", header: "Geom2d_Transformation.hxx".}
proc setMirror*(this: var Geom2dTransformation; a: Ax2dObj) {.cdecl,
    importcpp: "SetMirror", header: "Geom2d_Transformation.hxx".}
proc setRotation*(this: var Geom2dTransformation; p: Pnt2dObj; ang: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "Geom2d_Transformation.hxx".}
proc setScale*(this: var Geom2dTransformation; p: Pnt2dObj; s: cfloat) {.cdecl,
    importcpp: "SetScale", header: "Geom2d_Transformation.hxx".}
proc setTransformation*(this: var Geom2dTransformation; fromSystem1: Ax2dObj;
                       toSystem2: Ax2dObj) {.cdecl, importcpp: "SetTransformation",
                                        header: "Geom2d_Transformation.hxx".}
proc setTransformation*(this: var Geom2dTransformation; toSystem: Ax2dObj) {.cdecl,
    importcpp: "SetTransformation", header: "Geom2d_Transformation.hxx".}
proc setTranslation*(this: var Geom2dTransformation; v: Vec2dObj) {.cdecl,
    importcpp: "SetTranslation", header: "Geom2d_Transformation.hxx".}
proc setTranslation*(this: var Geom2dTransformation; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl,
    importcpp: "SetTranslation", header: "Geom2d_Transformation.hxx".}
proc setTrsf2d*(this: var Geom2dTransformation; t: Trsf2dObj) {.cdecl,
    importcpp: "SetTrsf2d", header: "Geom2d_Transformation.hxx".}
proc isNegative*(this: Geom2dTransformation): bool {.noSideEffect, cdecl,
    importcpp: "IsNegative", header: "Geom2d_Transformation.hxx".}
proc form*(this: Geom2dTransformation): TrsfFormObj {.noSideEffect, cdecl,
    importcpp: "Form", header: "Geom2d_Transformation.hxx".}
proc scaleFactor*(this: Geom2dTransformation): cfloat {.noSideEffect, cdecl,
    importcpp: "ScaleFactor", header: "Geom2d_Transformation.hxx".}
proc trsf2d*(this: Geom2dTransformation): Trsf2dObj {.noSideEffect, cdecl,
    importcpp: "Trsf2d", header: "Geom2d_Transformation.hxx".}
proc value*(this: Geom2dTransformation; row: cint; col: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Value", header: "Geom2d_Transformation.hxx".}
proc invert*(this: var Geom2dTransformation) {.cdecl, importcpp: "Invert",
    header: "Geom2d_Transformation.hxx".}
proc inverted*(this: Geom2dTransformation): Handle[Geom2dTransformation] {.
    noSideEffect, cdecl, importcpp: "Inverted", header: "Geom2d_Transformation.hxx".}
proc multiplied*(this: Geom2dTransformation; other: Handle[Geom2dTransformation]): Handle[
    Geom2dTransformation] {.noSideEffect, cdecl, importcpp: "Multiplied",
                           header: "Geom2d_Transformation.hxx".}
proc `*`*(this: Geom2dTransformation; other: Handle[Geom2dTransformation]): Handle[
    Geom2dTransformation] {.noSideEffect, cdecl, importcpp: "(# * #)", header: "Geom2d_Transformation.hxx".}
proc multiply*(this: var Geom2dTransformation; other: Handle[Geom2dTransformation]) {.
    cdecl, importcpp: "Multiply", header: "Geom2d_Transformation.hxx".}
proc `*=`*(this: var Geom2dTransformation; other: Handle[Geom2dTransformation]) {.
    cdecl, importcpp: "(# *= #)", header: "Geom2d_Transformation.hxx".}
proc power*(this: var Geom2dTransformation; n: cint) {.cdecl, importcpp: "Power",
    header: "Geom2d_Transformation.hxx".}
proc powered*(this: Geom2dTransformation; n: cint): Handle[Geom2dTransformation] {.
    noSideEffect, cdecl, importcpp: "Powered", header: "Geom2d_Transformation.hxx".}
proc preMultiply*(this: var Geom2dTransformation;
                 other: Handle[Geom2dTransformation]) {.cdecl,
    importcpp: "PreMultiply", header: "Geom2d_Transformation.hxx".}
proc transforms*(this: Geom2dTransformation; x: var cfloat; y: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Transforms", header: "Geom2d_Transformation.hxx".}
proc copy*(this: Geom2dTransformation): Handle[Geom2dTransformation] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "Geom2d_Transformation.hxx".}


