import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
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





proc newGeomVectorWithMagnitude*(v: VecObj): GeomVectorWithMagnitude {.cdecl,
    constructor, importcpp: "Geom_VectorWithMagnitude(@)", header: "Geom_VectorWithMagnitude.hxx".}
proc newGeomVectorWithMagnitude*(x: cfloat; y: cfloat; z: cfloat): GeomVectorWithMagnitude {.
    cdecl, constructor, importcpp: "Geom_VectorWithMagnitude(@)", header: "Geom_VectorWithMagnitude.hxx".}
proc newGeomVectorWithMagnitude*(p1: PntObj; p2: PntObj): GeomVectorWithMagnitude {.cdecl,
    constructor, importcpp: "Geom_VectorWithMagnitude(@)", header: "Geom_VectorWithMagnitude.hxx".}
proc setCoord*(this: var GeomVectorWithMagnitude; x: cfloat; y: cfloat; z: cfloat) {.
    cdecl, importcpp: "SetCoord", header: "Geom_VectorWithMagnitude.hxx".}
proc setVec*(this: var GeomVectorWithMagnitude; v: VecObj) {.cdecl, importcpp: "SetVec",
    header: "Geom_VectorWithMagnitude.hxx".}
proc setX*(this: var GeomVectorWithMagnitude; x: cfloat) {.cdecl, importcpp: "SetX",
    header: "Geom_VectorWithMagnitude.hxx".}
proc setY*(this: var GeomVectorWithMagnitude; y: cfloat) {.cdecl, importcpp: "SetY",
    header: "Geom_VectorWithMagnitude.hxx".}
proc setZ*(this: var GeomVectorWithMagnitude; z: cfloat) {.cdecl, importcpp: "SetZ",
    header: "Geom_VectorWithMagnitude.hxx".}
proc magnitude*(this: GeomVectorWithMagnitude): cfloat {.noSideEffect, cdecl,
    importcpp: "Magnitude", header: "Geom_VectorWithMagnitude.hxx".}
proc squareMagnitude*(this: GeomVectorWithMagnitude): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", header: "Geom_VectorWithMagnitude.hxx".}
proc add*(this: var GeomVectorWithMagnitude; other: Handle[GeomVector]) {.cdecl,
    importcpp: "Add", header: "Geom_VectorWithMagnitude.hxx".}
proc added*(this: GeomVectorWithMagnitude; other: Handle[GeomVector]): Handle[
    GeomVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Added", header: "Geom_VectorWithMagnitude.hxx".}
proc cross*(this: var GeomVectorWithMagnitude; other: Handle[GeomVector]) {.cdecl,
    importcpp: "Cross", header: "Geom_VectorWithMagnitude.hxx".}
proc crossed*(this: GeomVectorWithMagnitude; other: Handle[GeomVector]): Handle[
    GeomVector] {.noSideEffect, cdecl, importcpp: "Crossed", header: "Geom_VectorWithMagnitude.hxx".}
proc crossCross*(this: var GeomVectorWithMagnitude; v1: Handle[GeomVector];
                v2: Handle[GeomVector]) {.cdecl, importcpp: "CrossCross",
                                        header: "Geom_VectorWithMagnitude.hxx".}
proc crossCrossed*(this: GeomVectorWithMagnitude; v1: Handle[GeomVector];
                  v2: Handle[GeomVector]): Handle[GeomVector] {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", header: "Geom_VectorWithMagnitude.hxx".}
proc divide*(this: var GeomVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "Divide", header: "Geom_VectorWithMagnitude.hxx".}
proc divided*(this: GeomVectorWithMagnitude; scalar: cfloat): Handle[
    GeomVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Divided",
                              header: "Geom_VectorWithMagnitude.hxx".}
proc multiplied*(this: GeomVectorWithMagnitude; scalar: cfloat): Handle[
    GeomVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Multiplied",
                              header: "Geom_VectorWithMagnitude.hxx".}
proc multiply*(this: var GeomVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "Multiply", header: "Geom_VectorWithMagnitude.hxx".}
proc normalize*(this: var GeomVectorWithMagnitude) {.cdecl, importcpp: "Normalize",
    header: "Geom_VectorWithMagnitude.hxx".}
proc normalized*(this: GeomVectorWithMagnitude): Handle[GeomVectorWithMagnitude] {.
    noSideEffect, cdecl, importcpp: "Normalized", header: "Geom_VectorWithMagnitude.hxx".}
proc subtract*(this: var GeomVectorWithMagnitude; other: Handle[GeomVector]) {.cdecl,
    importcpp: "Subtract", header: "Geom_VectorWithMagnitude.hxx".}
proc subtracted*(this: GeomVectorWithMagnitude; other: Handle[GeomVector]): Handle[
    GeomVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Subtracted",
                              header: "Geom_VectorWithMagnitude.hxx".}
proc transform*(this: var GeomVectorWithMagnitude; t: TrsfObj) {.cdecl,
    importcpp: "Transform", header: "Geom_VectorWithMagnitude.hxx".}
proc copy*(this: GeomVectorWithMagnitude): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "Geom_VectorWithMagnitude.hxx".}


