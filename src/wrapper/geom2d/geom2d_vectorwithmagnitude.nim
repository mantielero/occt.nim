import geom2d_types
import ../gp/gp_types
import ../standard/standard_types





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





proc newGeom2dVectorWithMagnitude*(v: Vec2dObj): Geom2dVectorWithMagnitude {.cdecl,
    constructor, importcpp: "Geom2d_VectorWithMagnitude(@)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc newGeom2dVectorWithMagnitude*(x: cfloat; y: cfloat): Geom2dVectorWithMagnitude {.
    cdecl, constructor, importcpp: "Geom2d_VectorWithMagnitude(@)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc newGeom2dVectorWithMagnitude*(p1: Pnt2dObj; p2: Pnt2dObj): Geom2dVectorWithMagnitude {.
    cdecl, constructor, importcpp: "Geom2d_VectorWithMagnitude(@)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc setCoord*(this: var Geom2dVectorWithMagnitude; x: cfloat; y: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "Geom2d_VectorWithMagnitude.hxx".}
proc setVec2d*(this: var Geom2dVectorWithMagnitude; v: Vec2dObj) {.cdecl,
    importcpp: "SetVec2d", header: "Geom2d_VectorWithMagnitude.hxx".}
proc setX*(this: var Geom2dVectorWithMagnitude; x: cfloat) {.cdecl, importcpp: "SetX",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc setY*(this: var Geom2dVectorWithMagnitude; y: cfloat) {.cdecl, importcpp: "SetY",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc magnitude*(this: Geom2dVectorWithMagnitude): cfloat {.noSideEffect, cdecl,
    importcpp: "Magnitude", header: "Geom2d_VectorWithMagnitude.hxx".}
proc squareMagnitude*(this: Geom2dVectorWithMagnitude): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", header: "Geom2d_VectorWithMagnitude.hxx".}
proc add*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.cdecl,
    importcpp: "Add", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `+=`*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.cdecl,
    importcpp: "(# += #)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc added*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Added",
                                header: "Geom2d_VectorWithMagnitude.hxx".}
proc `+`*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "(# + #)",
                                header: "Geom2d_VectorWithMagnitude.hxx".}
proc crossed*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): cfloat {.
    noSideEffect, cdecl, importcpp: "Crossed", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `^`*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): cfloat {.
    noSideEffect, cdecl, importcpp: "(# ^ #)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc divide*(this: var Geom2dVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "Divide", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `/=`*(this: var Geom2dVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "(# /= #)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc divided*(this: Geom2dVectorWithMagnitude; scalar: cfloat): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Divided",
                                header: "Geom2d_VectorWithMagnitude.hxx".}
proc `/`*(this: Geom2dVectorWithMagnitude; scalar: cfloat): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "(# / #)",
                                header: "Geom2d_VectorWithMagnitude.hxx".}
proc multiplied*(this: Geom2dVectorWithMagnitude; scalar: cfloat): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Multiplied",
                                header: "Geom2d_VectorWithMagnitude.hxx".}
proc multiply*(this: var Geom2dVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "Multiply", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `*=`*(this: var Geom2dVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "(# *= #)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc normalize*(this: var Geom2dVectorWithMagnitude) {.cdecl, importcpp: "Normalize",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc normalized*(this: Geom2dVectorWithMagnitude): Handle[Geom2dVectorWithMagnitude] {.
    noSideEffect, cdecl, importcpp: "Normalized", header: "Geom2d_VectorWithMagnitude.hxx".}
proc subtract*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.
    cdecl, importcpp: "Subtract", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `-=`*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.cdecl,
    importcpp: "(# -= #)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc subtracted*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Subtracted",
                                header: "Geom2d_VectorWithMagnitude.hxx".}
proc `-`*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "(# - #)",
                                header: "Geom2d_VectorWithMagnitude.hxx".}
proc transform*(this: var Geom2dVectorWithMagnitude; t: Trsf2dObj) {.cdecl,
    importcpp: "Transform", header: "Geom2d_VectorWithMagnitude.hxx".}
proc copy*(this: Geom2dVectorWithMagnitude): Handle[Geom2dGeometry] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "Geom2d_VectorWithMagnitude.hxx".}


