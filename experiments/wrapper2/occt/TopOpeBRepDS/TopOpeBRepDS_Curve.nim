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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream

discard "forward decl of Geom_Curve"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom2d_Curve"
type
  TopOpeBRepDS_Curve* {.importcpp: "TopOpeBRepDS_Curve",
                       header: "TopOpeBRepDS_Curve.hxx", bycopy.} = object


proc constructTopOpeBRepDS_Curve*(): TopOpeBRepDS_Curve {.constructor,
    importcpp: "TopOpeBRepDS_Curve(@)", header: "TopOpeBRepDS_Curve.hxx".}
proc constructTopOpeBRepDS_Curve*(P: handle[Geom_Curve]; T: Standard_Real;
                                 IsWalk: Standard_Boolean = Standard_False): TopOpeBRepDS_Curve {.
    constructor, importcpp: "TopOpeBRepDS_Curve(@)",
    header: "TopOpeBRepDS_Curve.hxx".}
proc DefineCurve*(this: var TopOpeBRepDS_Curve; P: handle[Geom_Curve];
                 T: Standard_Real; IsWalk: Standard_Boolean) {.
    importcpp: "DefineCurve", header: "TopOpeBRepDS_Curve.hxx".}
proc Tolerance*(this: var TopOpeBRepDS_Curve; tol: Standard_Real) {.
    importcpp: "Tolerance", header: "TopOpeBRepDS_Curve.hxx".}
proc SetSCI*(this: var TopOpeBRepDS_Curve; I1: handle[TopOpeBRepDS_Interference];
            I2: handle[TopOpeBRepDS_Interference]) {.importcpp: "SetSCI",
    header: "TopOpeBRepDS_Curve.hxx".}
proc GetSCI1*(this: TopOpeBRepDS_Curve): handle[TopOpeBRepDS_Interference] {.
    noSideEffect, importcpp: "GetSCI1", header: "TopOpeBRepDS_Curve.hxx".}
proc GetSCI2*(this: TopOpeBRepDS_Curve): handle[TopOpeBRepDS_Interference] {.
    noSideEffect, importcpp: "GetSCI2", header: "TopOpeBRepDS_Curve.hxx".}
proc GetSCI*(this: TopOpeBRepDS_Curve; I1: var handle[TopOpeBRepDS_Interference];
            I2: var handle[TopOpeBRepDS_Interference]) {.noSideEffect,
    importcpp: "GetSCI", header: "TopOpeBRepDS_Curve.hxx".}
proc SetShapes*(this: var TopOpeBRepDS_Curve; S1: TopoDS_Shape; S2: TopoDS_Shape) {.
    importcpp: "SetShapes", header: "TopOpeBRepDS_Curve.hxx".}
proc GetShapes*(this: TopOpeBRepDS_Curve; S1: var TopoDS_Shape; S2: var TopoDS_Shape) {.
    noSideEffect, importcpp: "GetShapes", header: "TopOpeBRepDS_Curve.hxx".}
proc Shape1*(this: TopOpeBRepDS_Curve): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape1", header: "TopOpeBRepDS_Curve.hxx".}
proc ChangeShape1*(this: var TopOpeBRepDS_Curve): var TopoDS_Shape {.
    importcpp: "ChangeShape1", header: "TopOpeBRepDS_Curve.hxx".}
proc Shape2*(this: TopOpeBRepDS_Curve): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape2", header: "TopOpeBRepDS_Curve.hxx".}
proc ChangeShape2*(this: var TopOpeBRepDS_Curve): var TopoDS_Shape {.
    importcpp: "ChangeShape2", header: "TopOpeBRepDS_Curve.hxx".}
proc Curve*(this: TopOpeBRepDS_Curve): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "TopOpeBRepDS_Curve.hxx".}
proc SetRange*(this: var TopOpeBRepDS_Curve; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "SetRange", header: "TopOpeBRepDS_Curve.hxx".}
proc Range*(this: TopOpeBRepDS_Curve; First: var Standard_Real;
           Last: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "Range", header: "TopOpeBRepDS_Curve.hxx".}
proc Tolerance*(this: TopOpeBRepDS_Curve): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRepDS_Curve.hxx".}
proc ChangeCurve*(this: var TopOpeBRepDS_Curve): var handle[Geom_Curve] {.
    importcpp: "ChangeCurve", header: "TopOpeBRepDS_Curve.hxx".}
proc Curve*(this: var TopOpeBRepDS_Curve; C3D: handle[Geom_Curve]; Tol: Standard_Real) {.
    importcpp: "Curve", header: "TopOpeBRepDS_Curve.hxx".}
proc Curve1*(this: TopOpeBRepDS_Curve): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "Curve1", header: "TopOpeBRepDS_Curve.hxx".}
proc Curve1*(this: var TopOpeBRepDS_Curve; PC1: handle[Geom2d_Curve]) {.
    importcpp: "Curve1", header: "TopOpeBRepDS_Curve.hxx".}
proc Curve2*(this: TopOpeBRepDS_Curve): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "Curve2", header: "TopOpeBRepDS_Curve.hxx".}
proc Curve2*(this: var TopOpeBRepDS_Curve; PC2: handle[Geom2d_Curve]) {.
    importcpp: "Curve2", header: "TopOpeBRepDS_Curve.hxx".}
proc IsWalk*(this: TopOpeBRepDS_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsWalk", header: "TopOpeBRepDS_Curve.hxx".}
proc ChangeIsWalk*(this: var TopOpeBRepDS_Curve; B: Standard_Boolean) {.
    importcpp: "ChangeIsWalk", header: "TopOpeBRepDS_Curve.hxx".}
proc Keep*(this: TopOpeBRepDS_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "Keep", header: "TopOpeBRepDS_Curve.hxx".}
proc ChangeKeep*(this: var TopOpeBRepDS_Curve; B: Standard_Boolean) {.
    importcpp: "ChangeKeep", header: "TopOpeBRepDS_Curve.hxx".}
proc Mother*(this: TopOpeBRepDS_Curve): Standard_Integer {.noSideEffect,
    importcpp: "Mother", header: "TopOpeBRepDS_Curve.hxx".}
proc ChangeMother*(this: var TopOpeBRepDS_Curve; I: Standard_Integer) {.
    importcpp: "ChangeMother", header: "TopOpeBRepDS_Curve.hxx".}
proc DSIndex*(this: TopOpeBRepDS_Curve): Standard_Integer {.noSideEffect,
    importcpp: "DSIndex", header: "TopOpeBRepDS_Curve.hxx".}
proc ChangeDSIndex*(this: var TopOpeBRepDS_Curve; I: Standard_Integer) {.
    importcpp: "ChangeDSIndex", header: "TopOpeBRepDS_Curve.hxx".}