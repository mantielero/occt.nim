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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  BOPTools_ListOfCoupleOfShape, BOPTools_ListOfConnexityBlock,
  ../NCollection/NCollection_BaseAllocator, ../TopAbs/TopAbs_State,
  ../TopAbs/TopAbs_ShapeEnum,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_IndexedMapOfShape, ../TopTools/TopTools_MapOfShape,
  ../TopTools/TopTools_ListOfListOfShape, ../TopTools/TopTools_ListOfShape,
  ../Precision/Precision

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
  BOPTools_AlgoTools* {.importcpp: "BOPTools_AlgoTools",
                       header: "BOPTools_AlgoTools.hxx", bycopy.} = object ## ! @name Constants
                                                                      ## ! Additional tolerance (delta tolerance) is used in Boolean Operations
                                                                      ## ! to ensure that the tolerance of new/old entities obtained
                                                                      ## ! by
                                                                      ## intersection of two shapes is slightly bigger than the actual
                                                                      ## ! distances to these shapes. It helps to avoid numerical
                                                                      ## instability
                                                                      ## ! which may occur when comparing distances and
                                                                      ## tolerances.
                                                                      ## ! @name
                                                                      ## Intersection of the vertices
                                                                      ## ! Intersects the vertex <theV1> with the point <theP> with tolerance <theTolP>.
                                                                      ## ! Returns the error status:
                                                                      ## ! - 0 - no error, meaning that the vertex intersects the point;
                                                                      ## ! - 1 - the distance between vertex and point is grater than the sum of
                                                                      ## tolerances.
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
                                                                      ## ! theTol - value of precision of
                                                                      ## computation
                                                                      ## !
                                                                      ## theContext- cahed
                                                                      ## geometrical tools
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
                                                                      ## <theContext> - storage for caching the
                                                                      ## geometrical tools
                                                                      ## ! @name Wire
                                                                      ## classification relatively face
                                                                      ## ! Checks if the wire is a hole for the face.
                                                                      ## ! @name Choosing correct
                                                                      ## orientation for the split shape
                                                                      ## ! Checks if the direction of the split shape is opposite to
                                                                      ## ! the direction of the original shape.
                                                                      ## ! The method is an overload for
                                                                      ## (Edge,Edge) and
                                                                      ## (Face,Face)
                                                                      ## corresponding
                                                                      ## ! methods and checks only these types of shapes.
                                                                      ## ! For faces the method checks if normal directions are opposite.
                                                                      ## ! For edges the method checks if tangent vectors are opposite.
                                                                      ## !
                                                                      ## ! In case the directions do not coincide, it returns TRUE, meaning
                                                                      ## ! that split shape has to be reversed to match the direction of the
                                                                      ## ! original shape.
                                                                      ## !
                                                                      ## ! If requested
                                                                      ## (<theError> is not null), the method returns the status of the operation:
                                                                      ## ! - 0 - no error;
                                                                      ## ! - Error from
                                                                      ## (Edge,Edge) or
                                                                      ## (Face,Face)
                                                                      ## corresponding method
                                                                      ## ! - 100 - bad types.
                                                                      ## ! In case of any error the method always returns FALSE.
                                                                      ## !
                                                                      ## ! @param theSplit [in] Split shape
                                                                      ## ! @param theShape [in] Original shape
                                                                      ## ! @param theContext [in] Cashed
                                                                      ## geometrical tools
                                                                      ## ! @param theError [out] Error Status of the operation
                                                                      ## ! @name Making connexity blocks
                                                                      ## ! For the list of faces theLS build block
                                                                      ## ! theLSCB in terms of connexity by edges
                                                                      ## !
                                                                      ## theMapAvoid - set of edges to avoid for
                                                                      ## ! the treatment
                                                                      ## ! @name Orienting elements in container
                                                                      ## ! Correctly orients edges on the wire
                                                                      ## ! @name Methods for shape validation
                                                                      ## (correction)
                                                                      ## ! Provides valid values of tolerances for the shape <theS>
                                                                      ## !
                                                                      ## <theTolMax> is max value of the tolerance that can be
                                                                      ## ! accepted for
                                                                      ## correction.  If real value of the tolerance
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
                                                                      ## ! the
                                                                      ## possibility to split the edge or not.
                                                                      ## ! @name Solid
                                                                      ## classification
                                                                      ## ! Returns true if the solid <theSolid> is inverted
                                                                      ## ! @name Edge/Face Deviation
                                                                      ## computation
                                                                      ## ! Computes the necessary value of the tolerance for the edge
                                                                      ## ! @name Other methods
                                                                      ## ! Makes empty container of requested type


proc DTolerance*(): Standard_Real {.importcpp: "BOPTools_AlgoTools::DTolerance(@)",
                                 header: "BOPTools_AlgoTools.hxx".}
proc ComputeVV*(theV: TopoDS_Vertex; theP: gp_Pnt; theTolP: Standard_Real): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools::ComputeVV(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc ComputeVV*(theV1: TopoDS_Vertex; theV2: TopoDS_Vertex;
               theFuzz: Standard_Real = Confusion()): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools::ComputeVV(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeVertex*(theLV: TopTools_ListOfShape; theV: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeNewVertex*(aP1: gp_Pnt; aTol: Standard_Real; aNewVertex: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeNewVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeNewVertex*(aV1: TopoDS_Vertex; aV2: TopoDS_Vertex;
                   aNewVertex: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeNewVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeNewVertex*(aE1: TopoDS_Edge; aP1: Standard_Real; aE2: TopoDS_Edge;
                   aP2: Standard_Real; aNewVertex: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeNewVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeNewVertex*(aE1: TopoDS_Edge; aP1: Standard_Real; aF2: TopoDS_Face;
                   aNewVertex: var TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::MakeNewVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc UpdateVertex*(aIC: IntTools_Curve; aT: Standard_Real; aV: TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::UpdateVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc UpdateVertex*(aE: TopoDS_Edge; aT: Standard_Real; aV: TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::UpdateVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc UpdateVertex*(aVF: TopoDS_Vertex; aVN: TopoDS_Vertex) {.
    importcpp: "BOPTools_AlgoTools::UpdateVertex(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeEdge*(theCurve: IntTools_Curve; theV1: TopoDS_Vertex; theT1: Standard_Real;
              theV2: TopoDS_Vertex; theT2: Standard_Real; theTolR3D: Standard_Real;
              theE: var TopoDS_Edge) {.importcpp: "BOPTools_AlgoTools::MakeEdge(@)",
                                    header: "BOPTools_AlgoTools.hxx".}
proc CopyEdge*(theEdge: TopoDS_Edge): TopoDS_Edge {.
    importcpp: "BOPTools_AlgoTools::CopyEdge(@)", header: "BOPTools_AlgoTools.hxx".}
proc MakeSplitEdge*(aE1: TopoDS_Edge; aV1: TopoDS_Vertex; aP1: Standard_Real;
                   aV2: TopoDS_Vertex; aP2: Standard_Real; aNewEdge: var TopoDS_Edge) {.
    importcpp: "BOPTools_AlgoTools::MakeSplitEdge(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeSectEdge*(aIC: IntTools_Curve; aV1: TopoDS_Vertex; aP1: Standard_Real;
                  aV2: TopoDS_Vertex; aP2: Standard_Real; aNewEdge: var TopoDS_Edge) {.
    importcpp: "BOPTools_AlgoTools::MakeSectEdge(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc ComputeState*(thePoint: gp_Pnt; theSolid: TopoDS_Solid; theTol: Standard_Real;
                  theContext: handle[IntTools_Context]): TopAbs_State {.
    importcpp: "BOPTools_AlgoTools::ComputeState(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc ComputeState*(theVertex: TopoDS_Vertex; theSolid: TopoDS_Solid;
                  theTol: Standard_Real; theContext: handle[IntTools_Context]): TopAbs_State {.
    importcpp: "BOPTools_AlgoTools::ComputeState(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc ComputeState*(theEdge: TopoDS_Edge; theSolid: TopoDS_Solid;
                  theTol: Standard_Real; theContext: handle[IntTools_Context]): TopAbs_State {.
    importcpp: "BOPTools_AlgoTools::ComputeState(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc ComputeState*(theFace: TopoDS_Face; theSolid: TopoDS_Solid;
                  theTol: Standard_Real; theBounds: TopTools_IndexedMapOfShape;
                  theContext: handle[IntTools_Context]): TopAbs_State {.
    importcpp: "BOPTools_AlgoTools::ComputeState(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc ComputeStateByOnePoint*(theShape: TopoDS_Shape; theSolid: TopoDS_Solid;
                            theTol: Standard_Real;
                            theContext: handle[IntTools_Context]): TopAbs_State {.
    importcpp: "BOPTools_AlgoTools::ComputeStateByOnePoint(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc GetFaceOff*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
                theLCEF: var BOPTools_ListOfCoupleOfShape;
                theFaceOff: var TopoDS_Face; theContext: handle[IntTools_Context]): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::GetFaceOff(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsInternalFace*(theFace: TopoDS_Face; theEdge: TopoDS_Edge;
                    theFace1: TopoDS_Face; theFace2: TopoDS_Face;
                    theContext: handle[IntTools_Context]): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools::IsInternalFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsInternalFace*(theFace: TopoDS_Face; theEdge: TopoDS_Edge;
                    theLF: var TopTools_ListOfShape;
                    theContext: handle[IntTools_Context]): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools::IsInternalFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsInternalFace*(theFace: TopoDS_Face; theSolid: TopoDS_Solid;
                    theMEF: var TopTools_IndexedDataMapOfShapeListOfShape;
                    theTol: Standard_Real; theContext: handle[IntTools_Context]): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsInternalFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakePCurve*(theE: TopoDS_Edge; theF1: TopoDS_Face; theF2: TopoDS_Face;
                theCurve: IntTools_Curve; thePC1: Standard_Boolean;
                thePC2: Standard_Boolean; theContext: handle[IntTools_Context] = handle[
    IntTools_Context]()) {.importcpp: "BOPTools_AlgoTools::MakePCurve(@)",
                          header: "BOPTools_AlgoTools.hxx".}
proc IsHole*(theW: TopoDS_Shape; theF: TopoDS_Shape): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsHole(@)", header: "BOPTools_AlgoTools.hxx".}
proc IsSplitToReverse*(theSplit: TopoDS_Shape; theShape: TopoDS_Shape;
                      theContext: handle[IntTools_Context];
                      theError: ptr Standard_Integer = nil): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsSplitToReverse(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsSplitToReverseWithWarn*(theSplit: TopoDS_Shape; theShape: TopoDS_Shape;
                              theContext: handle[IntTools_Context];
                              theReport: handle[Message_Report] = nil): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsSplitToReverseWithWarn(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsSplitToReverse*(theSplit: TopoDS_Face; theShape: TopoDS_Face;
                      theContext: handle[IntTools_Context];
                      theError: ptr Standard_Integer = nil): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsSplitToReverse(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsSplitToReverse*(theSplit: TopoDS_Edge; theShape: TopoDS_Edge;
                      theContext: handle[IntTools_Context];
                      theError: ptr Standard_Integer = nil): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsSplitToReverse(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc Sense*(theF1: TopoDS_Face; theF2: TopoDS_Face;
           theContext: handle[IntTools_Context]): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools::Sense(@)", header: "BOPTools_AlgoTools.hxx".}
proc MakeConnexityBlock*(theLS: var TopTools_ListOfShape;
                        theMapAvoid: var TopTools_IndexedMapOfShape;
                        theLSCB: var TopTools_ListOfShape;
                        theAllocator: handle[NCollection_BaseAllocator]) {.
    importcpp: "BOPTools_AlgoTools::MakeConnexityBlock(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeConnexityBlocks*(theS: TopoDS_Shape; theConnectionType: TopAbs_ShapeEnum;
                         theElementType: TopAbs_ShapeEnum;
                         theLCB: var TopTools_ListOfShape) {.
    importcpp: "BOPTools_AlgoTools::MakeConnexityBlocks(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeConnexityBlocks*(theS: TopoDS_Shape; theConnectionType: TopAbs_ShapeEnum;
                         theElementType: TopAbs_ShapeEnum;
                         theLCB: var TopTools_ListOfListOfShape; theConnectionMap: var TopTools_IndexedDataMapOfShapeListOfShape) {.
    importcpp: "BOPTools_AlgoTools::MakeConnexityBlocks(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeConnexityBlocks*(theLS: TopTools_ListOfShape;
                         theConnectionType: TopAbs_ShapeEnum;
                         theElementType: TopAbs_ShapeEnum;
                         theLCB: var BOPTools_ListOfConnexityBlock) {.
    importcpp: "BOPTools_AlgoTools::MakeConnexityBlocks(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc OrientEdgesOnWire*(theWire: var TopoDS_Shape) {.
    importcpp: "BOPTools_AlgoTools::OrientEdgesOnWire(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc OrientFacesOnShell*(theShell: var TopoDS_Shape) {.
    importcpp: "BOPTools_AlgoTools::OrientFacesOnShell(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc CorrectTolerances*(theS: TopoDS_Shape;
                       theMapToAvoid: TopTools_IndexedMapOfShape;
                       theTolMax: Standard_Real = 0.0001;
                       theRunParallel: Standard_Boolean = Standard_False) {.
    importcpp: "BOPTools_AlgoTools::CorrectTolerances(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc CorrectCurveOnSurface*(theS: TopoDS_Shape;
                           theMapToAvoid: TopTools_IndexedMapOfShape;
                           theTolMax: Standard_Real = 0.0001;
                           theRunParallel: Standard_Boolean = Standard_False) {.
    importcpp: "BOPTools_AlgoTools::CorrectCurveOnSurface(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc CorrectPointOnCurve*(theS: TopoDS_Shape;
                         theMapToAvoid: TopTools_IndexedMapOfShape;
                         theTolMax: Standard_Real = 0.0001;
                         theRunParallel: Standard_Boolean = Standard_False) {.
    importcpp: "BOPTools_AlgoTools::CorrectPointOnCurve(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc CorrectShapeTolerances*(theS: TopoDS_Shape;
                            theMapToAvoid: TopTools_IndexedMapOfShape;
                            theRunParallel: Standard_Boolean = Standard_False) {.
    importcpp: "BOPTools_AlgoTools::CorrectShapeTolerances(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc AreFacesSameDomain*(theF1: TopoDS_Face; theF2: TopoDS_Face;
                        theContext: handle[IntTools_Context];
                        theFuzz: Standard_Real = Confusion()): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::AreFacesSameDomain(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc GetEdgeOff*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
                theEdgeOff: var TopoDS_Edge): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::GetEdgeOff(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc GetEdgeOnFace*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
                   theEdgeOnF: var TopoDS_Edge): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::GetEdgeOnFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc CorrectRange*(aE1: TopoDS_Edge; aE2: TopoDS_Edge; aSR: IntTools_Range;
                  aNewSR: var IntTools_Range) {.
    importcpp: "BOPTools_AlgoTools::CorrectRange(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc CorrectRange*(aE: TopoDS_Edge; aF: TopoDS_Face; aSR: IntTools_Range;
                  aNewSR: var IntTools_Range) {.
    importcpp: "BOPTools_AlgoTools::CorrectRange(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsMicroEdge*(theEdge: TopoDS_Edge; theContext: handle[IntTools_Context];
                 theCheckSplittable: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsMicroEdge(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsInvertedSolid*(theSolid: TopoDS_Solid): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsInvertedSolid(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc ComputeTolerance*(theFace: TopoDS_Face; theEdge: TopoDS_Edge;
                      theMaxDist: var Standard_Real; theMaxPar: var Standard_Real): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::ComputeTolerance(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc MakeContainer*(theType: TopAbs_ShapeEnum; theShape: var TopoDS_Shape) {.
    importcpp: "BOPTools_AlgoTools::MakeContainer(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc PointOnEdge*(aEdge: TopoDS_Edge; aPrm: Standard_Real; aP: var gp_Pnt) {.
    importcpp: "BOPTools_AlgoTools::PointOnEdge(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsBlockInOnFace*(aShR: IntTools_Range; aF: TopoDS_Face; aE: TopoDS_Edge;
                     aContext: handle[IntTools_Context]): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsBlockInOnFace(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc Dimensions*(theS: TopoDS_Shape; theDMin: var Standard_Integer;
                theDMax: var Standard_Integer) {.
    importcpp: "BOPTools_AlgoTools::Dimensions(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc Dimension*(theS: TopoDS_Shape): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools::Dimension(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc TreatCompound*(theS: TopoDS_Shape; theList: var TopTools_ListOfShape;
                   theMap: ptr TopTools_MapOfShape = nil) {.
    importcpp: "BOPTools_AlgoTools::TreatCompound(@)",
    header: "BOPTools_AlgoTools.hxx".}
proc IsOpenShell*(theShell: TopoDS_Shell): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools::IsOpenShell(@)",
    header: "BOPTools_AlgoTools.hxx".}