type
  TopOpeBRepDS* {.importcpp: "TopOpeBRepDS", header: "TopOpeBRepDS.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## IN
                                                                                   ## OU
                                                                                   ## ON
                                                                                   ## UN
type
  HandleTopOpeBRepDS_Association* = Handle[TopOpeBRepDS_Association]
  TopOpeBRepDS_Association* {.importcpp: "TopOpeBRepDS_Association",
                             header: "TopOpeBRepDS_Association.hxx", bycopy.} = object of StandardTransient
type
  TopOpeBRepDS_BuildTool* {.importcpp: "TopOpeBRepDS_BuildTool",
                           header: "TopOpeBRepDS_BuildTool.hxx", bycopy.} = object
type
  HandleTopOpeBRepDS_Check* = Handle[TopOpeBRepDS_Check]
## ! a tool verifing integrity and structure of DS
type
  TopOpeBRepDS_Check* {.importcpp: "TopOpeBRepDS_Check",
                       header: "TopOpeBRepDS_Check.hxx", bycopy.} = object of StandardTransient
type
  TopOpeBRepDS_Curve* {.importcpp: "TopOpeBRepDS_Curve",
                       header: "TopOpeBRepDS_Curve.hxx", bycopy.} = object
type
  TopOpeBRepDS_CurveData* {.importcpp: "TopOpeBRepDS_CurveData",
                           header: "TopOpeBRepDS_CurveData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData
type
  TopOpeBRepDS_CurveExplorer* {.importcpp: "TopOpeBRepDS_CurveExplorer",
                               header: "TopOpeBRepDS_CurveExplorer.hxx", bycopy.} = object
type
  TopOpeBRepDS_CurveIterator* {.importcpp: "TopOpeBRepDS_CurveIterator",
                               header: "TopOpeBRepDS_CurveIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator ##
                                                                                                                         ## !
                                                                                                                         ## Creates
                                                                                                                         ## an
                                                                                                                         ## iterator
                                                                                                                         ## on
                                                                                                                         ## the
                                                                                                                         ## curves
                                                                                                                         ## on
                                                                                                                         ## surface
                                                                                                                         ##
                                                                                                                         ## !
                                                                                                                         ## described
                                                                                                                         ## by
                                                                                                                         ## the
                                                                                                                         ## interferences
                                                                                                                         ## in
                                                                                                                         ## <L>.
type
  HandleTopOpeBRepDS_CurvePointInterference* = Handle[
      TopOpeBRepDS_CurvePointInterference]
## ! An interference with a parameter.
type
  TopOpeBRepDS_CurvePointInterference* {.importcpp: "TopOpeBRepDS_CurvePointInterference", header: "TopOpeBRepDS_CurvePointInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_Interference
type
  TopOpeBRepDS_DataStructure* {.importcpp: "TopOpeBRepDS_DataStructure",
                               header: "TopOpeBRepDS_DataStructure.hxx", bycopy.} = object
type
  TopOpeBRepDS_Dumper* {.importcpp: "TopOpeBRepDS_Dumper",
                        header: "TopOpeBRepDS_Dumper.hxx", bycopy.} = object
type
  TopOpeBRepDS_Edge3dInterferenceTool* {.importcpp: "TopOpeBRepDS_Edge3dInterferenceTool", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx",
                                        bycopy.} = object
type
  TopOpeBRepDS_EdgeInterferenceTool* {.importcpp: "TopOpeBRepDS_EdgeInterferenceTool", header: "TopOpeBRepDS_EdgeInterferenceTool.hxx",
                                      bycopy.} = object
type
  HandleTopOpeBRepDS_EdgeVertexInterference* = Handle[
      TopOpeBRepDS_EdgeVertexInterference]
## ! An interference with a parameter (ShapeShapeInterference).
type
  TopOpeBRepDS_EdgeVertexInterference* {.importcpp: "TopOpeBRepDS_EdgeVertexInterference", header: "TopOpeBRepDS_EdgeVertexInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_ShapeShapeInterference ##
                                                                                            ## !
                                                                                            ## Create
                                                                                            ## an
                                                                                            ## interference
                                                                                            ## of
                                                                                            ## VERTEX
                                                                                            ## <G>
                                                                                            ## on
                                                                                            ## a
                                                                                            ## crossed
                                                                                            ## EDGE
                                                                                            ## E.
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## if
                                                                                            ## support
                                                                                            ## type
                                                                                            ## <ST>
                                                                                            ## ==
                                                                                            ## EDGE
                                                                                            ## :
                                                                                            ## <S>
                                                                                            ## is
                                                                                            ## edge
                                                                                            ## E
                                                                                            ##
                                                                                            ## !
                                                                                            ## FACE
                                                                                            ## :
                                                                                            ## <S>
                                                                                            ## is
                                                                                            ## the
                                                                                            ## face
                                                                                            ## with
                                                                                            ## bound
                                                                                            ## E.
                                                                                            ##
                                                                                            ## !
                                                                                            ## <T>
                                                                                            ## is
                                                                                            ## the
                                                                                            ## transition
                                                                                            ## along
                                                                                            ## the
                                                                                            ## edge,
                                                                                            ## crossing
                                                                                            ## the
                                                                                            ## crossed
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## E
                                                                                            ## is
                                                                                            ## the
                                                                                            ## crossed
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## <GIsBound>
                                                                                            ## indicates
                                                                                            ## if
                                                                                            ## <G>
                                                                                            ## is
                                                                                            ## a
                                                                                            ## bound
                                                                                            ## of
                                                                                            ## the
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## <P>
                                                                                            ## is
                                                                                            ## the
                                                                                            ## parameter
                                                                                            ## of
                                                                                            ## <G>
                                                                                            ## on
                                                                                            ## the
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## interference
                                                                                            ## is
                                                                                            ## stored
                                                                                            ## in
                                                                                            ## the
                                                                                            ## list
                                                                                            ## of
                                                                                            ## interfs
                                                                                            ## of
                                                                                            ## the
                                                                                            ## edge.
type
  TopOpeBRepDS_EIR* {.importcpp: "TopOpeBRepDS_EIR",
                     header: "TopOpeBRepDS_EIR.hxx", bycopy.} = object
type
  TopOpeBRepDS_Explorer* {.importcpp: "TopOpeBRepDS_Explorer",
                          header: "TopOpeBRepDS_Explorer.hxx", bycopy.} = object
type
  HandleTopOpeBRepDS_FaceEdgeInterference* = Handle[
      TopOpeBRepDS_FaceEdgeInterference]
## ! ShapeShapeInterference
type
  TopOpeBRepDS_FaceEdgeInterference* {.importcpp: "TopOpeBRepDS_FaceEdgeInterference", header: "TopOpeBRepDS_FaceEdgeInterference.hxx",
                                      bycopy.} = object of TopOpeBRepDS_ShapeShapeInterference ##
                                                                                          ## !
                                                                                          ## Create
                                                                                          ## an
                                                                                          ## interference
                                                                                          ## of
                                                                                          ## EDGE
                                                                                          ## <G>
                                                                                          ## on
                                                                                          ## FACE
                                                                                          ## <S>.
type
  TopOpeBRepDS_FaceInterferenceTool* {.importcpp: "TopOpeBRepDS_FaceInterferenceTool", header: "TopOpeBRepDS_FaceInterferenceTool.hxx",
                                      bycopy.} = object
type
  TopOpeBRepDS_Filter* {.importcpp: "TopOpeBRepDS_Filter",
                        header: "TopOpeBRepDS_Filter.hxx", bycopy.} = object
type
  TopOpeBRepDS_FIR* {.importcpp: "TopOpeBRepDS_FIR",
                     header: "TopOpeBRepDS_FIR.hxx", bycopy.} = object
type
  TopOpeBRepDS_GapFiller* {.importcpp: "TopOpeBRepDS_GapFiller",
                           header: "TopOpeBRepDS_GapFiller.hxx", bycopy.} = object
type
  HandleTopOpeBRepDS_GapTool* = Handle[TopOpeBRepDS_GapTool]
  TopOpeBRepDS_GapTool* {.importcpp: "TopOpeBRepDS_GapTool",
                         header: "TopOpeBRepDS_GapTool.hxx", bycopy.} = object of StandardTransient
type
  TopOpeBRepDS_GeometryData* {.importcpp: "TopOpeBRepDS_GeometryData",
                              header: "TopOpeBRepDS_GeometryData.hxx", bycopy.} = object of RootObj
type
  TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference* {.
      importcpp: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference",
      header: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference.hxx",
      bycopy.} = object of TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference
type
  HandleTopOpeBRepDS_HDataStructure* = Handle[TopOpeBRepDS_HDataStructure]
  TopOpeBRepDS_HDataStructure* {.importcpp: "TopOpeBRepDS_HDataStructure",
                                header: "TopOpeBRepDS_HDataStructure.hxx", bycopy.} = object of StandardTransient
type
  HandleTopOpeBRepDS_Interference* = Handle[TopOpeBRepDS_Interference]
## ! An interference    is   the   description  of  the
## ! attachment of  a new  geometry on a  geometry. For
## ! example an intersection point  on an Edge or on  a
## ! Curve.
## !
## ! The Interference contains the following data :
## !
## ! - Transition :  How the interference  separates the
## ! existing geometry in INSIDE and OUTSIDE.
## !
## ! - SupportType : Type of  the object supporting the
## ! interference. (FACE, EDGE, VERTEX, SURFACE, CURVE).
## !
## ! - Support :  Index  in the data  structure  of the
## ! object supporting the interference.
## !
## ! - GeometryType  :   Type  of the  geometry of  the
## ! interference (SURFACE, CURVE, POINT).
## !
## ! - Geometry : Index  in the data structure  of the
## ! geometry.
type
  TopOpeBRepDS_Interference* {.importcpp: "TopOpeBRepDS_Interference",
                              header: "TopOpeBRepDS_Interference.hxx", bycopy.} = object of StandardTransient
type
  TopOpeBRepDS_InterferenceIterator* {.importcpp: "TopOpeBRepDS_InterferenceIterator", header: "TopOpeBRepDS_InterferenceIterator.hxx",
                                      bycopy.} = object of RootObj
type
  TopOpeBRepDS_InterferenceTool* {.importcpp: "TopOpeBRepDS_InterferenceTool",
                                  header: "TopOpeBRepDS_InterferenceTool.hxx",
                                  bycopy.} = object
type
  TopOpeBRepDS_ListOfShapeOn1State* {.importcpp: "TopOpeBRepDS_ListOfShapeOn1State", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx",
                                     bycopy.} = object
type
  HandleTopOpeBRepDS_Marker* = Handle[TopOpeBRepDS_Marker]
  TopOpeBRepDS_Marker* {.importcpp: "TopOpeBRepDS_Marker",
                        header: "TopOpeBRepDS_Marker.hxx", bycopy.} = object of StandardTransient
type
  TopOpeBRepDS_Point* {.importcpp: "TopOpeBRepDS_Point",
                       header: "TopOpeBRepDS_Point.hxx", bycopy.} = object
type
  TopOpeBRepDS_PointData* {.importcpp: "TopOpeBRepDS_PointData",
                           header: "TopOpeBRepDS_PointData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData
type
  TopOpeBRepDS_PointExplorer* {.importcpp: "TopOpeBRepDS_PointExplorer",
                               header: "TopOpeBRepDS_PointExplorer.hxx", bycopy.} = object
type
  TopOpeBRepDS_PointIterator* {.importcpp: "TopOpeBRepDS_PointIterator",
                               header: "TopOpeBRepDS_PointIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator ##
                                                                                                                         ## !
                                                                                                                         ## Creates
                                                                                                                         ## an
                                                                                                                         ## iterator
                                                                                                                         ## on
                                                                                                                         ## the
                                                                                                                         ## points
                                                                                                                         ## on
                                                                                                                         ## curves
                                                                                                                         ##
                                                                                                                         ## !
                                                                                                                         ## described
                                                                                                                         ## by
                                                                                                                         ## the
                                                                                                                         ## interferences
                                                                                                                         ## in
                                                                                                                         ## <L>.
type
  TopOpeBRepDS_Reducer* {.importcpp: "TopOpeBRepDS_Reducer",
                         header: "TopOpeBRepDS_Reducer.hxx", bycopy.} = object
type
  TopOpeBRepDS_ShapeData* {.importcpp: "TopOpeBRepDS_ShapeData",
                           header: "TopOpeBRepDS_ShapeData.hxx", bycopy.} = object
type
  HandleTopOpeBRepDS_ShapeShapeInterference* = Handle[
      TopOpeBRepDS_ShapeShapeInterference]
## ! Interference
type
  TopOpeBRepDS_ShapeShapeInterference* {.importcpp: "TopOpeBRepDS_ShapeShapeInterference", header: "TopOpeBRepDS_ShapeShapeInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_Interference ##
                                                                                  ## !
                                                                                  ## a
                                                                                  ## shape
                                                                                  ## interfers
                                                                                  ## on
                                                                                  ## shape
                                                                                  ## <G>
                                                                                  ## with
                                                                                  ## shape
                                                                                  ## <S>.
                                                                                  ##
                                                                                  ## !
                                                                                  ## examples
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## create
                                                                                  ## a
                                                                                  ## ShapeShapeInterference
                                                                                  ## describing
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## vertex
                                                                                  ## V
                                                                                  ## of
                                                                                  ## edge
                                                                                  ## E1
                                                                                  ## found
                                                                                  ## on
                                                                                  ## edge
                                                                                  ## E2
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## ST,S,GT,G
                                                                                  ## =
                                                                                  ## TopOpeBRepDS_EDGE,E2,TopOpeBRepDS_VERTEX,V
                                                                                  ##
                                                                                  ## !
                                                                                  ##
                                                                                  ## !
                                                                                  ## create
                                                                                  ## a
                                                                                  ## ShapeShapeInterference
                                                                                  ## describing
                                                                                  ##
                                                                                  ## !
                                                                                  ## vertex
                                                                                  ## V
                                                                                  ## of
                                                                                  ## edge
                                                                                  ## E
                                                                                  ## found
                                                                                  ## on
                                                                                  ## face
                                                                                  ## F
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## ST,S,GT,G
                                                                                  ## =
                                                                                  ## TopOpeBRepDS_FACE,F,TopOpeBRepDS_VERTEX,V
                                                                                  ##
                                                                                  ## !
                                                                                  ##
                                                                                  ## !
                                                                                  ## <GBound>
                                                                                  ## indicates
                                                                                  ## if
                                                                                  ## shape
                                                                                  ## <G>
                                                                                  ## is
                                                                                  ## a
                                                                                  ## bound
                                                                                  ## of
                                                                                  ## shape
                                                                                  ## <S>.
                                                                                  ##
                                                                                  ## !
                                                                                  ##
                                                                                  ## !
                                                                                  ## <SCC>
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## UNSH_GEOMETRY
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## have
                                                                                  ## any
                                                                                  ## types,
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## don't
                                                                                  ## share
                                                                                  ## the
                                                                                  ## same
                                                                                  ## geometry
                                                                                  ##
                                                                                  ## !
                                                                                  ## SAME_ORIENTED
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## have
                                                                                  ## identical
                                                                                  ## types,
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## orientations
                                                                                  ## are
                                                                                  ## IDENTICAL.
                                                                                  ##
                                                                                  ## !
                                                                                  ## DIFF_ORIENTED
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## have
                                                                                  ## identical
                                                                                  ## types,
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## orientations
                                                                                  ## are
                                                                                  ## DIFFERENT.
type
  TopOpeBRepDS_ShapeWithState* {.importcpp: "TopOpeBRepDS_ShapeWithState",
                                header: "TopOpeBRepDS_ShapeWithState.hxx", bycopy.} = object
type
  HandleTopOpeBRepDS_SolidSurfaceInterference* = Handle[
      TopOpeBRepDS_SolidSurfaceInterference]
## ! Interference
type
  TopOpeBRepDS_SolidSurfaceInterference* {.
      importcpp: "TopOpeBRepDS_SolidSurfaceInterference",
      header: "TopOpeBRepDS_SolidSurfaceInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference
type
  TopOpeBRepDS_Surface* {.importcpp: "TopOpeBRepDS_Surface",
                         header: "TopOpeBRepDS_Surface.hxx", bycopy.} = object
type
  HandleTopOpeBRepDS_SurfaceCurveInterference* = Handle[
      TopOpeBRepDS_SurfaceCurveInterference]
## ! an interference with a 2d curve
type
  TopOpeBRepDS_SurfaceCurveInterference* {.
      importcpp: "TopOpeBRepDS_SurfaceCurveInterference",
      header: "TopOpeBRepDS_SurfaceCurveInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference
type
  TopOpeBRepDS_SurfaceData* {.importcpp: "TopOpeBRepDS_SurfaceData",
                             header: "TopOpeBRepDS_SurfaceData.hxx", bycopy.} = object of TopOpeBRepDS_GeometryData
type
  TopOpeBRepDS_SurfaceExplorer* {.importcpp: "TopOpeBRepDS_SurfaceExplorer",
                                 header: "TopOpeBRepDS_SurfaceExplorer.hxx",
                                 bycopy.} = object
type
  TopOpeBRepDS_SurfaceIterator* {.importcpp: "TopOpeBRepDS_SurfaceIterator",
                                 header: "TopOpeBRepDS_SurfaceIterator.hxx",
                                 bycopy.} = object of TopOpeBRepDS_InterferenceIterator ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## iterator
                                                                                   ## on
                                                                                   ## the
                                                                                   ## Surfaces
                                                                                   ## on
                                                                                   ## solid
                                                                                   ##
                                                                                   ## !
                                                                                   ## described
                                                                                   ## by
                                                                                   ## the
                                                                                   ## interferences
                                                                                   ## in
                                                                                   ## <L>.
type
  TopOpeBRepDS_TKI* {.importcpp: "TopOpeBRepDS_TKI",
                     header: "TopOpeBRepDS_TKI.hxx", bycopy.} = object
type
  TopOpeBRepDS_TOOL* {.importcpp: "TopOpeBRepDS_TOOL",
                      header: "TopOpeBRepDS_TOOL.hxx", bycopy.} = object
type
  TopOpeBRepDS_Transition* {.importcpp: "TopOpeBRepDS_Transition",
                            header: "TopOpeBRepDS_Transition.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## returns
                                                                                ## the
                                                                                ## orientation
                                                                                ## corresponding
                                                                                ## to
                                                                                ## state
                                                                                ## <S>
                                                                                ##
                                                                                ## !
                                                                                ## (if
                                                                                ## one
                                                                                ## at
                                                                                ## least
                                                                                ## of
                                                                                ## the
                                                                                ## internal
                                                                                ## states
                                                                                ## is
                                                                                ## ON)
