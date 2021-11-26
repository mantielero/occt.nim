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


proc `new`*(this: var StepToTopoDS_Tool; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_Tool::operator new", header: "StepToTopoDS_Tool.hxx".}
proc `delete`*(this: var StepToTopoDS_Tool; theAddress: pointer) {.
    importcpp: "StepToTopoDS_Tool::operator delete",
    header: "StepToTopoDS_Tool.hxx".}
proc `new[]`*(this: var StepToTopoDS_Tool; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_Tool::operator new[]",
    header: "StepToTopoDS_Tool.hxx".}
proc `delete[]`*(this: var StepToTopoDS_Tool; theAddress: pointer) {.
    importcpp: "StepToTopoDS_Tool::operator delete[]",
    header: "StepToTopoDS_Tool.hxx".}
proc `new`*(this: var StepToTopoDS_Tool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepToTopoDS_Tool::operator new", header: "StepToTopoDS_Tool.hxx".}
proc `delete`*(this: var StepToTopoDS_Tool; a2: pointer; a3: pointer) {.
    importcpp: "StepToTopoDS_Tool::operator delete",
    header: "StepToTopoDS_Tool.hxx".}
proc constructStepToTopoDS_Tool*(): StepToTopoDS_Tool {.constructor,
    importcpp: "StepToTopoDS_Tool(@)", header: "StepToTopoDS_Tool.hxx".}
proc constructStepToTopoDS_Tool*(map: StepToTopoDS_DataMapOfTRI;
                                tp: Handle[TransferTransientProcess]): StepToTopoDS_Tool {.
    constructor, importcpp: "StepToTopoDS_Tool(@)", header: "StepToTopoDS_Tool.hxx".}
proc init*(this: var StepToTopoDS_Tool; map: StepToTopoDS_DataMapOfTRI;
          tp: Handle[TransferTransientProcess]) {.importcpp: "Init",
    header: "StepToTopoDS_Tool.hxx".}
proc isBound*(this: var StepToTopoDS_Tool;
             tri: Handle[StepShapeTopologicalRepresentationItem]): StandardBoolean {.
    importcpp: "IsBound", header: "StepToTopoDS_Tool.hxx".}
proc `bind`*(this: var StepToTopoDS_Tool;
            tri: Handle[StepShapeTopologicalRepresentationItem]; s: TopoDS_Shape) {.
    importcpp: "Bind", header: "StepToTopoDS_Tool.hxx".}
proc find*(this: var StepToTopoDS_Tool;
          tri: Handle[StepShapeTopologicalRepresentationItem]): TopoDS_Shape {.
    importcpp: "Find", header: "StepToTopoDS_Tool.hxx".}
proc clearEdgeMap*(this: var StepToTopoDS_Tool) {.importcpp: "ClearEdgeMap",
    header: "StepToTopoDS_Tool.hxx".}
proc isEdgeBound*(this: var StepToTopoDS_Tool; pp: StepToTopoDS_PointPair): StandardBoolean {.
    importcpp: "IsEdgeBound", header: "StepToTopoDS_Tool.hxx".}
proc bindEdge*(this: var StepToTopoDS_Tool; pp: StepToTopoDS_PointPair; e: TopoDS_Edge) {.
    importcpp: "BindEdge", header: "StepToTopoDS_Tool.hxx".}
proc findEdge*(this: var StepToTopoDS_Tool; pp: StepToTopoDS_PointPair): TopoDS_Edge {.
    importcpp: "FindEdge", header: "StepToTopoDS_Tool.hxx".}
proc clearVertexMap*(this: var StepToTopoDS_Tool) {.importcpp: "ClearVertexMap",
    header: "StepToTopoDS_Tool.hxx".}
proc isVertexBound*(this: var StepToTopoDS_Tool; pg: Handle[StepGeomCartesianPoint]): StandardBoolean {.
    importcpp: "IsVertexBound", header: "StepToTopoDS_Tool.hxx".}
proc bindVertex*(this: var StepToTopoDS_Tool; p: Handle[StepGeomCartesianPoint];
                v: TopoDS_Vertex) {.importcpp: "BindVertex",
                                  header: "StepToTopoDS_Tool.hxx".}
proc findVertex*(this: var StepToTopoDS_Tool; p: Handle[StepGeomCartesianPoint]): TopoDS_Vertex {.
    importcpp: "FindVertex", header: "StepToTopoDS_Tool.hxx".}
proc computePCurve*(this: var StepToTopoDS_Tool; b: StandardBoolean) {.
    importcpp: "ComputePCurve", header: "StepToTopoDS_Tool.hxx".}
proc computePCurve*(this: StepToTopoDS_Tool): StandardBoolean {.noSideEffect,
    importcpp: "ComputePCurve", header: "StepToTopoDS_Tool.hxx".}
proc transientProcess*(this: StepToTopoDS_Tool): Handle[TransferTransientProcess] {.
    noSideEffect, importcpp: "TransientProcess", header: "StepToTopoDS_Tool.hxx".}
proc addContinuity*(this: var StepToTopoDS_Tool; geomSurf: Handle[GeomSurface]) {.
    importcpp: "AddContinuity", header: "StepToTopoDS_Tool.hxx".}
proc addContinuity*(this: var StepToTopoDS_Tool; geomCurve: Handle[GeomCurve]) {.
    importcpp: "AddContinuity", header: "StepToTopoDS_Tool.hxx".}
proc addContinuity*(this: var StepToTopoDS_Tool; geomCur2d: Handle[Geom2dCurve]) {.
    importcpp: "AddContinuity", header: "StepToTopoDS_Tool.hxx".}
proc c0Surf*(this: StepToTopoDS_Tool): int {.noSideEffect, importcpp: "C0Surf",
    header: "StepToTopoDS_Tool.hxx".}
proc c1Surf*(this: StepToTopoDS_Tool): int {.noSideEffect, importcpp: "C1Surf",
    header: "StepToTopoDS_Tool.hxx".}
proc c2Surf*(this: StepToTopoDS_Tool): int {.noSideEffect, importcpp: "C2Surf",
    header: "StepToTopoDS_Tool.hxx".}
proc c0Cur2*(this: StepToTopoDS_Tool): int {.noSideEffect, importcpp: "C0Cur2",
    header: "StepToTopoDS_Tool.hxx".}
proc c1Cur2*(this: StepToTopoDS_Tool): int {.noSideEffect, importcpp: "C1Cur2",
    header: "StepToTopoDS_Tool.hxx".}
proc c2Cur2*(this: StepToTopoDS_Tool): int {.noSideEffect, importcpp: "C2Cur2",
    header: "StepToTopoDS_Tool.hxx".}
proc c0Cur3*(this: StepToTopoDS_Tool): int {.noSideEffect, importcpp: "C0Cur3",
    header: "StepToTopoDS_Tool.hxx".}
proc c1Cur3*(this: StepToTopoDS_Tool): int {.noSideEffect, importcpp: "C1Cur3",
    header: "StepToTopoDS_Tool.hxx".}
proc c2Cur3*(this: StepToTopoDS_Tool): int {.noSideEffect, importcpp: "C2Cur3",
    header: "StepToTopoDS_Tool.hxx".}