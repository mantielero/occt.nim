import brepbuilderapi_types


type
  BRepBuilderAPI_VertexInspector* {.header: "BRepBuilderAPI_VertexInspector.hxx", importcpp: "BRepBuilderAPI_VertexInspector", byref.} = object #of struct NCollection_CellFilter_InspectorXYZ
    ## Class BRepBuilderAPI_VertexInspector derived from
    ## NCollection_CellFilter_InspectorXYZ This class define the Inspector
    ## interface for CellFilter algorithm, working with gp_XYZ points in 3d
    ## space. Used in search of coincidence points with a certain tolerance.

  VectorOfPoint* {.header: "BRepBuilderAPI_VertexInspector.hxx", importcpp: "VectorOfPoint".} = NCollection_Vector[gp_XYZ]
  Target* {.header: "BRepBuilderAPI_VertexInspector.hxx", importcpp: "BRepBuilderAPI_VertexInspector::Target".} = Standard_Integer


{.push header: "BRepBuilderAPI_VertexInspector.hxx".}

proc constructBRepBuilderAPI_VertexInspector*(theTol: Standard_Real): BRepBuilderAPI_VertexInspector {.constructor,importcpp: "BRepBuilderAPI_VertexInspector::BRepBuilderAPI_VertexInspector(@)".}
    ## Constructor; remembers the tolerance

proc add*(this: var BRepBuilderAPI_VertexInspector, thePnt: gp_XYZ)  {.importcpp: "Add".}
    ## Keep the points used for comparison

proc clearResList*(this: var BRepBuilderAPI_VertexInspector)  {.importcpp: "ClearResList".}
    ## Clear the list of adjacent points

proc setCurrent*(this: var BRepBuilderAPI_VertexInspector, theCurPnt: gp_XYZ)  {.importcpp: "SetCurrent".}
    ## Set current point to search for coincidence

proc resInd*(this: var BRepBuilderAPI_VertexInspector): TColStd_ListOfInteger  {.importcpp: "ResInd".}
    ## Get list of indexes of points adjacent with the current

proc inspect*(this: var BRepBuilderAPI_VertexInspector, theTarget: Standard_Integer): NCollection_CellFilter_Action  {.importcpp: "Inspect".}
    ## Implementation of inspection method

{.pop.}  # header: "BRepBuilderAPI_VertexInspector.hxx"
