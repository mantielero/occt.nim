import topopebrepds_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/topods/topods_types
import ../../tkg3d/geom/geom_types
import ../../tkg2d/geom2d/geom2d_types



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



proc newTopOpeBRepDS_Curve*(): TopOpeBRepDS_Curve {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_Curve(@)", header: "TopOpeBRepDS_Curve.hxx".}
proc newTopOpeBRepDS_Curve*(p: Handle[GeomCurve]; t: cfloat; isWalk: bool = false): TopOpeBRepDS_Curve {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Curve(@)", header: "TopOpeBRepDS_Curve.hxx".}
proc defineCurve*(this: var TopOpeBRepDS_Curve; p: Handle[GeomCurve]; t: cfloat;
                 isWalk: bool) {.cdecl, importcpp: "DefineCurve", header: "TopOpeBRepDS_Curve.hxx".}
proc tolerance*(this: var TopOpeBRepDS_Curve; tol: cfloat) {.cdecl,
    importcpp: "Tolerance", header: "TopOpeBRepDS_Curve.hxx".}
proc setSCI*(this: var TopOpeBRepDS_Curve; i1: Handle[TopOpeBRepDS_Interference];
            i2: Handle[TopOpeBRepDS_Interference]) {.cdecl, importcpp: "SetSCI",
    header: "TopOpeBRepDS_Curve.hxx".}
proc getSCI1*(this: TopOpeBRepDS_Curve): Handle[TopOpeBRepDS_Interference] {.
    noSideEffect, cdecl, importcpp: "GetSCI1", header: "TopOpeBRepDS_Curve.hxx".}
proc getSCI2*(this: TopOpeBRepDS_Curve): Handle[TopOpeBRepDS_Interference] {.
    noSideEffect, cdecl, importcpp: "GetSCI2", header: "TopOpeBRepDS_Curve.hxx".}
proc getSCI*(this: TopOpeBRepDS_Curve; i1: var Handle[TopOpeBRepDS_Interference];
            i2: var Handle[TopOpeBRepDS_Interference]) {.noSideEffect, cdecl,
    importcpp: "GetSCI", header: "TopOpeBRepDS_Curve.hxx".}
proc setShapes*(this: var TopOpeBRepDS_Curve; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    cdecl, importcpp: "SetShapes", header: "TopOpeBRepDS_Curve.hxx".}
proc getShapes*(this: TopOpeBRepDS_Curve; s1: var TopoDS_Shape; s2: var TopoDS_Shape) {.
    noSideEffect, cdecl, importcpp: "GetShapes", header: "TopOpeBRepDS_Curve.hxx".}
proc shape1*(this: TopOpeBRepDS_Curve): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape1", header: "TopOpeBRepDS_Curve.hxx".}
proc changeShape1*(this: var TopOpeBRepDS_Curve): var TopoDS_Shape {.cdecl,
    importcpp: "ChangeShape1", header: "TopOpeBRepDS_Curve.hxx".}
proc shape2*(this: TopOpeBRepDS_Curve): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape2", header: "TopOpeBRepDS_Curve.hxx".}
proc changeShape2*(this: var TopOpeBRepDS_Curve): var TopoDS_Shape {.cdecl,
    importcpp: "ChangeShape2", header: "TopOpeBRepDS_Curve.hxx".}
proc curve*(this: TopOpeBRepDS_Curve): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Curve", header: "TopOpeBRepDS_Curve.hxx".}
proc setRange*(this: var TopOpeBRepDS_Curve; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetRange", header: "TopOpeBRepDS_Curve.hxx".}
proc range*(this: TopOpeBRepDS_Curve; first: var cfloat; last: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "Range", header: "TopOpeBRepDS_Curve.hxx".}
proc tolerance*(this: TopOpeBRepDS_Curve): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "TopOpeBRepDS_Curve.hxx".}
proc changeCurve*(this: var TopOpeBRepDS_Curve): var Handle[GeomCurve] {.cdecl,
    importcpp: "ChangeCurve", header: "TopOpeBRepDS_Curve.hxx".}
proc curve*(this: var TopOpeBRepDS_Curve; c3d: Handle[GeomCurve]; tol: cfloat) {.cdecl,
    importcpp: "Curve", header: "TopOpeBRepDS_Curve.hxx".}
proc curve1*(this: TopOpeBRepDS_Curve): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "Curve1", header: "TopOpeBRepDS_Curve.hxx".}
proc curve1*(this: var TopOpeBRepDS_Curve; pc1: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "Curve1", header: "TopOpeBRepDS_Curve.hxx".}
proc curve2*(this: TopOpeBRepDS_Curve): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "Curve2", header: "TopOpeBRepDS_Curve.hxx".}
proc curve2*(this: var TopOpeBRepDS_Curve; pc2: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "Curve2", header: "TopOpeBRepDS_Curve.hxx".}
proc isWalk*(this: TopOpeBRepDS_Curve): bool {.noSideEffect, cdecl,
    importcpp: "IsWalk", header: "TopOpeBRepDS_Curve.hxx".}
proc changeIsWalk*(this: var TopOpeBRepDS_Curve; b: bool) {.cdecl,
    importcpp: "ChangeIsWalk", header: "TopOpeBRepDS_Curve.hxx".}
proc keep*(this: TopOpeBRepDS_Curve): bool {.noSideEffect, cdecl, importcpp: "Keep",
    header: "TopOpeBRepDS_Curve.hxx".}
proc changeKeep*(this: var TopOpeBRepDS_Curve; b: bool) {.cdecl,
    importcpp: "ChangeKeep", header: "TopOpeBRepDS_Curve.hxx".}
proc mother*(this: TopOpeBRepDS_Curve): cint {.noSideEffect, cdecl,
    importcpp: "Mother", header: "TopOpeBRepDS_Curve.hxx".}
proc changeMother*(this: var TopOpeBRepDS_Curve; i: cint) {.cdecl,
    importcpp: "ChangeMother", header: "TopOpeBRepDS_Curve.hxx".}
proc dSIndex*(this: TopOpeBRepDS_Curve): cint {.noSideEffect, cdecl,
    importcpp: "DSIndex", header: "TopOpeBRepDS_Curve.hxx".}
proc changeDSIndex*(this: var TopOpeBRepDS_Curve; i: cint) {.cdecl,
    importcpp: "ChangeDSIndex", header: "TopOpeBRepDS_Curve.hxx".}

