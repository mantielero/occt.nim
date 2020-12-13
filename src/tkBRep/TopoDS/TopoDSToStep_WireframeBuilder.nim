{.push header: "TopoDSToStep_WireframeBuilder.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_WireframeBuilder*(): TopoDSToStep_WireframeBuilder {.constructor,importcpp: "TopoDSToStep_WireframeBuilder".}

proc constructor_TopoDSToStep_WireframeBuilder*(S: TopoDS_Shape, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_WireframeBuilder {.constructor,importcpp: "TopoDSToStep_WireframeBuilder(@)".}

proc ` new`*(this: var TopoDSToStep_WireframeBuilder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_WireframeBuilder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_WireframeBuilder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_WireframeBuilder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_WireframeBuilder, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_WireframeBuilder, pointer, pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_WireframeBuilder, S: TopoDS_Shape, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc error*(this: TopoDSToStep_WireframeBuilder): TopoDSToStep_BuilderError  {.importcpp: "Error".}

proc value*(this: TopoDSToStep_WireframeBuilder): Handle[TColStd_HSequenceOfTransient]  {.importcpp: "Value".}

proc getTrimmedCurveFromEdge*(this: TopoDSToStep_WireframeBuilder, E: TopoDS_Edge, F: TopoDS_Face, M: var MoniTool_DataMapOfShapeTransient, L: Handle[TColStd_HSequenceOfTransient]): bool  {.importcpp: "GetTrimmedCurveFromEdge".}
  ## Extraction of Trimmed Curves from TopoDS_Edge for the Creation of a
  ## GeometricallyBoundedWireframeRepresentation

proc getTrimmedCurveFromFace*(this: TopoDSToStep_WireframeBuilder, F: TopoDS_Face, M: var MoniTool_DataMapOfShapeTransient, L: Handle[TColStd_HSequenceOfTransient]): bool  {.importcpp: "GetTrimmedCurveFromFace".}
  ## Extraction of Trimmed Curves from TopoDS_Face for the Creation of a
  ## GeometricallyBoundedWireframeRepresentation

proc getTrimmedCurveFromShape*(this: TopoDSToStep_WireframeBuilder, S: TopoDS_Shape, M: var MoniTool_DataMapOfShapeTransient, L: Handle[TColStd_HSequenceOfTransient]): bool  {.importcpp: "GetTrimmedCurveFromShape".}
  ## Extraction of Trimmed Curves from any TopoDS_Shape for the Creation of
  ## a GeometricallyBoundedWireframeRepresentation

{.pop.} # header: "TopoDSToStep_WireframeBuilder.hxx
