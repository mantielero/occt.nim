# PROVIDES: TopOpeBRepDS TopOpeBRepDS_BuildTool TopOpeBRepDS_Curve TopOpeBRepDS_CurveExplorer TopOpeBRepDS_DataStructure TopOpeBRepDS_Dumper TopOpeBRepDS_Edge3dInterferenceTool TopOpeBRepDS_EdgeInterferenceTool TopOpeBRepDS_EIR TopOpeBRepDS_Explorer TopOpeBRepDS_FaceInterferenceTool TopOpeBRepDS_Filter TopOpeBRepDS_FIR TopOpeBRepDS_GapFiller TopOpeBRepDS_GeometryData TopOpeBRepDS_InterferenceIterator TopOpeBRepDS_InterferenceTool TopOpeBRepDS_ListOfShapeOn1State TopOpeBRepDS_Point TopOpeBRepDS_PointExplorer TopOpeBRepDS_Reducer TopOpeBRepDS_ShapeData TopOpeBRepDS_ShapeWithState TopOpeBRepDS_Surface TopOpeBRepDS_SurfaceExplorer TopOpeBRepDS_TKI TopOpeBRepDS_TOOL TopOpeBRepDS_Transition
# DEPENDS: TopOpeBRepDS_GeometryData TopOpeBRepDS_InterferenceIterator TopOpeBRepDS_GeometryData TopOpeBRepDS_InterferenceIterator TopOpeBRepDS_GeometryData TopOpeBRepDS_InterferenceIterator  Handle[TopOpeBRepDS_Check]  Handle[  Handle[  Handle[  Handle[TopOpeBRepDS_Interference]  Handle[  Handle[  Handle[  Handle[TopOpeBRepDS_Association] StandardTransient StandardTransient TopOpeBRepDS_Interference TopOpeBRepDS_ShapeShapeInterference TopOpeBRepDS_ShapeShapeInterference  Handle[TopOpeBRepDS_GapTool] StandardTransient TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference  Handle[TopOpeBRepDS_HDataStructure] StandardTransient StandardTransient  Handle[TopOpeBRepDS_Marker] StandardTransient TopOpeBRepDS_Interference TopOpeBRepDS_Interference TopOpeBRepDS_Interference

import tkbool/topopebrepds/topopebrepds_types
import tkernel/standard/standard_types
type
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
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                

  TopOpeBRepDS_CurveData* {.importcpp: "TopOpeBRepDS_CurveData",
                           header: "TopOpeBRepDS_CurveData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData



  TopOpeBRepDS_CurveIterator* {.importcpp: "TopOpeBRepDS_CurveIterator",
                               header: "TopOpeBRepDS_CurveIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator 
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         



  TopOpeBRepDS_PointData* {.importcpp: "TopOpeBRepDS_PointData",
                           header: "TopOpeBRepDS_PointData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData



  TopOpeBRepDS_PointIterator* {.importcpp: "TopOpeBRepDS_PointIterator",
                               header: "TopOpeBRepDS_PointIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator 
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         
                                                                                                                         



  TopOpeBRepDS_SurfaceData* {.importcpp: "TopOpeBRepDS_SurfaceData",
                             header: "TopOpeBRepDS_SurfaceData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData



  TopOpeBRepDS_SurfaceIterator* {.importcpp: "TopOpeBRepDS_SurfaceIterator",
                                 header: "TopOpeBRepDS_SurfaceIterator.hxx",
                                 bycopy.} = object of TopOpeBRepDS_InterferenceIterator 
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   



  HandleTopOpeBRepDS_Check* = Handle[TopOpeBRepDS_Check]























  HandleTopOpeBRepDS_CurvePointInterference* = Handle[
      TopOpeBRepDS_CurvePointInterference]























  HandleTopOpeBRepDS_EdgeVertexInterference* = Handle[
      TopOpeBRepDS_EdgeVertexInterference]























  HandleTopOpeBRepDS_FaceEdgeInterference* = Handle[
      TopOpeBRepDS_FaceEdgeInterference]























  HandleTopOpeBRepDS_Interference* = Handle[TopOpeBRepDS_Interference]











































  HandleTopOpeBRepDS_ShapeShapeInterference* = Handle[
      TopOpeBRepDS_ShapeShapeInterference]























  HandleTopOpeBRepDS_SolidSurfaceInterference* = Handle[
      TopOpeBRepDS_SolidSurfaceInterference]























  HandleTopOpeBRepDS_SurfaceCurveInterference* = Handle[
      TopOpeBRepDS_SurfaceCurveInterference]























  HandleTopOpeBRepDS_Association* = Handle[TopOpeBRepDS_Association]





















  TopOpeBRepDS_Association* {.importcpp: "TopOpeBRepDS_Association",
                             header: "TopOpeBRepDS_Association.hxx", bycopy.} = object of StandardTransient






















  TopOpeBRepDS_Check* {.importcpp: "TopOpeBRepDS_Check",
                       header: "TopOpeBRepDS_Check.hxx", bycopy.} = object of StandardTransient






















  TopOpeBRepDS_CurvePointInterference* {.importcpp: "TopOpeBRepDS_CurvePointInterference", header: "TopOpeBRepDS_CurvePointInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_Interference






















  TopOpeBRepDS_EdgeVertexInterference* {.importcpp: "TopOpeBRepDS_EdgeVertexInterference", header: "TopOpeBRepDS_EdgeVertexInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_ShapeShapeInterference 
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            






















  TopOpeBRepDS_FaceEdgeInterference* {.importcpp: "TopOpeBRepDS_FaceEdgeInterference", header: "TopOpeBRepDS_FaceEdgeInterference.hxx",
                                      bycopy.} = object of TopOpeBRepDS_ShapeShapeInterference 
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          






















  HandleTopOpeBRepDS_GapTool* = Handle[TopOpeBRepDS_GapTool]





















  TopOpeBRepDS_GapTool* {.importcpp: "TopOpeBRepDS_GapTool",
                         header: "TopOpeBRepDS_GapTool.hxx", bycopy.} = object of StandardTransient






















  TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference* {.
      importcpp: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference",
      header: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference.hxx",
      bycopy.} = object of TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference






















  HandleTopOpeBRepDS_HDataStructure* = Handle[TopOpeBRepDS_HDataStructure]





















  TopOpeBRepDS_HDataStructure* {.importcpp: "TopOpeBRepDS_HDataStructure",
                                header: "TopOpeBRepDS_HDataStructure.hxx", bycopy.} = object of StandardTransient






















  TopOpeBRepDS_Interference* {.importcpp: "TopOpeBRepDS_Interference",
                              header: "TopOpeBRepDS_Interference.hxx", bycopy.} = object of StandardTransient






















  HandleTopOpeBRepDS_Marker* = Handle[TopOpeBRepDS_Marker]





















  TopOpeBRepDS_Marker* {.importcpp: "TopOpeBRepDS_Marker",
                        header: "TopOpeBRepDS_Marker.hxx", bycopy.} = object of StandardTransient






















  TopOpeBRepDS_ShapeShapeInterference* {.importcpp: "TopOpeBRepDS_ShapeShapeInterference", header: "TopOpeBRepDS_ShapeShapeInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_Interference 
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  






















  TopOpeBRepDS_SolidSurfaceInterference* {.
      importcpp: "TopOpeBRepDS_SolidSurfaceInterference",
      header: "TopOpeBRepDS_SolidSurfaceInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference










































  TopOpeBRepDS_SurfaceCurveInterference* {.
      importcpp: "TopOpeBRepDS_SurfaceCurveInterference",
      header: "TopOpeBRepDS_SurfaceCurveInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference











































