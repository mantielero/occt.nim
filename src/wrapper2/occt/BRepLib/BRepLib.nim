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


proc precision*(p: StandardReal) {.importcpp: "BRepLib::Precision(@)",
                                header: "BRepLib.hxx".}
proc precision*(): StandardReal {.importcpp: "BRepLib::Precision(@)",
                               header: "BRepLib.hxx".}
proc plane*(p: Handle[GeomPlane]) {.importcpp: "BRepLib::Plane(@)",
                                 header: "BRepLib.hxx".}
proc plane*(): Handle[GeomPlane] {.importcpp: "BRepLib::Plane(@)",
                                header: "BRepLib.hxx".}
proc checkSameRange*(e: TopoDS_Edge; confusion: StandardReal = 1.0e-12): StandardBoolean {.
    importcpp: "BRepLib::CheckSameRange(@)", header: "BRepLib.hxx".}
proc sameRange*(e: TopoDS_Edge; tolerance: StandardReal = 1.0e-5) {.
    importcpp: "BRepLib::SameRange(@)", header: "BRepLib.hxx".}
proc buildCurve3d*(e: TopoDS_Edge; tolerance: StandardReal = 1.0e-5;
                  continuity: GeomAbsShape = geomAbsC1;
                  maxDegree: StandardInteger = 14; maxSegment: StandardInteger = 0): StandardBoolean {.
    importcpp: "BRepLib::BuildCurve3d(@)", header: "BRepLib.hxx".}
proc buildCurves3d*(s: TopoDS_Shape; tolerance: StandardReal;
                   continuity: GeomAbsShape = geomAbsC1;
                   maxDegree: StandardInteger = 14; maxSegment: StandardInteger = 0): StandardBoolean {.
    importcpp: "BRepLib::BuildCurves3d(@)", header: "BRepLib.hxx".}
proc buildCurves3d*(s: TopoDS_Shape): StandardBoolean {.
    importcpp: "BRepLib::BuildCurves3d(@)", header: "BRepLib.hxx".}
proc buildPCurveForEdgeOnPlane*(theE: TopoDS_Edge; theF: TopoDS_Face) {.
    importcpp: "BRepLib::BuildPCurveForEdgeOnPlane(@)", header: "BRepLib.hxx".}
proc buildPCurveForEdgeOnPlane*(theE: TopoDS_Edge; theF: TopoDS_Face;
                               aC2D: var Handle[Geom2dCurve];
                               bToUpdate: var StandardBoolean) {.
    importcpp: "BRepLib::BuildPCurveForEdgeOnPlane(@)", header: "BRepLib.hxx".}
proc buildPCurveForEdgesOnPlane*[TCont](theLE: TCont; theF: TopoDS_Face) {.
    importcpp: "BRepLib::BuildPCurveForEdgesOnPlane(@)", header: "BRepLib.hxx".}
proc updateEdgeTol*(e: TopoDS_Edge; minToleranceRequest: StandardReal;
                   maxToleranceToCheck: StandardReal): StandardBoolean {.
    importcpp: "BRepLib::UpdateEdgeTol(@)", header: "BRepLib.hxx".}
proc updateEdgeTolerance*(s: TopoDS_Shape; minToleranceRequest: StandardReal;
                         maxToleranceToCheck: StandardReal): StandardBoolean {.
    importcpp: "BRepLib::UpdateEdgeTolerance(@)", header: "BRepLib.hxx".}
proc sameParameter*(theEdge: TopoDS_Edge; tolerance: StandardReal = 1.0e-5) {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc sameParameter*(theEdge: TopoDS_Edge; theTolerance: StandardReal;
                   theNewTol: var StandardReal; isUseOldEdge: StandardBoolean): TopoDS_Edge {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc sameParameter*(s: TopoDS_Shape; tolerance: StandardReal = 1.0e-5;
                   forced: StandardBoolean = standardFalse) {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc sameParameter*(s: TopoDS_Shape; theReshaper: var BRepToolsReShape;
                   tolerance: StandardReal = 1.0e-5;
                   forced: StandardBoolean = standardFalse) {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc updateTolerances*(s: TopoDS_Shape;
                      verifyFaceTolerance: StandardBoolean = standardFalse) {.
    importcpp: "BRepLib::UpdateTolerances(@)", header: "BRepLib.hxx".}
proc updateTolerances*(s: TopoDS_Shape; theReshaper: var BRepToolsReShape;
                      verifyFaceTolerance: StandardBoolean = standardFalse) {.
    importcpp: "BRepLib::UpdateTolerances(@)", header: "BRepLib.hxx".}
proc updateInnerTolerances*(s: TopoDS_Shape) {.
    importcpp: "BRepLib::UpdateInnerTolerances(@)", header: "BRepLib.hxx".}
proc orientClosedSolid*(solid: var TopoDS_Solid): StandardBoolean {.
    importcpp: "BRepLib::OrientClosedSolid(@)", header: "BRepLib.hxx".}
proc encodeRegularity*(s: TopoDS_Shape; tolAng: StandardReal = 1.0e-10) {.
    importcpp: "BRepLib::EncodeRegularity(@)", header: "BRepLib.hxx".}
proc encodeRegularity*(s: TopoDS_Shape; le: TopToolsListOfShape;
                      tolAng: StandardReal = 1.0e-10) {.
    importcpp: "BRepLib::EncodeRegularity(@)", header: "BRepLib.hxx".}
proc encodeRegularity*(e: var TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face;
                      tolAng: StandardReal = 1.0e-10) {.
    importcpp: "BRepLib::EncodeRegularity(@)", header: "BRepLib.hxx".}
proc sortFaces*(s: TopoDS_Shape; lf: var TopToolsListOfShape) {.
    importcpp: "BRepLib::SortFaces(@)", header: "BRepLib.hxx".}
proc reverseSortFaces*(s: TopoDS_Shape; lf: var TopToolsListOfShape) {.
    importcpp: "BRepLib::ReverseSortFaces(@)", header: "BRepLib.hxx".}
proc ensureNormalConsistency*(s: TopoDS_Shape; theAngTol: StandardReal = 0.001;
    forceComputeNormals: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "BRepLib::EnsureNormalConsistency(@)", header: "BRepLib.hxx".}
proc boundingVertex*(theLV: NCollectionList[TopoDS_Shape]; theNewCenter: var GpPnt;
                    theNewTol: var StandardReal) {.
    importcpp: "BRepLib::BoundingVertex(@)", header: "BRepLib.hxx".}
proc findValidRange*(theCurve: Adaptor3dCurve; theTolE: StandardReal;
                    theParV1: StandardReal; thePntV1: GpPnt; theTolV1: StandardReal;
                    theParV2: StandardReal; thePntV2: GpPnt; theTolV2: StandardReal;
                    theFirst: var StandardReal; theLast: var StandardReal): StandardBoolean {.
    importcpp: "BRepLib::FindValidRange(@)", header: "BRepLib.hxx".}
proc findValidRange*(theEdge: TopoDS_Edge; theFirst: var StandardReal;
                    theLast: var StandardReal): StandardBoolean {.
    importcpp: "BRepLib::FindValidRange(@)", header: "BRepLib.hxx".}
proc extendFace*(theF: TopoDS_Face; theExtVal: StandardReal;
                theExtUMin: StandardBoolean; theExtUMax: StandardBoolean;
                theExtVMin: StandardBoolean; theExtVMax: StandardBoolean;
                theFExtended: var TopoDS_Face) {.
    importcpp: "BRepLib::ExtendFace(@)", header: "BRepLib.hxx".}

