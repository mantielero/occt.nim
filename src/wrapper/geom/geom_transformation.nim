import ../gp/gp_types
import ../standard/standard_types
import geom_types







##  Created on: 1993-03-10
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





proc newGeomTransformation*(): GeomTransformation {.cdecl, constructor,
    importcpp: "Geom_Transformation(@)", header: "Geom_Transformation.hxx".}
proc newGeomTransformation*(t: TrsfObj): GeomTransformation {.cdecl, constructor,
    importcpp: "Geom_Transformation(@)", header: "Geom_Transformation.hxx".}
proc setMirror*(this: var GeomTransformation; thePnt: gp_Pnt) {.cdecl,
    importcpp: "SetMirror", header: "Geom_Transformation.hxx".}
proc setMirror*(this: var GeomTransformation; theA1: Ax1Obj) {.cdecl,
    importcpp: "SetMirror", header: "Geom_Transformation.hxx".}
proc setMirror*(this: var GeomTransformation; theA2: Ax2Obj) {.cdecl,
    importcpp: "SetMirror", header: "Geom_Transformation.hxx".}
proc setRotation*(this: var GeomTransformation; theA1: Ax1Obj; theAng: cfloat) {.cdecl,
    importcpp: "SetRotation", header: "Geom_Transformation.hxx".}
proc setScale*(this: var GeomTransformation; thePnt: gp_Pnt; theScale: cfloat) {.cdecl,
    importcpp: "SetScale", header: "Geom_Transformation.hxx".}
proc setTransformation*(this: var GeomTransformation; theFromSystem1: Ax3Obj;
                       theToSystem2: Ax3Obj) {.cdecl, importcpp: "SetTransformation",
    header: "Geom_Transformation.hxx".}
proc setTransformation*(this: var GeomTransformation; theToSystem: Ax3Obj) {.cdecl,
    importcpp: "SetTransformation", header: "Geom_Transformation.hxx".}
proc setTranslation*(this: var GeomTransformation; theVec: gp_Vec) {.cdecl,
    importcpp: "SetTranslation", header: "Geom_Transformation.hxx".}
proc setTranslation*(this: var GeomTransformation; p1: gp_Pnt; p2: gp_Pnt) {.cdecl,
    importcpp: "SetTranslation", header: "Geom_Transformation.hxx".}
proc setTrsf*(this: var GeomTransformation; theTrsf: TrsfObj) {.cdecl,
    importcpp: "SetTrsf", header: "Geom_Transformation.hxx".}
proc isNegative*(this: GeomTransformation): bool {.noSideEffect, cdecl,
    importcpp: "IsNegative", header: "Geom_Transformation.hxx".}
proc form*(this: GeomTransformation): TrsfFormObj {.noSideEffect, cdecl,
    importcpp: "Form", header: "Geom_Transformation.hxx".}
proc scaleFactor*(this: GeomTransformation): cfloat {.noSideEffect, cdecl,
    importcpp: "ScaleFactor", header: "Geom_Transformation.hxx".}
proc trsf*(this: GeomTransformation): TrsfObj {.noSideEffect, cdecl, importcpp: "Trsf",
    header: "Geom_Transformation.hxx".}
proc value*(this: GeomTransformation; theRow: cint; theCol: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Value", header: "Geom_Transformation.hxx".}
proc invert*(this: var GeomTransformation) {.cdecl, importcpp: "Invert", header: "Geom_Transformation.hxx".}
proc inverted*(this: GeomTransformation): Handle[GeomTransformation] {.noSideEffect,
    cdecl, importcpp: "Inverted", header: "Geom_Transformation.hxx".}
proc multiplied*(this: GeomTransformation; other: Handle[GeomTransformation]): Handle[
    GeomTransformation] {.noSideEffect, cdecl, importcpp: "Multiplied", header: "Geom_Transformation.hxx".}
proc multiply*(this: var GeomTransformation; theOther: Handle[GeomTransformation]) {.
    cdecl, importcpp: "Multiply", header: "Geom_Transformation.hxx".}
proc power*(this: var GeomTransformation; n: cint) {.cdecl, importcpp: "Power",
    header: "Geom_Transformation.hxx".}
proc powered*(this: GeomTransformation; n: cint): Handle[GeomTransformation] {.
    noSideEffect, cdecl, importcpp: "Powered", header: "Geom_Transformation.hxx".}
proc preMultiply*(this: var GeomTransformation; other: Handle[GeomTransformation]) {.
    cdecl, importcpp: "PreMultiply", header: "Geom_Transformation.hxx".}
proc transforms*(this: GeomTransformation; theX: var cfloat; theY: var cfloat;
                theZ: var cfloat) {.noSideEffect, cdecl, importcpp: "Transforms",
                                 header: "Geom_Transformation.hxx".}
proc copy*(this: GeomTransformation): Handle[GeomTransformation] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "Geom_Transformation.hxx".}
proc dumpJson*(this: GeomTransformation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_Transformation.hxx".}



