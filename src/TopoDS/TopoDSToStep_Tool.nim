{.push header: "TopoDSToStep_Tool.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_Tool*(): TopoDSToStep_Tool {.constructor,importcpp: "TopoDSToStep_Tool".}

proc constructor_TopoDSToStep_Tool*(M: MoniTool_DataMapOfShapeTransient, FacetedContext: bool): TopoDSToStep_Tool {.constructor,importcpp: "TopoDSToStep_Tool(@)".}

proc ` new`*(this: var TopoDSToStep_Tool, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Tool, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_Tool, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_Tool, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_Tool, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Tool, pointer, pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_Tool, M: MoniTool_DataMapOfShapeTransient, FacetedContext: bool)  {.importcpp: "Init".}

proc isBound*(this: var TopoDSToStep_Tool, S: TopoDS_Shape): bool  {.importcpp: "IsBound".}

proc bind*(this: var TopoDSToStep_Tool, S: TopoDS_Shape, T: Handle[StepShape_TopologicalRepresentationItem])  {.importcpp: "Bind".}

proc find*(this: var TopoDSToStep_Tool, S: TopoDS_Shape): Handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Find".}

proc faceted*(this: TopoDSToStep_Tool): bool  {.importcpp: "Faceted".}

proc setCurrentShell*(this: var TopoDSToStep_Tool, S: TopoDS_Shell)  {.importcpp: "SetCurrentShell".}

proc currentShell*(this: TopoDSToStep_Tool): TopoDS_Shell  {.importcpp: "CurrentShell".}

proc setCurrentFace*(this: var TopoDSToStep_Tool, F: TopoDS_Face)  {.importcpp: "SetCurrentFace".}

proc currentFace*(this: TopoDSToStep_Tool): TopoDS_Face  {.importcpp: "CurrentFace".}

proc setCurrentWire*(this: var TopoDSToStep_Tool, W: TopoDS_Wire)  {.importcpp: "SetCurrentWire".}

proc currentWire*(this: TopoDSToStep_Tool): TopoDS_Wire  {.importcpp: "CurrentWire".}

proc setCurrentEdge*(this: var TopoDSToStep_Tool, E: TopoDS_Edge)  {.importcpp: "SetCurrentEdge".}

proc currentEdge*(this: TopoDSToStep_Tool): TopoDS_Edge  {.importcpp: "CurrentEdge".}

proc setCurrentVertex*(this: var TopoDSToStep_Tool, V: TopoDS_Vertex)  {.importcpp: "SetCurrentVertex".}

proc currentVertex*(this: TopoDSToStep_Tool): TopoDS_Vertex  {.importcpp: "CurrentVertex".}

proc lowest3DTolerance*(this: TopoDSToStep_Tool): cdouble  {.importcpp: "Lowest3DTolerance".}

proc setSurfaceReversed*(this: var TopoDSToStep_Tool, B: bool)  {.importcpp: "SetSurfaceReversed".}

proc surfaceReversed*(this: TopoDSToStep_Tool): bool  {.importcpp: "SurfaceReversed".}

proc map*(this: TopoDSToStep_Tool): MoniTool_DataMapOfShapeTransient  {.importcpp: "Map".}

proc pCurveMode*(this: TopoDSToStep_Tool): cint  {.importcpp: "PCurveMode".}
  ## Returns mode for writing pcurves (initialized by parameter
  ## write.surfacecurve.mode)

{.pop.} # header: "TopoDSToStep_Tool.hxx
