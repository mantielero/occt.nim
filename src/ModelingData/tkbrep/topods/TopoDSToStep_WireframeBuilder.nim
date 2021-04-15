import topods_types


type
  TopoDSToStep_WireframeBuilder* {.header: "TopoDSToStep_WireframeBuilder.hxx", importcpp: "TopoDSToStep_WireframeBuilder", byref.} = object #of class TopoDSToStep_Root
    ## This builder Class provides services to build a ProSTEP Wireframemodel
    ## from a Cas.Cad BRep.



{.push header: "TopoDSToStep_WireframeBuilder.hxx".}

proc constructTopoDSToStep_WireframeBuilder*(): TopoDSToStep_WireframeBuilder {.constructor,importcpp: "TopoDSToStep_WireframeBuilder::TopoDSToStep_WireframeBuilder".}

proc constructTopoDSToStep_WireframeBuilder*(S: TopoDS_Shape, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess]): TopoDSToStep_WireframeBuilder {.constructor,importcpp: "TopoDSToStep_WireframeBuilder::TopoDSToStep_WireframeBuilder(@)".}

proc ` new`*(this: var TopoDSToStep_WireframeBuilder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_WireframeBuilder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_WireframeBuilder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_WireframeBuilder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_WireframeBuilder, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_WireframeBuilder, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_WireframeBuilder, S: TopoDS_Shape, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc error*(this: TopoDSToStep_WireframeBuilder): TopoDSToStep_BuilderError  {.importcpp: "Error".}

proc value*(this: TopoDSToStep_WireframeBuilder): handle[TColStd_HSequenceOfTransient]  {.importcpp: "Value".}

proc getTrimmedCurveFromEdge*(this: TopoDSToStep_WireframeBuilder, E: TopoDS_Edge, F: TopoDS_Face, M: var MoniTool_DataMapOfShapeTransient, L: handle[TColStd_HSequenceOfTransient]): Standard_Boolean  {.importcpp: "GetTrimmedCurveFromEdge".}
    ## Extraction of Trimmed Curves from TopoDS_Edge for the Creation of a
    ## GeometricallyBoundedWireframeRepresentation

proc getTrimmedCurveFromFace*(this: TopoDSToStep_WireframeBuilder, F: TopoDS_Face, M: var MoniTool_DataMapOfShapeTransient, L: handle[TColStd_HSequenceOfTransient]): Standard_Boolean  {.importcpp: "GetTrimmedCurveFromFace".}
    ## Extraction of Trimmed Curves from TopoDS_Face for the Creation of a
    ## GeometricallyBoundedWireframeRepresentation

proc getTrimmedCurveFromShape*(this: TopoDSToStep_WireframeBuilder, S: TopoDS_Shape, M: var MoniTool_DataMapOfShapeTransient, L: handle[TColStd_HSequenceOfTransient]): Standard_Boolean  {.importcpp: "GetTrimmedCurveFromShape".}
    ## Extraction of Trimmed Curves from any TopoDS_Shape for the Creation of
    ## a GeometricallyBoundedWireframeRepresentation

{.pop.}  # header: "TopoDSToStep_WireframeBuilder.hxx"
