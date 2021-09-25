##  Created on: 1993-12-15
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Geom_Plane"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepLib_Command"
discard "forward decl of BRepLib_MakeShape"
discard "forward decl of BRepLib_MakeVertex"
discard "forward decl of BRepLib_MakeEdge"
discard "forward decl of BRepLib_MakeEdge2d"
discard "forward decl of BRepLib_MakePolygon"
discard "forward decl of BRepLib_MakeFace"
discard "forward decl of BRepLib_MakeWire"
discard "forward decl of BRepLib_MakeShell"
discard "forward decl of BRepLib_MakeSolid"
discard "forward decl of BRepLib_FindSurface"
discard "forward decl of BRepLib_FuseEdges"
discard "forward decl of BRepLib_CheckCurveOnSurface"
discard "forward decl of BRepTools_ReShape"
type
  BRepLib* {.importcpp: "BRepLib", header: "BRepLib.hxx", bycopy.} = object ## ! Computes the max distance between edge
                                                                    ## ! and its 2d
                                                                    ## representation on the face.
                                                                    ## ! Sets the default precision.  The current Precision
                                                                    ## ! is returned.


proc precision*(p: float) {.importcpp: "BRepLib::Precision(@)", header: "BRepLib.hxx".}
proc precision*(): float {.importcpp: "BRepLib::Precision(@)", header: "BRepLib.hxx".}
proc plane*(p: Handle[GeomPlane]) {.importcpp: "BRepLib::Plane(@)",
                                 header: "BRepLib.hxx".}
proc plane*(): Handle[GeomPlane] {.importcpp: "BRepLib::Plane(@)",
                                header: "BRepLib.hxx".}
proc checkSameRange*(e: TopoDS_Edge; confusion: float = 1.0e-12): bool {.
    importcpp: "BRepLib::CheckSameRange(@)", header: "BRepLib.hxx".}
proc sameRange*(e: TopoDS_Edge; tolerance: float = 1.0e-5) {.
    importcpp: "BRepLib::SameRange(@)", header: "BRepLib.hxx".}
proc buildCurve3d*(e: TopoDS_Edge; tolerance: float = 1.0e-5;
                  continuity: GeomAbsShape = geomAbsC1; maxDegree: int = 14;
                  maxSegment: int = 0): bool {.importcpp: "BRepLib::BuildCurve3d(@)",
    header: "BRepLib.hxx".}
proc buildCurves3d*(s: TopoDS_Shape; tolerance: float;
                   continuity: GeomAbsShape = geomAbsC1; maxDegree: int = 14;
                   maxSegment: int = 0): bool {.
    importcpp: "BRepLib::BuildCurves3d(@)", header: "BRepLib.hxx".}
proc buildCurves3d*(s: TopoDS_Shape): bool {.importcpp: "BRepLib::BuildCurves3d(@)",
    header: "BRepLib.hxx".}
proc buildPCurveForEdgeOnPlane*(theE: TopoDS_Edge; theF: TopoDS_Face) {.
    importcpp: "BRepLib::BuildPCurveForEdgeOnPlane(@)", header: "BRepLib.hxx".}
proc buildPCurveForEdgeOnPlane*(theE: TopoDS_Edge; theF: TopoDS_Face;
                               aC2D: var Handle[Geom2dCurve]; bToUpdate: var bool) {.
    importcpp: "BRepLib::BuildPCurveForEdgeOnPlane(@)", header: "BRepLib.hxx".}
proc buildPCurveForEdgesOnPlane*[TCont](theLE: TCont; theF: TopoDS_Face) {.
    importcpp: "BRepLib::BuildPCurveForEdgesOnPlane(@)", header: "BRepLib.hxx".}
proc updateEdgeTol*(e: TopoDS_Edge; minToleranceRequest: float;
                   maxToleranceToCheck: float): bool {.
    importcpp: "BRepLib::UpdateEdgeTol(@)", header: "BRepLib.hxx".}
proc updateEdgeTolerance*(s: TopoDS_Shape; minToleranceRequest: float;
                         maxToleranceToCheck: float): bool {.
    importcpp: "BRepLib::UpdateEdgeTolerance(@)", header: "BRepLib.hxx".}
proc sameParameter*(theEdge: TopoDS_Edge; tolerance: float = 1.0e-5) {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc sameParameter*(theEdge: TopoDS_Edge; theTolerance: float; theNewTol: var float;
                   isUseOldEdge: bool): TopoDS_Edge {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc sameParameter*(s: TopoDS_Shape; tolerance: float = 1.0e-5; forced: bool = false) {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc sameParameter*(s: TopoDS_Shape; theReshaper: var BRepToolsReShape;
                   tolerance: float = 1.0e-5; forced: bool = false) {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc updateTolerances*(s: TopoDS_Shape; verifyFaceTolerance: bool = false) {.
    importcpp: "BRepLib::UpdateTolerances(@)", header: "BRepLib.hxx".}
proc updateTolerances*(s: TopoDS_Shape; theReshaper: var BRepToolsReShape;
                      verifyFaceTolerance: bool = false) {.
    importcpp: "BRepLib::UpdateTolerances(@)", header: "BRepLib.hxx".}
proc updateInnerTolerances*(s: TopoDS_Shape) {.
    importcpp: "BRepLib::UpdateInnerTolerances(@)", header: "BRepLib.hxx".}
proc orientClosedSolid*(solid: var TopoDS_Solid): bool {.
    importcpp: "BRepLib::OrientClosedSolid(@)", header: "BRepLib.hxx".}
proc encodeRegularity*(s: TopoDS_Shape; tolAng: float = 1.0e-10) {.
    importcpp: "BRepLib::EncodeRegularity(@)", header: "BRepLib.hxx".}
proc encodeRegularity*(s: TopoDS_Shape; le: TopToolsListOfShape;
                      tolAng: float = 1.0e-10) {.
    importcpp: "BRepLib::EncodeRegularity(@)", header: "BRepLib.hxx".}
proc encodeRegularity*(e: var TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face;
                      tolAng: float = 1.0e-10) {.
    importcpp: "BRepLib::EncodeRegularity(@)", header: "BRepLib.hxx".}
proc sortFaces*(s: TopoDS_Shape; lf: var TopToolsListOfShape) {.
    importcpp: "BRepLib::SortFaces(@)", header: "BRepLib.hxx".}
proc reverseSortFaces*(s: TopoDS_Shape; lf: var TopToolsListOfShape) {.
    importcpp: "BRepLib::ReverseSortFaces(@)", header: "BRepLib.hxx".}
proc ensureNormalConsistency*(s: TopoDS_Shape; theAngTol: float = 0.001;
                             forceComputeNormals: bool = false): bool {.
    importcpp: "BRepLib::EnsureNormalConsistency(@)", header: "BRepLib.hxx".}
proc boundingVertex*(theLV: NCollectionList[TopoDS_Shape]; theNewCenter: var Pnt;
                    theNewTol: var float) {.
    importcpp: "BRepLib::BoundingVertex(@)", header: "BRepLib.hxx".}
proc findValidRange*(theCurve: Adaptor3dCurve; theTolE: float; theParV1: float;
                    thePntV1: Pnt; theTolV1: float; theParV2: float; thePntV2: Pnt;
                    theTolV2: float; theFirst: var float; theLast: var float): bool {.
    importcpp: "BRepLib::FindValidRange(@)", header: "BRepLib.hxx".}
proc findValidRange*(theEdge: TopoDS_Edge; theFirst: var float; theLast: var float): bool {.
    importcpp: "BRepLib::FindValidRange(@)", header: "BRepLib.hxx".}
proc extendFace*(theF: TopoDS_Face; theExtVal: float; theExtUMin: bool;
                theExtUMax: bool; theExtVMin: bool; theExtVMax: bool;
                theFExtended: var TopoDS_Face) {.
    importcpp: "BRepLib::ExtendFace(@)", header: "BRepLib.hxx".}
