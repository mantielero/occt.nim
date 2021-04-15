import brepbuilderapi_types


type
  FS_Statuses* {.size:sizeof(cuint),header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "BRepBuilderAPI_FastSewing::FS_Statuses", pure.} = enum
    ## Enumeration of result statuses

    FS_OK = 0,
    FS_Degenerated = 1,
    FS_FindVertexError = 2,
    FS_FindEdgeError = 4,
    FS_FaceWithNullSurface = 8,
    FS_NotNaturalBoundsFace = 16,
    FS_InfiniteSurface = 32,
    FS_EmptyInput = 64,
    FS_Exception = 128

  BRepBuilderAPI_FastSewing* {.header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "BRepBuilderAPI_FastSewing", byref.} = object #of class Standard_Transient
    ## This class performs fast sewing of surfaces (faces). It supposes that
    ## all surfaces are finite and are naturally restricted by their bounds.
    ## Moreover, it supposes that stitched together surfaces have the same
    ## parameterization along common boundaries, therefore it does not
    ## perform time-consuming check for SameParameter property of edges.

  FS_Edge* {.header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "BRepBuilderAPI_FastSewing::FS_Edge", byref.} = object
    ## The struct corresponding to a edge

  NodeInspector* {.header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "BRepBuilderAPI_FastSewing::NodeInspector", byref.} = object #of struct NCollection_CellFilter_InspectorXYZ
    ## This inspector will find a node nearest to the given point not far
    ## than on the given tolerance

  FS_Vertex* {.header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "BRepBuilderAPI_FastSewing::FS_Vertex".} = object
    ## The struct corresponding to a vertex

  FS_Face* {.header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "BRepBuilderAPI_FastSewing::FS_Face".} = object
    ## The struct corresponding to an face

  FS_VARStatuses* {.header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "BRepBuilderAPI_FastSewing::FS_VARStatuses".} = cuint
  Base_type* {.header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "BRepBuilderAPI_FastSewing::base_type".} = Standard_Transient
  Target* {.header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "BRepBuilderAPI_FastSewing::NodeInspector::Target".} = Standard_Integer
  Handle_BRepBuilderAPI_FastSewing* {.header: "BRepBuilderAPI_FastSewing.hxx", importcpp: "Handle_BRepBuilderAPI_FastSewing".} = handle[BRepBuilderAPI_FastSewing]


{.push header: "BRepBuilderAPI_FastSewing.hxx".}

proc constructBRepBuilderAPI_FastSewing*(theTolerance: Standard_Real): BRepBuilderAPI_FastSewing {.constructor,importcpp: "BRepBuilderAPI_FastSewing::BRepBuilderAPI_FastSewing(@)".}
    ## Creates an object with tolerance of connexity

proc constructFS_Vertex*(): FS_Vertex {.constructor,importcpp: "BRepBuilderAPI_FastSewing::FS_Vertex::FS_Vertex".}

proc constructFS_Face*(): FS_Face {.constructor,importcpp: "BRepBuilderAPI_FastSewing::FS_Face::FS_Face".}

proc constructFS_Edge*(): FS_Edge {.constructor,importcpp: "BRepBuilderAPI_FastSewing::FS_Edge::FS_Edge".}

proc constructFS_Edge*(theIDVert1: Standard_Integer, theIDVert2: Standard_Integer): FS_Edge {.constructor,importcpp: "BRepBuilderAPI_FastSewing::FS_Edge::FS_Edge(@)".}

proc constructNodeInspector*(theVec: NCollection_Vector[FS_Vertex], thePnt: gp_Pnt, theTol: Standard_Real): NodeInspector {.constructor,importcpp: "BRepBuilderAPI_FastSewing::NodeInspector::NodeInspector(@)".}

proc add*(this: var BRepBuilderAPI_FastSewing, theShape: TopoDS_Shape): Standard_Boolean  {.importcpp: "Add".}
    ## Adds faces of a shape

proc add*(this: var BRepBuilderAPI_FastSewing, theSurface: handle[Geom_Surface]): Standard_Boolean  {.importcpp: "Add".}
    ## Adds a surface

proc perform*(this: var BRepBuilderAPI_FastSewing)  {.importcpp: "Perform".}
    ## Compute resulted shape

proc setTolerance*(this: var BRepBuilderAPI_FastSewing, theToler: Standard_Real)  {.importcpp: "SetTolerance".}
    ## Sets tolerance

proc getTolerance*(this: BRepBuilderAPI_FastSewing): Standard_Real  {.importcpp: "GetTolerance".}
    ## Returns tolerance

proc getResult*(this: BRepBuilderAPI_FastSewing): TopoDS_Shape  {.importcpp: "GetResult".}
    ## Returns resulted shape

proc getStatuses*(this: var BRepBuilderAPI_FastSewing, theOS: Standard_OStream *const = 0): FS_VARStatuses  {.importcpp: "GetStatuses".}
    ## Returns list of statuses. Print message if theOS != 0

proc get_type_name*(this: var BRepBuilderAPI_FastSewing): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRepBuilderAPI_FastSewing): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRepBuilderAPI_FastSewing): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc findVertexes*(this: var BRepBuilderAPI_FastSewing, theSurfID: Standard_Integer, theCells: var NCollection_CellFilter[NodeInspector])  {.importcpp: "FindVertexes".}

proc findEdges*(this: var BRepBuilderAPI_FastSewing, theSurfID: Standard_Integer)  {.importcpp: "FindEdges".}

proc updateEdgeInfo*(this: var BRepBuilderAPI_FastSewing, theIDPrevVertex: Standard_Integer, theIDCurrVertex: Standard_Integer, theFaceID: Standard_Integer, theIDCurvOnFace: Standard_Integer)  {.importcpp: "UpdateEdgeInfo".}

proc createNewEdge*(this: var BRepBuilderAPI_FastSewing, theIDPrevVertex: Standard_Integer, theIDCurrVertex: Standard_Integer, theFaceID: Standard_Integer, theIDCurvOnFace: Standard_Integer)  {.importcpp: "CreateNewEdge".}

proc compute3DRange*(this: var BRepBuilderAPI_FastSewing): Standard_Real  {.importcpp: "Compute3DRange".}

proc setStatus*(this: var BRepBuilderAPI_FastSewing, theStatus: FS_Statuses): FS_VARStatuses  {.importcpp: "SetStatus".}
    ## Sets status. Returns numeric value of the status set

proc createTopologicalVertex*(this: var FS_Vertex, theToler: Standard_Real)  {.importcpp: "CreateTopologicalVertex".}
    ## Creates topological member (vertex)

proc createTopologicalWire*(this: var FS_Face, theEdgeVec: NCollection_Vector[FS_Edge], theToler: Standard_Real)  {.importcpp: "CreateTopologicalWire".}
    ## Creates topological members (wire and face)

proc createTopologicalFace*(this: var FS_Face)  {.importcpp: "CreateTopologicalFace".}

proc setVertex*(this: var FS_Face, thePlaceID: Standard_Integer, theVertID: Standard_Integer)  {.importcpp: "SetVertex".}
    ## Sets vertex

proc setEdge*(this: var FS_Face, thePlaceID: Standard_Integer, theEdgeID: Standard_Integer)  {.importcpp: "SetEdge".}
    ## Sets edge

proc createTopologicalEdge*(this: var FS_Edge, theVertexVec: NCollection_Vector[FS_Vertex], theFaceVec: NCollection_Vector[FS_Face], theTol: Standard_Real)  {.importcpp: "CreateTopologicalEdge".}
    ## Creates topological member (TopoDS_Edge)

proc setVertex*(this: var FS_Edge, thePlaceID: Standard_Integer, theVertID: Standard_Integer)  {.importcpp: "SetVertex".}
    ## Sets vertex

proc isDegenerated*(this: FS_Edge): Standard_Boolean  {.importcpp: "IsDegenerated".}

proc inspect*(this: var NodeInspector, theId: Target): NCollection_CellFilter_Action  {.importcpp: "Inspect".}

proc getResult*(this: var NodeInspector): Target  {.importcpp: "GetResult".}

proc `=`*(this: var NodeInspector, a00: NodeInspector)  {.importcpp: "# = #".}

{.pop.}  # header: "BRepBuilderAPI_FastSewing.hxx"
