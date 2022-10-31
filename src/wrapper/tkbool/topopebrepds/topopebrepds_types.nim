import ../../tkbrep/topods/topods_types
import ../../tkg3d/topabs/topabs_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkbrep/toptools/toptools_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
type
  TopOpeBRepDS_CheckStatus* {.size: sizeof(cint),
                             importcpp: "TopOpeBRepDS_CheckStatus",
                             header: "TopOpeBRepDS_CheckStatus.hxx".} = enum
    TopOpeBRepDS_OK, TopOpeBRepDS_NOK

  TopOpeBRepDS_Config* {.size: sizeof(cint), importcpp: "TopOpeBRepDS_Config",
                        header: "TopOpeBRepDS_Config.hxx".} = enum
    TopOpeBRepDS_UNSHGEOMETRY, TopOpeBRepDS_SAMEORIENTED,
    TopOpeBRepDS_DIFFORIENTED

  TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_CheckStatus,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfCheckStatus.hxx", bycopy.} = object

  TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_ListOfInterference,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfIntegerListOfInterference.hxx", bycopy.} = object

  TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference* {.importcpp:"NCollection_DataMap<Handle(TopOpeBRepDS_Interference),TopOpeBRepDS_ListOfInterference,TColStd_MapTransientHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfInterferenceListOfInterference.hxx", bycopy.} = object

  TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape* {.importcpp:"NCollection_DataMap<Handle(TopOpeBRepDS_Interference),TopoDS_Shape,TColStd_MapTransientHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfInterferenceShape.hxx", bycopy.} = object

  TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepDS_ListOfShapeOn1State,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State.hxx", bycopy.} = object

  TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopAbs_State,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfShapeState.hxx", bycopy.} = object

  TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape* {.importcpp:"NCollection_DoubleMap<Standard_Integer,TopoDS_Shape,TColStd_MapIntegerHasher,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepDS_DoubleMapOfIntegerShape.hxx", bycopy.} = object

  TopOpeBRepDS_Kind* {.size: sizeof(cint), importcpp: "TopOpeBRepDS_Kind",
                      header: "TopOpeBRepDS_Kind.hxx".} = enum
    tobrdsPOINT, tobrdsCURVE, tobrdsSURFACE,
    tobrdsVERTEX, tobrdsEDGE, tobrdsWIRE, tobrdsFACE,
    tobrdsSHELL, tobrdsSOLID, tobrdsCOMPSOLID,
    tobrdsCOMPOUND, tobrdsUNKNOWN

  TopOpeBRepDS_ListIteratorOfListOfInterference* {.importcpp:"NCollection_List<Handle(TopOpeBRepDS_Interference)>::Iterator", header:"TopOpeBRepDS_ListOfInterference.hxx", bycopy.} = object

  TopOpeBRepDS_DataMapIteratorOfMapOfCurve* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_CurveData,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_MapOfCurve.hxx", bycopy.} = object

  TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_ShapeData,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_MapOfIntegerShapeData.hxx", bycopy.} = object

  TopOpeBRepDS_DataMapIteratorOfMapOfPoint* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_PointData,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_MapOfPoint.hxx", bycopy.}  = object

  TopOpeBRepDS_DataMapIteratorOfMapOfSurface* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_SurfaceData,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_MapOfSurface.hxx", bycopy.} = object

  TopOpeBRepDS_PDataStructure* = ptr TopOpeBRepDS_DataStructure

  TopOpeBRepDS_DataMapIteratorOfShapeSurface* {.importcpp:"NCollection_DataMap<TopoDS_Shape,Handle(Geom_Surface),TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepDS_ShapeSurface.hxx", bycopy.} = object

  TopOpeBRepDS* {.importcpp: "TopOpeBRepDS", header: "TopOpeBRepDS.hxx", bycopy.} = object 

  TopOpeBRepDS_BuildTool* {.importcpp: "TopOpeBRepDS_BuildTool",
                           header: "TopOpeBRepDS_BuildTool.hxx", bycopy.} = object

  TopOpeBRepDS_Curve* {.importcpp: "TopOpeBRepDS_Curve",
                       header: "TopOpeBRepDS_Curve.hxx", bycopy.} = object

  TopOpeBRepDS_CurveExplorer* {.importcpp: "TopOpeBRepDS_CurveExplorer",
                               header: "TopOpeBRepDS_CurveExplorer.hxx", bycopy.} = object

  TopOpeBRepDS_DataStructure* {.importcpp: "TopOpeBRepDS_DataStructure",
                               header: "TopOpeBRepDS_DataStructure.hxx", bycopy.} = object

  TopOpeBRepDS_Dumper* {.importcpp: "TopOpeBRepDS_Dumper",
                        header: "TopOpeBRepDS_Dumper.hxx", bycopy.} = object

  TopOpeBRepDS_Edge3dInterferenceTool* {.importcpp: "TopOpeBRepDS_Edge3dInterferenceTool", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx",
                                        bycopy.} = object

  TopOpeBRepDS_EdgeInterferenceTool* {.importcpp: "TopOpeBRepDS_EdgeInterferenceTool", header: "TopOpeBRepDS_EdgeInterferenceTool.hxx",
                                      bycopy.} = object

  TopOpeBRepDS_EIR* {.importcpp: "TopOpeBRepDS_EIR",
                     header: "TopOpeBRepDS_EIR.hxx", bycopy.} = object

  TopOpeBRepDS_Explorer* {.importcpp: "TopOpeBRepDS_Explorer",
                          header: "TopOpeBRepDS_Explorer.hxx", bycopy.} = object

  TopOpeBRepDS_FaceInterferenceTool* {.importcpp: "TopOpeBRepDS_FaceInterferenceTool", header: "TopOpeBRepDS_FaceInterferenceTool.hxx",
                                      bycopy.} = object

  TopOpeBRepDS_Filter* {.importcpp: "TopOpeBRepDS_Filter",
                        header: "TopOpeBRepDS_Filter.hxx", bycopy.} = object

  TopOpeBRepDS_FIR* {.importcpp: "TopOpeBRepDS_FIR",
                     header: "TopOpeBRepDS_FIR.hxx", bycopy.} = object

  TopOpeBRepDS_GapFiller* {.importcpp: "TopOpeBRepDS_GapFiller",
                           header: "TopOpeBRepDS_GapFiller.hxx", bycopy.} = object

  TopOpeBRepDS_GeometryData* {.importcpp: "TopOpeBRepDS_GeometryData",
                              header: "TopOpeBRepDS_GeometryData.hxx", bycopy.} = object of RootObj

  TopOpeBRepDS_InterferenceIterator* {.importcpp: "TopOpeBRepDS_InterferenceIterator", header: "TopOpeBRepDS_InterferenceIterator.hxx",
                                      bycopy.} = object of RootObj

  TopOpeBRepDS_InterferenceTool* {.importcpp: "TopOpeBRepDS_InterferenceTool",
                                  header: "TopOpeBRepDS_InterferenceTool.hxx",
                                  bycopy.} = object

  TopOpeBRepDS_ListOfShapeOn1State* {.importcpp: "TopOpeBRepDS_ListOfShapeOn1State", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx",
                                     bycopy.} = object

  TopOpeBRepDS_Point* {.importcpp: "TopOpeBRepDS_Point",
                       header: "TopOpeBRepDS_Point.hxx", bycopy.} = object

  TopOpeBRepDS_PointExplorer* {.importcpp: "TopOpeBRepDS_PointExplorer",
                               header: "TopOpeBRepDS_PointExplorer.hxx", bycopy.} = object

  TopOpeBRepDS_Reducer* {.importcpp: "TopOpeBRepDS_Reducer",
                         header: "TopOpeBRepDS_Reducer.hxx", bycopy.} = object

  TopOpeBRepDS_ShapeData* {.importcpp: "TopOpeBRepDS_ShapeData",
                           header: "TopOpeBRepDS_ShapeData.hxx", bycopy.} = object

  TopOpeBRepDS_ShapeWithState* {.importcpp: "TopOpeBRepDS_ShapeWithState",
                                header: "TopOpeBRepDS_ShapeWithState.hxx", bycopy.} = object

  TopOpeBRepDS_Surface* {.importcpp: "TopOpeBRepDS_Surface",
                         header: "TopOpeBRepDS_Surface.hxx", bycopy.} = object

  TopOpeBRepDS_SurfaceExplorer* {.importcpp: "TopOpeBRepDS_SurfaceExplorer",
                                 header: "TopOpeBRepDS_SurfaceExplorer.hxx",
                                 bycopy.} = object

  TopOpeBRepDS_TKI* {.importcpp: "TopOpeBRepDS_TKI",
                     header: "TopOpeBRepDS_TKI.hxx", bycopy.} = object

  TopOpeBRepDS_TOOL* {.importcpp: "TopOpeBRepDS_TOOL",
                      header: "TopOpeBRepDS_TOOL.hxx", bycopy.} = object
                      header: "TopOpeBRepDS_TOOL.hxx", bycopy.} = object

  TopOpeBRepDS_Transition* {.importcpp: "TopOpeBRepDS_Transition",
                            header: "TopOpeBRepDS_Transition.hxx", bycopy.} = object 

  TopOpeBRepDS_DataMapOfCheckStatus* = NCollectionDataMap[cint,
      TopOpeBRepDS_CheckStatus, TColStdMapIntegerHasher]

  TopOpeBRepDS_DataMapOfInterferenceListOfInterference* = NCollectionDataMap[
      Handle[TopOpeBRepDS_Interference], TopOpeBRepDS_ListOfInterference,
      TColStdMapTransientHasher]

  TopOpeBRepDS_DataMapOfInterferenceShape* = NCollectionDataMap[
      Handle[TopOpeBRepDS_Interference], TopoDS_Shape, TColStdMapTransientHasher]

  TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State* = NCollectionDataMap[
      TopoDS_Shape, TopOpeBRepDS_ListOfShapeOn1State, TopToolsShapeMapHasher]

  TopOpeBRepDS_DataMapOfShapeState* = NCollectionDataMap[TopoDS_Shape, TopAbsState,
      TopToolsShapeMapHasher]

  TopOpeBRepDS_DoubleMapOfIntegerShape* = NCollectionDoubleMap[cint, TopoDS_Shape,
      TColStdMapIntegerHasher, TopToolsShapeMapHasher]

  TopOpeBRepDS_IndexedDataMapOfShapeWithState* = NCollectionIndexedDataMap[
      TopoDS_Shape, TopOpeBRepDS_ShapeWithState, TopToolsShapeMapHasher]

  TopOpeBRepDS_IndexedDataMapOfVertexPoint* = NCollectionIndexedDataMap[
      TopoDS_Shape, TopOpeBRepDS_Point, TopToolsShapeMapHasher]

  TopOpeBRepDS_ListOfInterference* = NCollectionList[
      Handle[TopOpeBRepDS_Interference]]

  TopOpeBRepDS_DataMapOfIntegerListOfInterference* = NCollectionDataMap[cint,
      TopOpeBRepDS_ListOfInterference, TColStdMapIntegerHasher]

  TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference* = NCollectionArray1[
      TopOpeBRepDS_DataMapOfIntegerListOfInterference]

  TopOpeBRepDS_MapOfIntegerShapeData* = NCollectionDataMap[cint,
      TopOpeBRepDS_ShapeData, TColStdMapIntegerHasher]

  TopOpeBRepDS_MapOfShapeData* = NCollectionIndexedDataMap[TopoDS_Shape,
      TopOpeBRepDS_ShapeData, TopToolsShapeMapHasher]

  TopOpeBRepDS_ShapeSurface* = NCollectionDataMap[TopoDS_Shape,
      Handle[GeomSurface], TopToolsShapeMapHasher]

  TopOpeBRepDS_CurveData* {.importcpp: "TopOpeBRepDS_CurveData",
                           header: "TopOpeBRepDS_CurveData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData

  TopOpeBRepDS_MapOfCurve* = NCollectionDataMap[cint, TopOpeBRepDS_CurveData,
      TColStdMapIntegerHasher]

  TopOpeBRepDS_CurveIterator* {.importcpp: "TopOpeBRepDS_CurveIterator",
                               header: "TopOpeBRepDS_CurveIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator 

  TopOpeBRepDS_PointData* {.importcpp: "TopOpeBRepDS_PointData",
                           header: "TopOpeBRepDS_PointData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData

  TopOpeBRepDS_MapOfPoint* = NCollectionDataMap[cint, TopOpeBRepDS_PointData,
      TColStdMapIntegerHasher]

  TopOpeBRepDS_PointIterator* {.importcpp: "TopOpeBRepDS_PointIterator",
                               header: "TopOpeBRepDS_PointIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator 

  TopOpeBRepDS_SurfaceData* {.importcpp: "TopOpeBRepDS_SurfaceData",
                             header: "TopOpeBRepDS_SurfaceData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData

  TopOpeBRepDS_MapOfSurface* = NCollectionDataMap[cint, TopOpeBRepDS_SurfaceData,
      TColStdMapIntegerHasher]

  TopOpeBRepDS_SurfaceIterator* {.importcpp: "TopOpeBRepDS_SurfaceIterator",
                                 header: "TopOpeBRepDS_SurfaceIterator.hxx",
                                 bycopy.} = object of TopOpeBRepDS_InterferenceIterator 

  TopOpeBRepDS_Association* {.importcpp: "TopOpeBRepDS_Association",
                             header: "TopOpeBRepDS_Association.hxx", bycopy.} = object of StandardTransient

  HandleTopOpeBRepDS_Association* = Handle[TopOpeBRepDS_Association]

  TopOpeBRepDS_Check* {.importcpp: "TopOpeBRepDS_Check",
                       header: "TopOpeBRepDS_Check.hxx", bycopy.} = object of StandardTransient

  HandleTopOpeBRepDS_Check* = Handle[TopOpeBRepDS_Check]

  TopOpeBRepDS_GapTool* {.importcpp: "TopOpeBRepDS_GapTool",
                         header: "TopOpeBRepDS_GapTool.hxx", bycopy.} = object of StandardTransient

  HandleTopOpeBRepDS_GapTool* = Handle[TopOpeBRepDS_GapTool]

  TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference* {.
      importcpp: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference",
      header: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference.hxx",
      bycopy.} = object of TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference

  TopOpeBRepDS_HDataStructure* {.importcpp: "TopOpeBRepDS_HDataStructure",
                                header: "TopOpeBRepDS_HDataStructure.hxx", bycopy.} = object of StandardTransient

  HandleTopOpeBRepDS_HDataStructure* = Handle[TopOpeBRepDS_HDataStructure]

  TopOpeBRepDS_Interference* {.importcpp: "TopOpeBRepDS_Interference",
                              header: "TopOpeBRepDS_Interference.hxx", bycopy.} = object of StandardTransient

  TopOpeBRepDS_CurvePointInterference* {.importcpp: "TopOpeBRepDS_CurvePointInterference", header: "TopOpeBRepDS_CurvePointInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_Interference

  HandleTopOpeBRepDS_CurvePointInterference* = Handle[
      TopOpeBRepDS_CurvePointInterference]

  HandleTopOpeBRepDS_Interference* = Handle[TopOpeBRepDS_Interference]

  TopOpeBRepDS_Marker* {.importcpp: "TopOpeBRepDS_Marker",
                        header: "TopOpeBRepDS_Marker.hxx", bycopy.} = object of StandardTransient

  HandleTopOpeBRepDS_Marker* = Handle[TopOpeBRepDS_Marker]

  TopOpeBRepDS_ShapeShapeInterference* {.importcpp: "TopOpeBRepDS_ShapeShapeInterference", header: "TopOpeBRepDS_ShapeShapeInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_Interference 

  TopOpeBRepDS_FaceEdgeInterference* {.importcpp: "TopOpeBRepDS_FaceEdgeInterference", header: "TopOpeBRepDS_FaceEdgeInterference.hxx",
                                      bycopy.} = object of TopOpeBRepDS_ShapeShapeInterference 

  HandleTopOpeBRepDS_FaceEdgeInterference* = Handle[
      TopOpeBRepDS_FaceEdgeInterference]

  TopOpeBRepDS_EdgeVertexInterference* {.importcpp: "TopOpeBRepDS_EdgeVertexInterference", header: "TopOpeBRepDS_EdgeVertexInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_ShapeShapeInterference 

  HandleTopOpeBRepDS_EdgeVertexInterference* = Handle[
      TopOpeBRepDS_EdgeVertexInterference]

  HandleTopOpeBRepDS_ShapeShapeInterference* = Handle[
      TopOpeBRepDS_ShapeShapeInterference]

  TopOpeBRepDS_SolidSurfaceInterference* {.
      importcpp: "TopOpeBRepDS_SolidSurfaceInterference",
      header: "TopOpeBRepDS_SolidSurfaceInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference
      header: "TopOpeBRepDS_SolidSurfaceInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference

  HandleTopOpeBRepDS_SolidSurfaceInterference* = Handle[
      TopOpeBRepDS_SolidSurfaceInterference]

      header: "TopOpeBRepDS_SolidSurfaceInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference
  TopOpeBRepDS_SurfaceCurveInterference* {.
      importcpp: "TopOpeBRepDS_SurfaceCurveInterference",
      header: "TopOpeBRepDS_SurfaceCurveInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference

  HandleTopOpeBRepDS_SurfaceCurveInterference* = Handle[
      TopOpeBRepDS_SurfaceCurveInterference]

