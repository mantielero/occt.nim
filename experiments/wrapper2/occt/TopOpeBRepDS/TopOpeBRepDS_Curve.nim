##  Created on: 1993-06-23
##  Created by: Jean Yves LEBEY
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

discard "forward decl of Geom_Curve"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom2d_Curve"
type
  TopOpeBRepDS_Curve* {.importcpp: "TopOpeBRepDS_Curve",
                       header: "TopOpeBRepDS_Curve.hxx", bycopy.} = object


proc constructTopOpeBRepDS_Curve*(): TopOpeBRepDS_Curve {.constructor,
    importcpp: "TopOpeBRepDS_Curve(@)", header: "TopOpeBRepDS_Curve.hxx".}
proc constructTopOpeBRepDS_Curve*(p: Handle[GeomCurve]; t: cfloat;
                                 isWalk: bool = false): TopOpeBRepDS_Curve {.
    constructor, importcpp: "TopOpeBRepDS_Curve(@)",
    header: "TopOpeBRepDS_Curve.hxx".}
proc defineCurve*(this: var TopOpeBRepDS_Curve; p: Handle[GeomCurve]; t: cfloat;
                 isWalk: bool) {.importcpp: "DefineCurve",
                               header: "TopOpeBRepDS_Curve.hxx".}
proc tolerance*(this: var TopOpeBRepDS_Curve; tol: cfloat) {.importcpp: "Tolerance",
    header: "TopOpeBRepDS_Curve.hxx".}
proc setSCI*(this: var TopOpeBRepDS_Curve; i1: Handle[TopOpeBRepDS_Interference];
            i2: Handle[TopOpeBRepDS_Interference]) {.importcpp: "SetSCI",
    header: "TopOpeBRepDS_Curve.hxx".}
proc getSCI1*(this: TopOpeBRepDS_Curve): Handle[TopOpeBRepDS_Interference] {.
    noSideEffect, importcpp: "GetSCI1", header: "TopOpeBRepDS_Curve.hxx".}
proc getSCI2*(this: TopOpeBRepDS_Curve): Handle[TopOpeBRepDS_Interference] {.
    noSideEffect, importcpp: "GetSCI2", header: "TopOpeBRepDS_Curve.hxx".}
proc getSCI*(this: TopOpeBRepDS_Curve; i1: var Handle[TopOpeBRepDS_Interference];
            i2: var Handle[TopOpeBRepDS_Interference]) {.noSideEffect,
    importcpp: "GetSCI", header: "TopOpeBRepDS_Curve.hxx".}
proc setShapes*(this: var TopOpeBRepDS_Curve; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    importcpp: "SetShapes", header: "TopOpeBRepDS_Curve.hxx".}
proc getShapes*(this: TopOpeBRepDS_Curve; s1: var TopoDS_Shape; s2: var TopoDS_Shape) {.
    noSideEffect, importcpp: "GetShapes", header: "TopOpeBRepDS_Curve.hxx".}
proc shape1*(this: TopOpeBRepDS_Curve): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape1", header: "TopOpeBRepDS_Curve.hxx".}
proc changeShape1*(this: var TopOpeBRepDS_Curve): var TopoDS_Shape {.
    importcpp: "ChangeShape1", header: "TopOpeBRepDS_Curve.hxx".}
proc shape2*(this: TopOpeBRepDS_Curve): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape2", header: "TopOpeBRepDS_Curve.hxx".}
proc changeShape2*(this: var TopOpeBRepDS_Curve): var TopoDS_Shape {.
    importcpp: "ChangeShape2", header: "TopOpeBRepDS_Curve.hxx".}
proc curve*(this: TopOpeBRepDS_Curve): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "TopOpeBRepDS_Curve.hxx".}
proc setRange*(this: var TopOpeBRepDS_Curve; first: cfloat; last: cfloat) {.
    importcpp: "SetRange", header: "TopOpeBRepDS_Curve.hxx".}
proc range*(this: TopOpeBRepDS_Curve; first: var cfloat; last: var cfloat): bool {.
    noSideEffect, importcpp: "Range", header: "TopOpeBRepDS_Curve.hxx".}
proc tolerance*(this: TopOpeBRepDS_Curve): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRepDS_Curve.hxx".}
proc changeCurve*(this: var TopOpeBRepDS_Curve): var Handle[GeomCurve] {.
    importcpp: "ChangeCurve", header: "TopOpeBRepDS_Curve.hxx".}
proc curve*(this: var TopOpeBRepDS_Curve; c3d: Handle[GeomCurve]; tol: cfloat) {.
    importcpp: "Curve", header: "TopOpeBRepDS_Curve.hxx".}
proc curve1*(this: TopOpeBRepDS_Curve): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "Curve1", header: "TopOpeBRepDS_Curve.hxx".}
proc curve1*(this: var TopOpeBRepDS_Curve; pc1: Handle[Geom2dCurve]) {.
    importcpp: "Curve1", header: "TopOpeBRepDS_Curve.hxx".}
proc curve2*(this: TopOpeBRepDS_Curve): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "Curve2", header: "TopOpeBRepDS_Curve.hxx".}
proc curve2*(this: var TopOpeBRepDS_Curve; pc2: Handle[Geom2dCurve]) {.
    importcpp: "Curve2", header: "TopOpeBRepDS_Curve.hxx".}
proc isWalk*(this: TopOpeBRepDS_Curve): bool {.noSideEffect, importcpp: "IsWalk",
    header: "TopOpeBRepDS_Curve.hxx".}
proc changeIsWalk*(this: var TopOpeBRepDS_Curve; b: bool) {.importcpp: "ChangeIsWalk",
    header: "TopOpeBRepDS_Curve.hxx".}
proc keep*(this: TopOpeBRepDS_Curve): bool {.noSideEffect, importcpp: "Keep",
    header: "TopOpeBRepDS_Curve.hxx".}
proc changeKeep*(this: var TopOpeBRepDS_Curve; b: bool) {.importcpp: "ChangeKeep",
    header: "TopOpeBRepDS_Curve.hxx".}
proc mother*(this: TopOpeBRepDS_Curve): cint {.noSideEffect, importcpp: "Mother",
    header: "TopOpeBRepDS_Curve.hxx".}
proc changeMother*(this: var TopOpeBRepDS_Curve; i: cint) {.importcpp: "ChangeMother",
    header: "TopOpeBRepDS_Curve.hxx".}
proc dSIndex*(this: TopOpeBRepDS_Curve): cint {.noSideEffect, importcpp: "DSIndex",
    header: "TopOpeBRepDS_Curve.hxx".}
proc changeDSIndex*(this: var TopOpeBRepDS_Curve; i: cint) {.
    importcpp: "ChangeDSIndex", header: "TopOpeBRepDS_Curve.hxx".}

























