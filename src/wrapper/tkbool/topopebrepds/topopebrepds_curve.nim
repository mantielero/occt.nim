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


proc newTopOpeBRepDS_Curve*(): TopOpeBRepDS_Curve {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_Curve(@)", dynlib: tkbool.}
proc newTopOpeBRepDS_Curve*(p: Handle[GeomCurve]; t: cfloat; isWalk: bool = false): TopOpeBRepDS_Curve {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Curve(@)", dynlib: tkbool.}
proc defineCurve*(this: var TopOpeBRepDS_Curve; p: Handle[GeomCurve]; t: cfloat;
                 isWalk: bool) {.cdecl, importcpp: "DefineCurve", dynlib: tkbool.}
proc tolerance*(this: var TopOpeBRepDS_Curve; tol: cfloat) {.cdecl,
    importcpp: "Tolerance", dynlib: tkbool.}
proc setSCI*(this: var TopOpeBRepDS_Curve; i1: Handle[TopOpeBRepDS_Interference];
            i2: Handle[TopOpeBRepDS_Interference]) {.cdecl, importcpp: "SetSCI",
    dynlib: tkbool.}
proc getSCI1*(this: TopOpeBRepDS_Curve): Handle[TopOpeBRepDS_Interference] {.
    noSideEffect, cdecl, importcpp: "GetSCI1", dynlib: tkbool.}
proc getSCI2*(this: TopOpeBRepDS_Curve): Handle[TopOpeBRepDS_Interference] {.
    noSideEffect, cdecl, importcpp: "GetSCI2", dynlib: tkbool.}
proc getSCI*(this: TopOpeBRepDS_Curve; i1: var Handle[TopOpeBRepDS_Interference];
            i2: var Handle[TopOpeBRepDS_Interference]) {.noSideEffect, cdecl,
    importcpp: "GetSCI", dynlib: tkbool.}
proc setShapes*(this: var TopOpeBRepDS_Curve; s1: TopoDS_Shape; s2: TopoDS_Shape) {.
    cdecl, importcpp: "SetShapes", dynlib: tkbool.}
proc getShapes*(this: TopOpeBRepDS_Curve; s1: var TopoDS_Shape; s2: var TopoDS_Shape) {.
    noSideEffect, cdecl, importcpp: "GetShapes", dynlib: tkbool.}
proc shape1*(this: TopOpeBRepDS_Curve): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape1", dynlib: tkbool.}
proc changeShape1*(this: var TopOpeBRepDS_Curve): var TopoDS_Shape {.cdecl,
    importcpp: "ChangeShape1", dynlib: tkbool.}
proc shape2*(this: TopOpeBRepDS_Curve): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape2", dynlib: tkbool.}
proc changeShape2*(this: var TopOpeBRepDS_Curve): var TopoDS_Shape {.cdecl,
    importcpp: "ChangeShape2", dynlib: tkbool.}
proc curve*(this: TopOpeBRepDS_Curve): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkbool.}
proc setRange*(this: var TopOpeBRepDS_Curve; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetRange", dynlib: tkbool.}
proc range*(this: TopOpeBRepDS_Curve; first: var cfloat; last: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "Range", dynlib: tkbool.}
proc tolerance*(this: TopOpeBRepDS_Curve): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", dynlib: tkbool.}
proc changeCurve*(this: var TopOpeBRepDS_Curve): var Handle[GeomCurve] {.cdecl,
    importcpp: "ChangeCurve", dynlib: tkbool.}
proc curve*(this: var TopOpeBRepDS_Curve; c3d: Handle[GeomCurve]; tol: cfloat) {.cdecl,
    importcpp: "Curve", dynlib: tkbool.}
proc curve1*(this: TopOpeBRepDS_Curve): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "Curve1", dynlib: tkbool.}
proc curve1*(this: var TopOpeBRepDS_Curve; pc1: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "Curve1", dynlib: tkbool.}
proc curve2*(this: TopOpeBRepDS_Curve): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "Curve2", dynlib: tkbool.}
proc curve2*(this: var TopOpeBRepDS_Curve; pc2: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "Curve2", dynlib: tkbool.}
proc isWalk*(this: TopOpeBRepDS_Curve): bool {.noSideEffect, cdecl,
    importcpp: "IsWalk", dynlib: tkbool.}
proc changeIsWalk*(this: var TopOpeBRepDS_Curve; b: bool) {.cdecl,
    importcpp: "ChangeIsWalk", dynlib: tkbool.}
proc keep*(this: TopOpeBRepDS_Curve): bool {.noSideEffect, cdecl, importcpp: "Keep",
    dynlib: tkbool.}
proc changeKeep*(this: var TopOpeBRepDS_Curve; b: bool) {.cdecl,
    importcpp: "ChangeKeep", dynlib: tkbool.}
proc mother*(this: TopOpeBRepDS_Curve): cint {.noSideEffect, cdecl,
    importcpp: "Mother", dynlib: tkbool.}
proc changeMother*(this: var TopOpeBRepDS_Curve; i: cint) {.cdecl,
    importcpp: "ChangeMother", dynlib: tkbool.}
proc dSIndex*(this: TopOpeBRepDS_Curve): cint {.noSideEffect, cdecl,
    importcpp: "DSIndex", dynlib: tkbool.}
proc changeDSIndex*(this: var TopOpeBRepDS_Curve; i: cint) {.cdecl,
    importcpp: "ChangeDSIndex", dynlib: tkbool.}