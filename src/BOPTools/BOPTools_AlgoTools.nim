##  Created by: Peter KURNEV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##  Copyright (c) 2007-2010 CEA/DEN, EDF R&D, OPEN CASCADE
##  Copyright (c) 2003-2007 OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN, CEDRAT,
##                          EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of IntTools_Curve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of IntTools_Context"
discard "forward decl of TopoDS_Solid"
discard "forward decl of IntTools_Range"
discard "forward decl of TopoDS_Shell"
discard "forward decl of Message_Report"
type
  BOPToolsAlgoTools* {.importcpp: "BOPTools_AlgoTools",
                      header: "BOPTools_AlgoTools.hxx", bycopy.} = object ## ! @name Constants
                                                                     ## ! Additional tolerance (delta tolerance) is used in Boolean Operations
                                                                     ## ! to ensure that the tolerance of new/old entities obtained
                                                                     ## ! by
                                                                     ## intersection of two shapes is slightly bigger than the actual
                                                                     ## ! distances to these shapes. It helps to avoid numerical instability
                                                                     ## ! which may occur when comparing distances and tolerances.
                                                                     ## ! @name
                                                                     ## Intersection of the vertices
                                                                     ## ! Intersects the vertex <theV1> with the point <theP> with tolerance <theTolP>.
                                                                     ## ! Returns the error status:
                                                                     ## ! - 0 - no error, meaning that the vertex intersects the point;
                                                                     ## ! - 1 - the distance between vertex and point is grater than the sum of tolerances.
                                                                     ## ! @name Vertices
                                                                     ## construction
                                                                     ## ! Makes the vertex in the middle of given vertices with
                                                                     ## ! the tolerance covering all tolerance spheres of vertices.
                                                                     ## ! @name Updating the vertex
                                                                     ## ! Update the tolerance value for vertex  <aV>
                                                                     ## ! taking into account the fact that <aV> lays on
                                                                     ## ! the curve <aIC>
                                                                     ## ! @name Edge
                                                                     ## construction
                                                                     ## ! Makes the edge based on the given curve with given bounding vertices.
                                                                     ## ! @name
                                                                     ## Point/Edge/Face
                                                                     ## classification relatively solid
                                                                     ## ! Computes the 3-D state of the point thePoint
                                                                     ## ! toward solid theSolid.
                                                                     ## ! theTol - value of precision of computation
                                                                     ## ! theContext- cahed geometrical tools
                                                                     ## ! Returns 3-D state.
                                                                     ## ! @name Face
                                                                     ## classification relatively solid
                                                                     ## ! For the face theFace and its edge theEdge
                                                                     ## ! finds the face suitable to produce shell.
                                                                     ## ! theLCEF - set of faces to search. All faces
                                                                     ## ! from theLCEF must share edge theEdge
                                                                     ## ! @name PCurve
                                                                     ## construction
                                                                     ## ! Makes 2d curve of the edge <theE> on the faces <theF1> and
                                                                     ## <theF2>.<br>
                                                                     ## !
                                                                     ## <theContext> - storage for caching the geometrical tools
                                                                     ## ! @name Wire
                                                                     ## classification relatively face
                                                                     ## ! Checks if the wire is a hole for the face.
                                                                     ## ! @name Choosing correct orientation for the split shape
                                                                     ## ! Checks if the direction of the split shape is opposite to
                                                                     ## ! the direction of the original shape.
                                                                     ## ! The method is an overload for (Edge,Edge) and (Face,Face)
                                                                     ## corresponding
                                                                     ## ! methods and checks only these types of shapes.
                                                                     ## ! For faces the method checks if normal directions are opposite.
                                                                     ## ! For edges the method checks if tangent vectors are opposite.
                                                                     ## !
                                                                     ## ! In case the directions do not coincide, it returns TRUE, meaning
                                                                     ## ! that split shape has to be reversed to match the direction of the
                                                                     ## ! original shape.
                                                                     ## !
                                                                     ## ! If requested (<theError> is not null), the method returns the status of the operation:
                                                                     ## ! - 0 - no error;
                                                                     ## ! - Error from (Edge,Edge) or (Face,Face)
                                                                     ## corresponding method
                                                                     ## ! - 100 - bad types.
                                                                     ## ! In case of any error the method always returns FALSE.
                                                                     ## !
                                                                     ## ! @param theSplit [in] Split shape
                                                                     ## ! @param theShape [in] Original shape
                                                                     ## ! @param theContext [in] Cashed geometrical tools
                                                                     ## ! @param theError [out] Error Status of the operation
                                                                     ## ! @name Making connexity blocks
                                                                     ## ! For the list of faces theLS build block
                                                                     ## ! theLSCB in terms of connexity by edges
                                                                     ## ! theMapAvoid - set of edges to avoid for
                                                                     ## ! the treatment
                                                                     ## ! @name Orienting elements in container
                                                                     ## ! Correctly orients edges on the wire
                                                                     ## ! @name Methods for shape validation
                                                                     ## (correction)
                                                                     ## ! Provides valid values of tolerances for the shape <theS>
                                                                     ## ! <theTolMax> is max value of the tolerance that can be
                                                                     ## ! accepted for correction.  If real value of the tolerance
                                                                     ## ! will be greater than  <aTolMax>, the correction does not
                                                                     ## ! perform.
                                                                     ## ! Checking if the faces are coinciding
                                                                     ## ! Checks if the given faces are
                                                                     ## same-domain, i.e. coincide.
                                                                     ## ! @name Looking for the edge in the face
                                                                     ## ! Returns True if the face theFace contains
                                                                     ## ! the edge theEdge but with opposite
                                                                     ## orientation.
                                                                     ## ! If the method  returns True theEdgeOff is the
                                                                     ## ! edge founded
                                                                     ## ! @name Correction of the edges range
                                                                     ## ! Correct shrunk range <aSR> taking into account 3D-curve
                                                                     ## ! resolution and
                                                                     ## corresponding tolerance values of <aE1>, <aE2>
                                                                     ## ! @name Checking edge on micro status
                                                                     ## ! Checks if it is possible to compute shrunk range for the edge <aE>
                                                                     ## ! Flag
                                                                     ## <theCheckSplittable> defines whether to take into account
                                                                     ## ! the possibility to split the edge or not.
                                                                     ## ! @name Solid
                                                                     ## classification
                                                                     ## ! Returns true if the solid <theSolid> is inverted
                                                                     ## ! @name Edge/Face Deviation computation
                                                                     ## ! Computes the necessary value of the tolerance for the edge
                                                                     ## ! @name Other methods
                                                                     ## ! Makes empty container of requested type


proc dTolerance*(): cfloat {.importcpp: "BOPTools_AlgoTools::DTolerance(@)",
                          header: "BOPTools_AlgoTools.hxx".}
proc computeVV*(theV: TopoDS_Vertex; theP: Pnt; theTolP: cfloat): cint {.
    importcpp: "BOPTools_AlgoTools::ComputeVV(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc computeVV*(theV1: TopoDS_Vertex; theV2: TopoDS_Vertex;
               theFuzz: cfloat = confusion()): cint {.
    importcpp: "BOPTools_AlgoTools::ComputeVV(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeVertex*(theLV: TopToolsListOfShape; theV: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeNewVertex*(aP1: Pnt; aTol: cfloat; aNewVertex: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeNewVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeNewVertex*(aV1: TopoDS_Vertex; aV2: TopoDS_Vertex;
                   aNewVertex: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeNewVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeNewVertex*(aE1: TopoDS_Edge; aP1: cfloat; aE2: TopoDS_Edge; aP2: cfloat;
                   aNewVertex: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeNewVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeNewVertex*(aE1: TopoDS_Edge; aP1: cfloat; aF2: TopoDS_Face;
                   aNewVertex: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeNewVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc updateVertex*(aIC: IntToolsCurve; aT: cfloat; aV: TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::UpdateVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc updateVertex*(aE: TopoDS_Edge; aT: cfloat; aV: TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::UpdateVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc updateVertex*(aVF: TopoDS_Vertex; aVN: TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::UpdateVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeEdge*(theCurve: IntToolsCurve; theV1: TopoDS_Vertex; theT1: cfloat;
              theV2: TopoDS_Vertex; theT2: cfloat; theTolR3D: cfloat;
              theE: var TopoDS_Edge) {.importcpp: "BOPTools_AlgoTools::MakeEdge(@)",
                                    header: "BOPTools_AlgoTools.hxx".}
proc copyEdge*(theEdge: TopoDS_Edge): TopoDS_Edge {.
    importcpp: "BOPTools_AlgoTools::CopyEdge(@)", header: "BOPTools_AlgoTools.hxx".}
proc makeSplitEdge*(aE1: TopoDS_Edge; aV1: TopoDS_Vertex; aP1: cfloat;
                   aV2: TopoDS_Vertex; aP2: cfloat; aNewEdge: var TopoDS_Edge) {.
    importcpp: "BOPTools_AlgoTools::MakeSplitEdge(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeSectEdge*(aIC: IntToolsCurve; aV1: TopoDS_Vertex; aP1: cfloat;
                  aV2: TopoDS_Vertex; aP2: cfloat; aNewEdge: var TopoDS_Edge) {.
    importcpp: "BOPTools_AlgoTools::MakeSectEdge(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc computeState*(thePoint: Pnt; theSolid: TopoDS_Solid; theTol: cfloat;
                  theContext: Handle[IntToolsContext]): TopAbsState {.
    importcpp: "BOPTools_AlgoTools::ComputeState(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc computeState*(theVertex: TopoDS_Vertex; theSolid: TopoDS_Solid; theTol: cfloat;
                  theContext: Handle[IntToolsContext]): TopAbsState {.
    importcpp: "BOPTools_AlgoTools::ComputeState(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc computeState*(theEdge: TopoDS_Edge; theSolid: TopoDS_Solid; theTol: cfloat;
                  theContext: Handle[IntToolsContext]): TopAbsState {.
    importcpp: "BOPTools_AlgoTools::ComputeState(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc computeState*(theFace: TopoDS_Face; theSolid: TopoDS_Solid; theTol: cfloat;
                  theBounds: TopToolsIndexedMapOfShape;
                  theContext: Handle[IntToolsContext]): TopAbsState {.
    importcpp: "BOPTools_AlgoTools::ComputeState(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc computeStateByOnePoint*(theShape: TopoDS_Shape; theSolid: TopoDS_Solid;
                            theTol: cfloat; theContext: Handle[IntToolsContext]): TopAbsState {.
    importcpp: "BOPTools_AlgoTools::ComputeStateByOnePoint(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc getFaceOff*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
                theLCEF: var BOPToolsListOfCoupleOfShape;
                theFaceOff: var TopoDS_Face; theContext: Handle[IntToolsContext]): bool {.
    importcpp: "BOPTools_AlgoTools::GetFaceOff(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isInternalFace*(theFace: TopoDS_Face; theEdge: TopoDS_Edge;
                    theFace1: TopoDS_Face; theFace2: TopoDS_Face;
                    theContext: Handle[IntToolsContext]): cint {.
    importcpp: "BOPTools_AlgoTools::IsInternalFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isInternalFace*(theFace: TopoDS_Face; theEdge: TopoDS_Edge;
                    theLF: var TopToolsListOfShape;
                    theContext: Handle[IntToolsContext]): cint {.
    importcpp: "BOPTools_AlgoTools::IsInternalFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isInternalFace*(theFace: TopoDS_Face; theSolid: TopoDS_Solid;
                    theMEF: var TopToolsIndexedDataMapOfShapeListOfShape;
                    theTol: cfloat; theContext: Handle[IntToolsContext]): bool {.
    importcpp: "BOPTools_AlgoTools::IsInternalFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makePCurve*(theE: TopoDS_Edge; theF1: TopoDS_Face; theF2: TopoDS_Face;
                theCurve: IntToolsCurve; thePC1: bool; thePC2: bool;
                theContext: Handle[IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools::MakePCurve(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isHole*(theW: TopoDS_Shape; theF: TopoDS_Shape): bool {.
    importcpp: "BOPTools_AlgoTools::IsHole(@)", header: "BOPTools_AlgoTools.hxx".}
proc isSplitToReverse*(theSplit: TopoDS_Shape; theShape: TopoDS_Shape;
                      theContext: Handle[IntToolsContext];
                      theError: ptr cint = nil): bool {.
    importcpp: "BOPTools_AlgoTools::IsSplitToReverse(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isSplitToReverseWithWarn*(theSplit: TopoDS_Shape; theShape: TopoDS_Shape;
                              theContext: Handle[IntToolsContext];
                              theReport: Handle[MessageReport] = nil): bool {.
    importcpp: "BOPTools_AlgoTools::IsSplitToReverseWithWarn(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isSplitToReverse*(theSplit: TopoDS_Face; theShape: TopoDS_Face;
                      theContext: Handle[IntToolsContext];
                      theError: ptr cint = nil): bool {.
    importcpp: "BOPTools_AlgoTools::IsSplitToReverse(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isSplitToReverse*(theSplit: TopoDS_Edge; theShape: TopoDS_Edge;
                      theContext: Handle[IntToolsContext];
                      theError: ptr cint = nil): bool {.
    importcpp: "BOPTools_AlgoTools::IsSplitToReverse(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc sense*(theF1: TopoDS_Face; theF2: TopoDS_Face;
           theContext: Handle[IntToolsContext]): cint {.
    importcpp: "BOPTools_AlgoTools::Sense(@)", header: "BOPTools_AlgoTools.hxx".}
proc makeConnexityBlock*(theLS: var TopToolsListOfShape;
                        theMapAvoid: var TopToolsIndexedMapOfShape;
                        theLSCB: var TopToolsListOfShape;
                        theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "BOPTools_AlgoTools::MakeConnexityBlock(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeConnexityBlocks*(theS: TopoDS_Shape; theConnectionType: TopAbsShapeEnum;
                         theElementType: TopAbsShapeEnum;
                         theLCB: var TopToolsListOfShape) {.
    importcpp: "BOPTools_AlgoTools::MakeConnexityBlocks(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeConnexityBlocks*(theS: TopoDS_Shape; theConnectionType: TopAbsShapeEnum;
                         theElementType: TopAbsShapeEnum;
                         theLCB: var TopToolsListOfListOfShape; theConnectionMap: var TopToolsIndexedDataMapOfShapeListOfShape) {.
    importcpp: "BOPTools_AlgoTools::MakeConnexityBlocks(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeConnexityBlocks*(theLS: TopToolsListOfShape;
                         theConnectionType: TopAbsShapeEnum;
                         theElementType: TopAbsShapeEnum;
                         theLCB: var BOPToolsListOfConnexityBlock) {.
    importcpp: "BOPTools_AlgoTools::MakeConnexityBlocks(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc orientEdgesOnWire*(theWire: var TopoDS_Shape) {.
    importcpp: "BOPTools_AlgoTools::OrientEdgesOnWire(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc orientFacesOnShell*(theShell: var TopoDS_Shape) {.
    importcpp: "BOPTools_AlgoTools::OrientFacesOnShell(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc correctTolerances*(theS: TopoDS_Shape;
                       theMapToAvoid: TopToolsIndexedMapOfShape;
                       theTolMax: cfloat = 0.0001; theRunParallel: bool = false) {.
    importcpp: "BOPTools_AlgoTools::CorrectTolerances(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc correctCurveOnSurface*(theS: TopoDS_Shape;
                           theMapToAvoid: TopToolsIndexedMapOfShape;
                           theTolMax: cfloat = 0.0001; theRunParallel: bool = false) {.
    importcpp: "BOPTools_AlgoTools::CorrectCurveOnSurface(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc correctPointOnCurve*(theS: TopoDS_Shape;
                         theMapToAvoid: TopToolsIndexedMapOfShape;
                         theTolMax: cfloat = 0.0001; theRunParallel: bool = false) {.
    importcpp: "BOPTools_AlgoTools::CorrectPointOnCurve(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc correctShapeTolerances*(theS: TopoDS_Shape;
                            theMapToAvoid: TopToolsIndexedMapOfShape;
                            theRunParallel: bool = false) {.
    importcpp: "BOPTools_AlgoTools::CorrectShapeTolerances(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc areFacesSameDomain*(theF1: TopoDS_Face; theF2: TopoDS_Face;
                        theContext: Handle[IntToolsContext];
                        theFuzz: cfloat = confusion()): bool {.
    importcpp: "BOPTools_AlgoTools::AreFacesSameDomain(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc getEdgeOff*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
                theEdgeOff: var TopoDS_Edge): bool {.
    importcpp: "BOPTools_AlgoTools::GetEdgeOff(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc getEdgeOnFace*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
                   theEdgeOnF: var TopoDS_Edge): bool {.
    importcpp: "BOPTools_AlgoTools::GetEdgeOnFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc correctRange*(aE1: TopoDS_Edge; aE2: TopoDS_Edge; aSR: IntToolsRange;
                  aNewSR: var IntToolsRange) {.
    importcpp: "BOPTools_AlgoTools::CorrectRange(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc correctRange*(aE: TopoDS_Edge; aF: TopoDS_Face; aSR: IntToolsRange;
                  aNewSR: var IntToolsRange) {.
    importcpp: "BOPTools_AlgoTools::CorrectRange(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isMicroEdge*(theEdge: TopoDS_Edge; theContext: Handle[IntToolsContext];
                 theCheckSplittable: bool = true): bool {.
    importcpp: "BOPTools_AlgoTools::IsMicroEdge(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isInvertedSolid*(theSolid: TopoDS_Solid): bool {.
    importcpp: "BOPTools_AlgoTools::IsInvertedSolid(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc computeTolerance*(theFace: TopoDS_Face; theEdge: TopoDS_Edge;
                      theMaxDist: var cfloat; theMaxPar: var cfloat): bool {.
    importcpp: "BOPTools_AlgoTools::ComputeTolerance(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc makeContainer*(theType: TopAbsShapeEnum; theShape: var TopoDS_Shape) {.
    importcpp: "BOPTools_AlgoTools::MakeContainer(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc pointOnEdge*(aEdge: TopoDS_Edge; aPrm: cfloat; aP: var Pnt) {.
    importcpp: "BOPTools_AlgoTools::PointOnEdge(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isBlockInOnFace*(aShR: IntToolsRange; aF: TopoDS_Face; aE: TopoDS_Edge;
                     aContext: Handle[IntToolsContext]): bool {.
    importcpp: "BOPTools_AlgoTools::IsBlockInOnFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc dimensions*(theS: TopoDS_Shape; theDMin: var cint; theDMax: var cint) {.
    importcpp: "BOPTools_AlgoTools::Dimensions(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc dimension*(theS: TopoDS_Shape): cint {.importcpp: "BOPTools_AlgoTools::Dimension(@)",
                                        header: "BOPTools_AlgoTools.hxx".}
proc treatCompound*(theS: TopoDS_Shape; theList: var TopToolsListOfShape;
                   theMap: ptr TopToolsMapOfShape = nil) {.
    importcpp: "BOPTools_AlgoTools::TreatCompound(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc isOpenShell*(theShell: TopoDS_Shell): bool {.
    importcpp: "BOPTools_AlgoTools::IsOpenShell(@)",
    header: "BOPTools_AlgoTools.hxx".}

























