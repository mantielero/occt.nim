##  Created on: 1994-12-16
##  Created by: Frederic MAUPAS
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, StepToTopoDS_DataMapOfTRI,
  StepToTopoDS_PointVertexMap, StepToTopoDS_PointEdgeMap,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Transfer_TransientProcess"
discard "forward decl of StepShape_TopologicalRepresentationItem"
discard "forward decl of TopoDS_Shape"
discard "forward decl of StepToTopoDS_PointPair"
discard "forward decl of TopoDS_Edge"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
type
  StepToTopoDS_Tool* {.importcpp: "StepToTopoDS_Tool",
                      header: "StepToTopoDS_Tool.hxx", bycopy.} = object


proc constructStepToTopoDS_Tool*(): StepToTopoDS_Tool {.constructor,
    importcpp: "StepToTopoDS_Tool(@)", header: "StepToTopoDS_Tool.hxx".}
proc constructStepToTopoDS_Tool*(Map: StepToTopoDS_DataMapOfTRI;
                                TP: handle[Transfer_TransientProcess]): StepToTopoDS_Tool {.
    constructor, importcpp: "StepToTopoDS_Tool(@)", header: "StepToTopoDS_Tool.hxx".}
proc Init*(this: var StepToTopoDS_Tool; Map: StepToTopoDS_DataMapOfTRI;
          TP: handle[Transfer_TransientProcess]) {.importcpp: "Init",
    header: "StepToTopoDS_Tool.hxx".}
proc IsBound*(this: var StepToTopoDS_Tool;
             TRI: handle[StepShape_TopologicalRepresentationItem]): Standard_Boolean {.
    importcpp: "IsBound", header: "StepToTopoDS_Tool.hxx".}
proc Bind*(this: var StepToTopoDS_Tool;
          TRI: handle[StepShape_TopologicalRepresentationItem]; S: TopoDS_Shape) {.
    importcpp: "Bind", header: "StepToTopoDS_Tool.hxx".}
proc Find*(this: var StepToTopoDS_Tool;
          TRI: handle[StepShape_TopologicalRepresentationItem]): TopoDS_Shape {.
    importcpp: "Find", header: "StepToTopoDS_Tool.hxx".}
proc ClearEdgeMap*(this: var StepToTopoDS_Tool) {.importcpp: "ClearEdgeMap",
    header: "StepToTopoDS_Tool.hxx".}
proc IsEdgeBound*(this: var StepToTopoDS_Tool; PP: StepToTopoDS_PointPair): Standard_Boolean {.
    importcpp: "IsEdgeBound", header: "StepToTopoDS_Tool.hxx".}
proc BindEdge*(this: var StepToTopoDS_Tool; PP: StepToTopoDS_PointPair; E: TopoDS_Edge) {.
    importcpp: "BindEdge", header: "StepToTopoDS_Tool.hxx".}
proc FindEdge*(this: var StepToTopoDS_Tool; PP: StepToTopoDS_PointPair): TopoDS_Edge {.
    importcpp: "FindEdge", header: "StepToTopoDS_Tool.hxx".}
proc ClearVertexMap*(this: var StepToTopoDS_Tool) {.importcpp: "ClearVertexMap",
    header: "StepToTopoDS_Tool.hxx".}
proc IsVertexBound*(this: var StepToTopoDS_Tool; PG: handle[StepGeom_CartesianPoint]): Standard_Boolean {.
    importcpp: "IsVertexBound", header: "StepToTopoDS_Tool.hxx".}
proc BindVertex*(this: var StepToTopoDS_Tool; P: handle[StepGeom_CartesianPoint];
                V: TopoDS_Vertex) {.importcpp: "BindVertex",
                                  header: "StepToTopoDS_Tool.hxx".}
proc FindVertex*(this: var StepToTopoDS_Tool; P: handle[StepGeom_CartesianPoint]): TopoDS_Vertex {.
    importcpp: "FindVertex", header: "StepToTopoDS_Tool.hxx".}
proc ComputePCurve*(this: var StepToTopoDS_Tool; B: Standard_Boolean) {.
    importcpp: "ComputePCurve", header: "StepToTopoDS_Tool.hxx".}
proc ComputePCurve*(this: StepToTopoDS_Tool): Standard_Boolean {.noSideEffect,
    importcpp: "ComputePCurve", header: "StepToTopoDS_Tool.hxx".}
proc TransientProcess*(this: StepToTopoDS_Tool): handle[Transfer_TransientProcess] {.
    noSideEffect, importcpp: "TransientProcess", header: "StepToTopoDS_Tool.hxx".}
proc AddContinuity*(this: var StepToTopoDS_Tool; GeomSurf: handle[Geom_Surface]) {.
    importcpp: "AddContinuity", header: "StepToTopoDS_Tool.hxx".}
proc AddContinuity*(this: var StepToTopoDS_Tool; GeomCurve: handle[Geom_Curve]) {.
    importcpp: "AddContinuity", header: "StepToTopoDS_Tool.hxx".}
proc AddContinuity*(this: var StepToTopoDS_Tool; GeomCur2d: handle[Geom2d_Curve]) {.
    importcpp: "AddContinuity", header: "StepToTopoDS_Tool.hxx".}
proc C0Surf*(this: StepToTopoDS_Tool): Standard_Integer {.noSideEffect,
    importcpp: "C0Surf", header: "StepToTopoDS_Tool.hxx".}
proc C1Surf*(this: StepToTopoDS_Tool): Standard_Integer {.noSideEffect,
    importcpp: "C1Surf", header: "StepToTopoDS_Tool.hxx".}
proc C2Surf*(this: StepToTopoDS_Tool): Standard_Integer {.noSideEffect,
    importcpp: "C2Surf", header: "StepToTopoDS_Tool.hxx".}
proc C0Cur2*(this: StepToTopoDS_Tool): Standard_Integer {.noSideEffect,
    importcpp: "C0Cur2", header: "StepToTopoDS_Tool.hxx".}
proc C1Cur2*(this: StepToTopoDS_Tool): Standard_Integer {.noSideEffect,
    importcpp: "C1Cur2", header: "StepToTopoDS_Tool.hxx".}
proc C2Cur2*(this: StepToTopoDS_Tool): Standard_Integer {.noSideEffect,
    importcpp: "C2Cur2", header: "StepToTopoDS_Tool.hxx".}
proc C0Cur3*(this: StepToTopoDS_Tool): Standard_Integer {.noSideEffect,
    importcpp: "C0Cur3", header: "StepToTopoDS_Tool.hxx".}
proc C1Cur3*(this: StepToTopoDS_Tool): Standard_Integer {.noSideEffect,
    importcpp: "C1Cur3", header: "StepToTopoDS_Tool.hxx".}
proc C2Cur3*(this: StepToTopoDS_Tool): Standard_Integer {.noSideEffect,
    importcpp: "C2Cur3", header: "StepToTopoDS_Tool.hxx".}