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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TopoDS/TopoDS, ../TopoDS/TopoDS_Edge,
  ../TopTools/TopTools_ListOfShape, ../NCollection/NCollection_List

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


proc Precision*(P: Standard_Real) {.importcpp: "BRepLib::Precision(@)",
                                 header: "BRepLib.hxx".}
proc Precision*(): Standard_Real {.importcpp: "BRepLib::Precision(@)",
                                header: "BRepLib.hxx".}
proc Plane*(P: handle[Geom_Plane]) {.importcpp: "BRepLib::Plane(@)",
                                  header: "BRepLib.hxx".}
proc Plane*(): handle[Geom_Plane] {.importcpp: "BRepLib::Plane(@)",
                                 header: "BRepLib.hxx".}
proc CheckSameRange*(E: TopoDS_Edge; Confusion: Standard_Real = 1.0e-12): Standard_Boolean {.
    importcpp: "BRepLib::CheckSameRange(@)", header: "BRepLib.hxx".}
proc SameRange*(E: TopoDS_Edge; Tolerance: Standard_Real = 1.0e-5) {.
    importcpp: "BRepLib::SameRange(@)", header: "BRepLib.hxx".}
proc BuildCurve3d*(E: TopoDS_Edge; Tolerance: Standard_Real = 1.0e-5;
                  Continuity: GeomAbs_Shape = GeomAbs_C1;
                  MaxDegree: Standard_Integer = 14; MaxSegment: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "BRepLib::BuildCurve3d(@)", header: "BRepLib.hxx".}
proc BuildCurves3d*(S: TopoDS_Shape; Tolerance: Standard_Real;
                   Continuity: GeomAbs_Shape = GeomAbs_C1;
                   MaxDegree: Standard_Integer = 14;
                   MaxSegment: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "BRepLib::BuildCurves3d(@)", header: "BRepLib.hxx".}
proc BuildCurves3d*(S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "BRepLib::BuildCurves3d(@)", header: "BRepLib.hxx".}
proc BuildPCurveForEdgeOnPlane*(theE: TopoDS_Edge; theF: TopoDS_Face) {.
    importcpp: "BRepLib::BuildPCurveForEdgeOnPlane(@)", header: "BRepLib.hxx".}
proc BuildPCurveForEdgeOnPlane*(theE: TopoDS_Edge; theF: TopoDS_Face;
                               aC2D: var handle[Geom2d_Curve];
                               bToUpdate: var Standard_Boolean) {.
    importcpp: "BRepLib::BuildPCurveForEdgeOnPlane(@)", header: "BRepLib.hxx".}
proc BuildPCurveForEdgesOnPlane*[TCont](theLE: TCont; theF: TopoDS_Face) {.
    importcpp: "BRepLib::BuildPCurveForEdgesOnPlane(@)", header: "BRepLib.hxx".}
proc UpdateEdgeTol*(E: TopoDS_Edge; MinToleranceRequest: Standard_Real;
                   MaxToleranceToCheck: Standard_Real): Standard_Boolean {.
    importcpp: "BRepLib::UpdateEdgeTol(@)", header: "BRepLib.hxx".}
proc UpdateEdgeTolerance*(S: TopoDS_Shape; MinToleranceRequest: Standard_Real;
                         MaxToleranceToCheck: Standard_Real): Standard_Boolean {.
    importcpp: "BRepLib::UpdateEdgeTolerance(@)", header: "BRepLib.hxx".}
proc SameParameter*(theEdge: TopoDS_Edge; Tolerance: Standard_Real = 1.0e-5) {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc SameParameter*(theEdge: TopoDS_Edge; theTolerance: Standard_Real;
                   theNewTol: var Standard_Real; IsUseOldEdge: Standard_Boolean): TopoDS_Edge {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc SameParameter*(S: TopoDS_Shape; Tolerance: Standard_Real = 1.0e-5;
                   forced: Standard_Boolean = Standard_False) {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc SameParameter*(S: TopoDS_Shape; theReshaper: var BRepTools_ReShape;
                   Tolerance: Standard_Real = 1.0e-5;
                   forced: Standard_Boolean = Standard_False) {.
    importcpp: "BRepLib::SameParameter(@)", header: "BRepLib.hxx".}
proc UpdateTolerances*(S: TopoDS_Shape;
                      verifyFaceTolerance: Standard_Boolean = Standard_False) {.
    importcpp: "BRepLib::UpdateTolerances(@)", header: "BRepLib.hxx".}
proc UpdateTolerances*(S: TopoDS_Shape; theReshaper: var BRepTools_ReShape;
                      verifyFaceTolerance: Standard_Boolean = Standard_False) {.
    importcpp: "BRepLib::UpdateTolerances(@)", header: "BRepLib.hxx".}
proc UpdateInnerTolerances*(S: TopoDS_Shape) {.
    importcpp: "BRepLib::UpdateInnerTolerances(@)", header: "BRepLib.hxx".}
proc OrientClosedSolid*(solid: var TopoDS_Solid): Standard_Boolean {.
    importcpp: "BRepLib::OrientClosedSolid(@)", header: "BRepLib.hxx".}
proc EncodeRegularity*(S: TopoDS_Shape; TolAng: Standard_Real = 1.0e-10) {.
    importcpp: "BRepLib::EncodeRegularity(@)", header: "BRepLib.hxx".}
proc EncodeRegularity*(S: TopoDS_Shape; LE: TopTools_ListOfShape;
                      TolAng: Standard_Real = 1.0e-10) {.
    importcpp: "BRepLib::EncodeRegularity(@)", header: "BRepLib.hxx".}
proc EncodeRegularity*(E: var TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face;
                      TolAng: Standard_Real = 1.0e-10) {.
    importcpp: "BRepLib::EncodeRegularity(@)", header: "BRepLib.hxx".}
proc SortFaces*(S: TopoDS_Shape; LF: var TopTools_ListOfShape) {.
    importcpp: "BRepLib::SortFaces(@)", header: "BRepLib.hxx".}
proc ReverseSortFaces*(S: TopoDS_Shape; LF: var TopTools_ListOfShape) {.
    importcpp: "BRepLib::ReverseSortFaces(@)", header: "BRepLib.hxx".}
proc EnsureNormalConsistency*(S: TopoDS_Shape; theAngTol: Standard_Real = 0.001;
    ForceComputeNormals: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BRepLib::EnsureNormalConsistency(@)", header: "BRepLib.hxx".}
proc BoundingVertex*(theLV: NCollection_List[TopoDS_Shape];
                    theNewCenter: var gp_Pnt; theNewTol: var Standard_Real) {.
    importcpp: "BRepLib::BoundingVertex(@)", header: "BRepLib.hxx".}
proc FindValidRange*(theCurve: Adaptor3d_Curve; theTolE: Standard_Real;
                    theParV1: Standard_Real; thePntV1: gp_Pnt;
                    theTolV1: Standard_Real; theParV2: Standard_Real;
                    thePntV2: gp_Pnt; theTolV2: Standard_Real;
                    theFirst: var Standard_Real; theLast: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepLib::FindValidRange(@)", header: "BRepLib.hxx".}
proc FindValidRange*(theEdge: TopoDS_Edge; theFirst: var Standard_Real;
                    theLast: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepLib::FindValidRange(@)", header: "BRepLib.hxx".}
proc ExtendFace*(theF: TopoDS_Face; theExtVal: Standard_Real;
                theExtUMin: Standard_Boolean; theExtUMax: Standard_Boolean;
                theExtVMin: Standard_Boolean; theExtVMax: Standard_Boolean;
                theFExtended: var TopoDS_Face) {.
    importcpp: "BRepLib::ExtendFace(@)", header: "BRepLib.hxx".}