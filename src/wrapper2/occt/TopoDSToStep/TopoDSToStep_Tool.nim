##  Created on: 1994-11-30
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
  ../Standard/Standard_Handle, ../MoniTool/MoniTool_DataMapOfShapeTransient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real, ../TopoDS/TopoDS_Shell,
  ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Wire, ../TopoDS/TopoDS_Edge,
  ../TopoDS/TopoDS_Vertex, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
discard "forward decl of StepShape_TopologicalRepresentationItem"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  TopoDSToStep_Tool* {.importcpp: "TopoDSToStep_Tool",
                      header: "TopoDSToStep_Tool.hxx", bycopy.} = object


proc constructTopoDSToStep_Tool*(): TopoDSToStep_Tool {.constructor,
    importcpp: "TopoDSToStep_Tool(@)", header: "TopoDSToStep_Tool.hxx".}
proc constructTopoDSToStep_Tool*(M: MoniTool_DataMapOfShapeTransient;
                                FacetedContext: Standard_Boolean): TopoDSToStep_Tool {.
    constructor, importcpp: "TopoDSToStep_Tool(@)", header: "TopoDSToStep_Tool.hxx".}
proc Init*(this: var TopoDSToStep_Tool; M: MoniTool_DataMapOfShapeTransient;
          FacetedContext: Standard_Boolean) {.importcpp: "Init",
    header: "TopoDSToStep_Tool.hxx".}
proc IsBound*(this: var TopoDSToStep_Tool; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsBound", header: "TopoDSToStep_Tool.hxx".}
proc Bind*(this: var TopoDSToStep_Tool; S: TopoDS_Shape;
          T: handle[StepShape_TopologicalRepresentationItem]) {.importcpp: "Bind",
    header: "TopoDSToStep_Tool.hxx".}
proc Find*(this: var TopoDSToStep_Tool; S: TopoDS_Shape): handle[
    StepShape_TopologicalRepresentationItem] {.importcpp: "Find",
    header: "TopoDSToStep_Tool.hxx".}
proc Faceted*(this: TopoDSToStep_Tool): Standard_Boolean {.noSideEffect,
    importcpp: "Faceted", header: "TopoDSToStep_Tool.hxx".}
proc SetCurrentShell*(this: var TopoDSToStep_Tool; S: TopoDS_Shell) {.
    importcpp: "SetCurrentShell", header: "TopoDSToStep_Tool.hxx".}
proc CurrentShell*(this: TopoDSToStep_Tool): TopoDS_Shell {.noSideEffect,
    importcpp: "CurrentShell", header: "TopoDSToStep_Tool.hxx".}
proc SetCurrentFace*(this: var TopoDSToStep_Tool; F: TopoDS_Face) {.
    importcpp: "SetCurrentFace", header: "TopoDSToStep_Tool.hxx".}
proc CurrentFace*(this: TopoDSToStep_Tool): TopoDS_Face {.noSideEffect,
    importcpp: "CurrentFace", header: "TopoDSToStep_Tool.hxx".}
proc SetCurrentWire*(this: var TopoDSToStep_Tool; W: TopoDS_Wire) {.
    importcpp: "SetCurrentWire", header: "TopoDSToStep_Tool.hxx".}
proc CurrentWire*(this: TopoDSToStep_Tool): TopoDS_Wire {.noSideEffect,
    importcpp: "CurrentWire", header: "TopoDSToStep_Tool.hxx".}
proc SetCurrentEdge*(this: var TopoDSToStep_Tool; E: TopoDS_Edge) {.
    importcpp: "SetCurrentEdge", header: "TopoDSToStep_Tool.hxx".}
proc CurrentEdge*(this: TopoDSToStep_Tool): TopoDS_Edge {.noSideEffect,
    importcpp: "CurrentEdge", header: "TopoDSToStep_Tool.hxx".}
proc SetCurrentVertex*(this: var TopoDSToStep_Tool; V: TopoDS_Vertex) {.
    importcpp: "SetCurrentVertex", header: "TopoDSToStep_Tool.hxx".}
proc CurrentVertex*(this: TopoDSToStep_Tool): TopoDS_Vertex {.noSideEffect,
    importcpp: "CurrentVertex", header: "TopoDSToStep_Tool.hxx".}
proc Lowest3DTolerance*(this: TopoDSToStep_Tool): Standard_Real {.noSideEffect,
    importcpp: "Lowest3DTolerance", header: "TopoDSToStep_Tool.hxx".}
proc SetSurfaceReversed*(this: var TopoDSToStep_Tool; B: Standard_Boolean) {.
    importcpp: "SetSurfaceReversed", header: "TopoDSToStep_Tool.hxx".}
proc SurfaceReversed*(this: TopoDSToStep_Tool): Standard_Boolean {.noSideEffect,
    importcpp: "SurfaceReversed", header: "TopoDSToStep_Tool.hxx".}
proc Map*(this: TopoDSToStep_Tool): MoniTool_DataMapOfShapeTransient {.noSideEffect,
    importcpp: "Map", header: "TopoDSToStep_Tool.hxx".}
proc PCurveMode*(this: TopoDSToStep_Tool): Standard_Integer {.noSideEffect,
    importcpp: "PCurveMode", header: "TopoDSToStep_Tool.hxx".}