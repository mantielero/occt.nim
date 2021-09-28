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

discard "forward decl of TopoDS_Shape"
discard "forward decl of StepShape_TopologicalRepresentationItem"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  TopoDSToStepTool* {.importcpp: "TopoDSToStep_Tool",
                     header: "TopoDSToStep_Tool.hxx", bycopy.} = object


proc constructTopoDSToStepTool*(): TopoDSToStepTool {.constructor,
    importcpp: "TopoDSToStep_Tool(@)", header: "TopoDSToStep_Tool.hxx".}
proc constructTopoDSToStepTool*(m: MoniToolDataMapOfShapeTransient;
                               facetedContext: bool): TopoDSToStepTool {.
    constructor, importcpp: "TopoDSToStep_Tool(@)", header: "TopoDSToStep_Tool.hxx".}
proc init*(this: var TopoDSToStepTool; m: MoniToolDataMapOfShapeTransient;
          facetedContext: bool) {.importcpp: "Init", header: "TopoDSToStep_Tool.hxx".}
proc isBound*(this: var TopoDSToStepTool; s: TopoDS_Shape): bool {.
    importcpp: "IsBound", header: "TopoDSToStep_Tool.hxx".}
proc `bind`*(this: var TopoDSToStepTool; s: TopoDS_Shape;
            t: Handle[StepShapeTopologicalRepresentationItem]) {.
    importcpp: "Bind", header: "TopoDSToStep_Tool.hxx".}
proc find*(this: var TopoDSToStepTool; s: TopoDS_Shape): Handle[
    StepShapeTopologicalRepresentationItem] {.importcpp: "Find",
    header: "TopoDSToStep_Tool.hxx".}
proc faceted*(this: TopoDSToStepTool): bool {.noSideEffect, importcpp: "Faceted",
    header: "TopoDSToStep_Tool.hxx".}
proc setCurrentShell*(this: var TopoDSToStepTool; s: TopoDS_Shell) {.
    importcpp: "SetCurrentShell", header: "TopoDSToStep_Tool.hxx".}
proc currentShell*(this: TopoDSToStepTool): TopoDS_Shell {.noSideEffect,
    importcpp: "CurrentShell", header: "TopoDSToStep_Tool.hxx".}
proc setCurrentFace*(this: var TopoDSToStepTool; f: TopoDS_Face) {.
    importcpp: "SetCurrentFace", header: "TopoDSToStep_Tool.hxx".}
proc currentFace*(this: TopoDSToStepTool): TopoDS_Face {.noSideEffect,
    importcpp: "CurrentFace", header: "TopoDSToStep_Tool.hxx".}
proc setCurrentWire*(this: var TopoDSToStepTool; w: TopoDS_Wire) {.
    importcpp: "SetCurrentWire", header: "TopoDSToStep_Tool.hxx".}
proc currentWire*(this: TopoDSToStepTool): TopoDS_Wire {.noSideEffect,
    importcpp: "CurrentWire", header: "TopoDSToStep_Tool.hxx".}
proc setCurrentEdge*(this: var TopoDSToStepTool; e: TopoDS_Edge) {.
    importcpp: "SetCurrentEdge", header: "TopoDSToStep_Tool.hxx".}
proc currentEdge*(this: TopoDSToStepTool): TopoDS_Edge {.noSideEffect,
    importcpp: "CurrentEdge", header: "TopoDSToStep_Tool.hxx".}
proc setCurrentVertex*(this: var TopoDSToStepTool; v: TopoDS_Vertex) {.
    importcpp: "SetCurrentVertex", header: "TopoDSToStep_Tool.hxx".}
proc currentVertex*(this: TopoDSToStepTool): TopoDS_Vertex {.noSideEffect,
    importcpp: "CurrentVertex", header: "TopoDSToStep_Tool.hxx".}
proc lowest3DTolerance*(this: TopoDSToStepTool): cfloat {.noSideEffect,
    importcpp: "Lowest3DTolerance", header: "TopoDSToStep_Tool.hxx".}
proc setSurfaceReversed*(this: var TopoDSToStepTool; b: bool) {.
    importcpp: "SetSurfaceReversed", header: "TopoDSToStep_Tool.hxx".}
proc surfaceReversed*(this: TopoDSToStepTool): bool {.noSideEffect,
    importcpp: "SurfaceReversed", header: "TopoDSToStep_Tool.hxx".}
proc map*(this: TopoDSToStepTool): MoniToolDataMapOfShapeTransient {.noSideEffect,
    importcpp: "Map", header: "TopoDSToStep_Tool.hxx".}
proc pCurveMode*(this: TopoDSToStepTool): cint {.noSideEffect,
    importcpp: "PCurveMode", header: "TopoDSToStep_Tool.hxx".}

























