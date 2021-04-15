import brepbuilderapi_types


type
  BRepBuilderAPI_Sewing* {.header: "BRepBuilderAPI_Sewing.hxx", importcpp: "BRepBuilderAPI_Sewing", byref.} = object #of class Standard_Transient
    ## Provides methods to

  Handle_BRepBuilderAPI_Sewing* {.header: "BRepBuilderAPI_Sewing.hxx", importcpp: "Handle_BRepBuilderAPI_Sewing".} = handle[BRepBuilderAPI_Sewing]
  Base_type* {.header: "BRepBuilderAPI_Sewing.hxx", importcpp: "BRepBuilderAPI_Sewing::base_type".} = Standard_Transient


{.push header: "BRepBuilderAPI_Sewing.hxx".}

proc constructBRepBuilderAPI_Sewing*(tolerance: Standard_Real, option1: Standard_Boolean, option2: Standard_Boolean, option3: Standard_Boolean, option4: Standard_Boolean): BRepBuilderAPI_Sewing {.constructor,importcpp: "BRepBuilderAPI_Sewing::BRepBuilderAPI_Sewing(@)".}
    ## Creates an object with tolerance of connexity option for sewing (if
    ## false only control) option for analysis of degenerated shapes option
    ## for cutting of free edges. option for non manifold processing

proc init*(this: var BRepBuilderAPI_Sewing, tolerance: Standard_Real, option1: Standard_Boolean, option2: Standard_Boolean, option3: Standard_Boolean, option4: Standard_Boolean)  {.importcpp: "Init".}
    ## initialize the parameters if necessary

proc load*(this: var BRepBuilderAPI_Sewing, shape: TopoDS_Shape)  {.importcpp: "Load".}
    ## Loades the context shape.

proc add*(this: var BRepBuilderAPI_Sewing, shape: TopoDS_Shape)  {.importcpp: "Add".}
    ## Defines the shapes to be sewed or controlled

proc perform*(this: var BRepBuilderAPI_Sewing, theProgress: Message_ProgressRange = ))  {.importcpp: "Perform".}
    ## Computing theProgress - progress indicator of algorithm

proc sewedShape*(this: BRepBuilderAPI_Sewing): TopoDS_Shape  {.importcpp: "SewedShape".}
    ## Gives the sewed shape a null shape if nothing constructed may be a
    ## face, a shell, a solid or a compound

proc setContext*(this: var BRepBuilderAPI_Sewing, theContext: handle[BRepTools_ReShape])  {.importcpp: "SetContext".}
    ## set context

proc getContext*(this: BRepBuilderAPI_Sewing): handle[BRepTools_ReShape]  {.importcpp: "GetContext".}
    ## return context

proc nbFreeEdges*(this: BRepBuilderAPI_Sewing): Standard_Integer  {.importcpp: "NbFreeEdges".}
    ## Gives the number of free edges (edge shared by one face)

proc freeEdge*(this: BRepBuilderAPI_Sewing, index: Standard_Integer): TopoDS_Edge  {.importcpp: "FreeEdge".}
    ## Gives each free edge

proc nbMultipleEdges*(this: BRepBuilderAPI_Sewing): Standard_Integer  {.importcpp: "NbMultipleEdges".}
    ## Gives the number of multiple edges (edge shared by more than two
    ## faces)

proc multipleEdge*(this: BRepBuilderAPI_Sewing, index: Standard_Integer): TopoDS_Edge  {.importcpp: "MultipleEdge".}
    ## Gives each multiple edge

proc nbContigousEdges*(this: BRepBuilderAPI_Sewing): Standard_Integer  {.importcpp: "NbContigousEdges".}
    ## Gives the number of contigous edges (edge shared by two faces)

proc contigousEdge*(this: BRepBuilderAPI_Sewing, index: Standard_Integer): TopoDS_Edge  {.importcpp: "ContigousEdge".}
    ## Gives each contigous edge

proc contigousEdgeCouple*(this: BRepBuilderAPI_Sewing, index: Standard_Integer): TopTools_ListOfShape  {.importcpp: "ContigousEdgeCouple".}
    ## Gives the sections (edge) belonging to a contigous edge

proc isSectionBound*(this: BRepBuilderAPI_Sewing, section: TopoDS_Edge): Standard_Boolean  {.importcpp: "IsSectionBound".}
    ## Indicates if a section is bound (before use SectionToBoundary)

proc sectionToBoundary*(this: BRepBuilderAPI_Sewing, section: TopoDS_Edge): TopoDS_Edge  {.importcpp: "SectionToBoundary".}
    ## Gives the original edge (free boundary) which becomes the the section.
    ## Remember that sections constitute common edges. This imformation is
    ## important for control because with original edge we can find the
    ## surface to which the section is attached.

proc nbDegeneratedShapes*(this: BRepBuilderAPI_Sewing): Standard_Integer  {.importcpp: "NbDegeneratedShapes".}
    ## Gives the number of degenerated shapes

proc degeneratedShape*(this: BRepBuilderAPI_Sewing, index: Standard_Integer): TopoDS_Shape  {.importcpp: "DegeneratedShape".}
    ## Gives each degenerated shape

proc isDegenerated*(this: BRepBuilderAPI_Sewing, shape: TopoDS_Shape): Standard_Boolean  {.importcpp: "IsDegenerated".}
    ## Indicates if a input shape is degenerated

proc isModified*(this: BRepBuilderAPI_Sewing, shape: TopoDS_Shape): Standard_Boolean  {.importcpp: "IsModified".}
    ## Indicates if a input shape has been modified

proc modified*(this: BRepBuilderAPI_Sewing, shape: TopoDS_Shape): TopoDS_Shape  {.importcpp: "Modified".}
    ## Gives a modifieded shape

proc isModifiedSubShape*(this: BRepBuilderAPI_Sewing, shape: TopoDS_Shape): Standard_Boolean  {.importcpp: "IsModifiedSubShape".}
    ## Indicates if a input subshape has been modified

proc modifiedSubShape*(this: BRepBuilderAPI_Sewing, shape: TopoDS_Shape): TopoDS_Shape  {.importcpp: "ModifiedSubShape".}
    ## Gives a modifieded subshape

proc dump*(this: BRepBuilderAPI_Sewing)  {.importcpp: "Dump".}
    ## print the informations

proc nbDeletedFaces*(this: BRepBuilderAPI_Sewing): Standard_Integer  {.importcpp: "NbDeletedFaces".}
    ## Gives the number of deleted faces (faces smallest than tolerance)

proc deletedFace*(this: BRepBuilderAPI_Sewing, index: Standard_Integer): TopoDS_Face  {.importcpp: "DeletedFace".}
    ## Gives each deleted face

proc whichFace*(this: BRepBuilderAPI_Sewing, theEdg: TopoDS_Edge, index: Standard_Integer): TopoDS_Face  {.importcpp: "WhichFace".}
    ## Gives a modified shape

proc sameParameterMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean  {.importcpp: "SameParameterMode".}
    ## Gets same parameter mode.

proc setSameParameterMode*(this: var BRepBuilderAPI_Sewing, SameParameterMode: Standard_Boolean)  {.importcpp: "SetSameParameterMode".}
    ## Sets same parameter mode.

proc tolerance*(this: BRepBuilderAPI_Sewing): Standard_Real  {.importcpp: "Tolerance".}
    ## Gives set tolerance.

proc setTolerance*(this: var BRepBuilderAPI_Sewing, theToler: Standard_Real)  {.importcpp: "SetTolerance".}
    ## Sets tolerance

proc minTolerance*(this: BRepBuilderAPI_Sewing): Standard_Real  {.importcpp: "MinTolerance".}
    ## Gives set min tolerance.

proc setMinTolerance*(this: var BRepBuilderAPI_Sewing, theMinToler: Standard_Real)  {.importcpp: "SetMinTolerance".}
    ## Sets min tolerance

proc maxTolerance*(this: BRepBuilderAPI_Sewing): Standard_Real  {.importcpp: "MaxTolerance".}
    ## Gives set max tolerance

proc setMaxTolerance*(this: var BRepBuilderAPI_Sewing, theMaxToler: Standard_Real)  {.importcpp: "SetMaxTolerance".}
    ## Sets max tolerance.

proc faceMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean  {.importcpp: "FaceMode".}
    ## Returns mode for sewing faces By default - true.

proc setFaceMode*(this: var BRepBuilderAPI_Sewing, theFaceMode: Standard_Boolean)  {.importcpp: "SetFaceMode".}
    ## Sets mode for sewing faces By default - true.

proc floatingEdgesMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean  {.importcpp: "FloatingEdgesMode".}
    ## Returns mode for sewing floating edges By default - false.

proc setFloatingEdgesMode*(this: var BRepBuilderAPI_Sewing, theFloatingEdgesMode: Standard_Boolean)  {.importcpp: "SetFloatingEdgesMode".}
    ## Sets mode for sewing floating edges By default - false. Returns mode
    ## for cutting floating edges By default - false. Sets mode for cutting
    ## floating edges By default - false.

proc localTolerancesMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean  {.importcpp: "LocalTolerancesMode".}
    ## Returns mode for accounting of local tolerances of edges and vertices
    ## during of merging.

proc setLocalTolerancesMode*(this: var BRepBuilderAPI_Sewing, theLocalTolerancesMode: Standard_Boolean)  {.importcpp: "SetLocalTolerancesMode".}
    ## Sets mode for accounting of local tolerances of edges and vertices
    ## during of merging in this case WorkTolerance = myTolerance + tolEdge1+
    ## tolEdg2;

proc setNonManifoldMode*(this: var BRepBuilderAPI_Sewing, theNonManifoldMode: Standard_Boolean)  {.importcpp: "SetNonManifoldMode".}
    ## Sets mode for non-manifold sewing.

proc nonManifoldMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean  {.importcpp: "NonManifoldMode".}
    ## Gets mode for non-manifold sewing.

proc get_type_name*(this: var BRepBuilderAPI_Sewing): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRepBuilderAPI_Sewing): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRepBuilderAPI_Sewing): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc cutting*(this: var BRepBuilderAPI_Sewing, theProgress: Message_ProgressRange = ))  {.importcpp: "Cutting".}
    ## Performs cutting of sections theProgress - progress indicator of
    ## processing

proc merging*(this: var BRepBuilderAPI_Sewing, passage: Standard_Boolean, theProgress: Message_ProgressRange = ))  {.importcpp: "Merging".}

proc isMergedClosed*(this: BRepBuilderAPI_Sewing, Edge1: TopoDS_Edge, Edge2: TopoDS_Edge, fase: TopoDS_Face): Standard_Boolean  {.importcpp: "IsMergedClosed".}

proc findCandidates*(this: var BRepBuilderAPI_Sewing, seqSections: var TopTools_SequenceOfShape, mapReference: var TColStd_IndexedMapOfInteger, seqCandidates: var TColStd_SequenceOfInteger, seqOrientations: var TColStd_SequenceOfBoolean): Standard_Boolean  {.importcpp: "FindCandidates".}

proc analysisNearestEdges*(this: var BRepBuilderAPI_Sewing, sequenceSec: TopTools_SequenceOfShape, seqIndCandidate: var TColStd_SequenceOfInteger, seqOrientations: var TColStd_SequenceOfBoolean, evalDist: Standard_Boolean)  {.importcpp: "AnalysisNearestEdges".}

proc mergedNearestEdges*(this: var BRepBuilderAPI_Sewing, edge: TopoDS_Shape, SeqMergedEdge: var TopTools_SequenceOfShape, SeqMergedOri: var TColStd_SequenceOfBoolean): Standard_Boolean  {.importcpp: "MergedNearestEdges".}
    ## Merged nearest edges.

proc edgeProcessing*(this: var BRepBuilderAPI_Sewing, theProgress: Message_ProgressRange = ))  {.importcpp: "EdgeProcessing".}

proc edgeRegularity*(this: var BRepBuilderAPI_Sewing, theProgress: Message_ProgressRange = ))  {.importcpp: "EdgeRegularity".}
    ## Recompute regularity on merged edges

proc createOutputInformations*(this: var BRepBuilderAPI_Sewing)  {.importcpp: "CreateOutputInformations".}

proc isUClosedSurface*(this: BRepBuilderAPI_Sewing, surf: handle[Geom_Surface], theEdge: TopoDS_Shape, theloc: TopLoc_Location): Standard_Boolean  {.importcpp: "IsUClosedSurface".}
    ## Defines if surface is U closed.

proc isVClosedSurface*(this: BRepBuilderAPI_Sewing, surf: handle[Geom_Surface], theEdge: TopoDS_Shape, theloc: TopLoc_Location): Standard_Boolean  {.importcpp: "IsVClosedSurface".}
    ## Defines if surface is V closed.

proc faceAnalysis*(this: var BRepBuilderAPI_Sewing, theProgress: Message_ProgressRange = ))  {.importcpp: "FaceAnalysis".}
    ## This method is called from Perform only theProgress - progress
    ## indicator of processing

proc findFreeBoundaries*(this: var BRepBuilderAPI_Sewing)  {.importcpp: "FindFreeBoundaries".}
    ## This method is called from Perform only

proc verticesAssembling*(this: var BRepBuilderAPI_Sewing, theProgress: Message_ProgressRange = ))  {.importcpp: "VerticesAssembling".}
    ## This method is called from Perform only theProgress - progress
    ## indicator of processing

proc createSewedShape*(this: var BRepBuilderAPI_Sewing)  {.importcpp: "CreateSewedShape".}
    ## This method is called from Perform only

proc getFreeWires*(this: var BRepBuilderAPI_Sewing, MapFreeEdges: var TopTools_IndexedMapOfShape, seqWires: var TopTools_SequenceOfShape)  {.importcpp: "GetFreeWires".}
    ## Get wire from free edges. This method is called from EdgeProcessing
    ## only

proc evaluateAngulars*(this: BRepBuilderAPI_Sewing, sequenceSec: var TopTools_SequenceOfShape, secForward: var TColStd_Array1OfBoolean, tabAng: var TColStd_Array1OfReal, indRef: Standard_Integer)  {.importcpp: "EvaluateAngulars".}
    ## This method is called from MergingOfSections only

proc evaluateDistances*(this: BRepBuilderAPI_Sewing, sequenceSec: var TopTools_SequenceOfShape, secForward: var TColStd_Array1OfBoolean, tabAng: var TColStd_Array1OfReal, arrLen: var TColStd_Array1OfReal, tabMinDist: var TColStd_Array1OfReal, indRef: Standard_Integer)  {.importcpp: "EvaluateDistances".}
    ## This method is called from MergingOfSections only

proc sameRange*(this: BRepBuilderAPI_Sewing, CurvePtr: handle[Geom2d_Curve], FirstOnCurve: Standard_Real, LastOnCurve: Standard_Real, RequestedFirst: Standard_Real, RequestedLast: Standard_Real): handle[Geom2d_Curve]  {.importcpp: "SameRange".}
    ## This method is called from SameParameterEdge only

proc sameParameter*(this: BRepBuilderAPI_Sewing, edge: TopoDS_Edge)  {.importcpp: "SameParameter".}
    ## This method is called from SameParameterEdge only

proc sameParameterEdge*(this: var BRepBuilderAPI_Sewing, edge: TopoDS_Shape, seqEdges: TopTools_SequenceOfShape, seqForward: TColStd_SequenceOfBoolean, mapMerged: var TopTools_MapOfShape, locReShape: handle[BRepTools_ReShape]): TopoDS_Edge  {.importcpp: "SameParameterEdge".}
    ## This method is called from Merging only

proc sameParameterEdge*(this: var BRepBuilderAPI_Sewing, edge1: TopoDS_Edge, edge2: TopoDS_Edge, listFaces1: TopTools_ListOfShape, listFaces2: TopTools_ListOfShape, secForward: Standard_Boolean, whichSec: var Standard_Integer, firstCall: Standard_Boolean): TopoDS_Edge  {.importcpp: "SameParameterEdge".}
    ## This method is called from Merging only

proc projectPointsOnCurve*(this: BRepBuilderAPI_Sewing, arrPnt: TColgp_Array1OfPnt, Crv: handle[Geom_Curve], first: Standard_Real, last: Standard_Real, arrDist: var TColStd_Array1OfReal, arrPara: var TColStd_Array1OfReal, arrProj: var TColgp_Array1OfPnt, isConsiderEnds: Standard_Boolean)  {.importcpp: "ProjectPointsOnCurve".}
    ## Projects points on curve This method is called from Cutting only

proc createCuttingNodes*(this: var BRepBuilderAPI_Sewing, MapVert: TopTools_IndexedMapOfShape, bound: TopoDS_Shape, vfirst: TopoDS_Shape, vlast: TopoDS_Shape, arrDist: TColStd_Array1OfReal, arrPara: TColStd_Array1OfReal, arrPnt: TColgp_Array1OfPnt, seqNode: var TopTools_SequenceOfShape, seqPara: var TColStd_SequenceOfReal)  {.importcpp: "CreateCuttingNodes".}
    ## Creates cutting vertices on projections This method is called from
    ## Cutting only

proc createSections*(this: var BRepBuilderAPI_Sewing, bound: TopoDS_Shape, seqNode: TopTools_SequenceOfShape, seqPara: TColStd_SequenceOfReal, listEdge: var TopTools_ListOfShape)  {.importcpp: "CreateSections".}
    ## Performs cutting of bound This method is called from Cutting only

proc sameParameterShape*(this: var BRepBuilderAPI_Sewing)  {.importcpp: "SameParameterShape".}
    ## Makes all edges from shape same parameter if SameParameterMode is
    ## equal to Standard_True This method is called from Perform only

{.pop.}  # header: "BRepBuilderAPI_Sewing.hxx"
