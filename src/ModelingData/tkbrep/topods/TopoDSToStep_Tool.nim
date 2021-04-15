import topods_types


{.push header: "TopoDSToStep_Tool.hxx".}

proc constructTopoDSToStep_Tool*(): TopoDSToStep_Tool {.constructor,importcpp: "TopoDSToStep_Tool::TopoDSToStep_Tool".}

proc constructTopoDSToStep_Tool*(M: MoniTool_DataMapOfShapeTransient, FacetedContext: Standard_Boolean): TopoDSToStep_Tool {.constructor,importcpp: "TopoDSToStep_Tool::TopoDSToStep_Tool(@)".}

proc ` new`*(this: var TopoDSToStep_Tool, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Tool, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_Tool, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_Tool, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_Tool, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Tool, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_Tool, M: MoniTool_DataMapOfShapeTransient, FacetedContext: Standard_Boolean)  {.importcpp: "Init".}

proc isBound*(this: var TopoDSToStep_Tool, S: TopoDS_Shape): Standard_Boolean  {.importcpp: "IsBound".}

proc `bind`*(this: var TopoDSToStep_Tool, S: TopoDS_Shape, T: handle[StepShape_TopologicalRepresentationItem])  {.importcpp: "Bind".}

proc find*(this: var TopoDSToStep_Tool, S: TopoDS_Shape): handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Find".}

proc faceted*(this: TopoDSToStep_Tool): Standard_Boolean  {.importcpp: "Faceted".}

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

proc lowest3DTolerance*(this: TopoDSToStep_Tool): Standard_Real  {.importcpp: "Lowest3DTolerance".}

proc setSurfaceReversed*(this: var TopoDSToStep_Tool, B: Standard_Boolean)  {.importcpp: "SetSurfaceReversed".}

proc surfaceReversed*(this: TopoDSToStep_Tool): Standard_Boolean  {.importcpp: "SurfaceReversed".}

proc map*(this: TopoDSToStep_Tool): MoniTool_DataMapOfShapeTransient  {.importcpp: "Map".}

proc pCurveMode*(this: TopoDSToStep_Tool): Standard_Integer  {.importcpp: "PCurveMode".}
    ## Returns mode for writing pcurves (initialized by parameter
    ## write.surfacecurve.mode)

{.pop.}  # header: "TopoDSToStep_Tool.hxx"
