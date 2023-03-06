import breplib_types
import ../standard/standard_types
import ../ncollection/ncollection_types
import ../geom2d/geom2d_types
import ../geom/geom_types
import ../topods/topods_types
import ../geomabs/geomabs_types
import ../toptools/toptools_types
import ../gp/gp_types
import ../adaptor3d/adaptor3d_types
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
discard "forward decl of BRepTools_ReShape"

{.push header:"BRepLib.hxx".}
proc Precision*(P: cfloat) {.cdecl, importcpp: "BRepLib::Precision(@)",
                          .}
proc Precision*(): cfloat {.cdecl, importcpp: "BRepLib::Precision(@)",
                         .}
proc Plane*(P: Handle[Geom_Plane]) {.cdecl, importcpp: "BRepLib::Plane(@)",
                                  .}
proc Plane*(): Handle[Geom_Plane] {.cdecl, importcpp: "BRepLib::Plane(@)",
                                 .}
proc CheckSameRange*(E: TopoDS_Edge; Confusion: cfloat = 1.0e-12): bool {.cdecl,
    importcpp: "BRepLib::CheckSameRange(@)".}
proc SameRange*(E: TopoDS_Edge; Tolerance: cfloat = 1.0e-5) {.cdecl,
    importcpp: "BRepLib::SameRange(@)".}
proc BuildCurve3d*(E: TopoDS_Edge; Tolerance: cfloat = 1.0e-5;
                  Continuity: GeomAbs_Shape = geomAbsC1; MaxDegree: cint = 14;
                  MaxSegment: cint = 0): bool {.cdecl,
    importcpp: "BRepLib::BuildCurve3d(@)".}

proc buildCurves3d*(S: TopoDS_Shape; Tolerance: cfloat;
                   Continuity: GeomAbs_Shape = geomAbsC1; MaxDegree: cint = 14;
                   MaxSegment: cint = 0): bool {.cdecl,
    importcpp: "BRepLib::BuildCurves3d(@)".}

proc buildCurves3d*(S: TopoDS_Shape): bool {.cdecl,
    importcpp: "BRepLib::BuildCurves3d(@)", discardable.}

proc BuildPCurveForEdgeOnPlane*(theE: TopoDS_Edge; theF: TopoDS_Face) {.cdecl,
    importcpp: "BRepLib::BuildPCurveForEdgeOnPlane(@)".}
proc BuildPCurveForEdgeOnPlane*(theE: TopoDS_Edge; theF: TopoDS_Face;
                               aC2D: var Handle[Geom2d_Curve]; bToUpdate: var bool) {.
    cdecl, importcpp: "BRepLib::BuildPCurveForEdgeOnPlane(@)".}
proc BuildPCurveForEdgesOnPlane*[TCont](theLE: TCont; theF: TopoDS_Face) {.cdecl,
    importcpp: "BRepLib::BuildPCurveForEdgesOnPlane(@)".}
proc UpdateEdgeTol*(E: TopoDS_Edge; MinToleranceRequest: cfloat;
                   MaxToleranceToCheck: cfloat): bool {.cdecl,
    importcpp: "BRepLib::UpdateEdgeTol(@)".}
proc UpdateEdgeTolerance*(S: TopoDS_Shape; MinToleranceRequest: cfloat;
                         MaxToleranceToCheck: cfloat): bool {.cdecl,
    importcpp: "BRepLib::UpdateEdgeTolerance(@)".}
proc SameParameter*(theEdge: TopoDS_Edge; Tolerance: cfloat = 1.0e-5) {.cdecl,
    importcpp: "BRepLib::SameParameter(@)".}
proc SameParameter*(theEdge: TopoDS_Edge; theTolerance: cfloat;
                   theNewTol: var cfloat; IsUseOldEdge: bool): TopoDS_Edge {.cdecl,
    importcpp: "BRepLib::SameParameter(@)".}
proc SameParameter*(S: TopoDS_Shape; Tolerance: cfloat = 1.0e-5; forced: bool = false) {.
    cdecl, importcpp: "BRepLib::SameParameter(@)".}


#------ FIXME
# BRepTools_ReShape
# proc SameParameter*(S: TopoDS_Shape; theReshaper: var BRepTools_ReShape;
#                    Tolerance: cfloat = 1.0e-5; forced: bool = false) {.cdecl,
#     importcpp: "BRepLib::SameParameter(@)".}
#--------

proc UpdateTolerances*(S: TopoDS_Shape; verifyFaceTolerance: bool = false) {.cdecl,
    importcpp: "BRepLib::UpdateTolerances(@)".}

# proc UpdateTolerances*(S: TopoDS_Shape; theReshaper: var BRepTools_ReShape;
#                       verifyFaceTolerance: bool = false) {.cdecl,
#     importcpp: "BRepLib::UpdateTolerances(@)".}

proc UpdateInnerTolerances*(S: TopoDS_Shape) {.cdecl,
    importcpp: "BRepLib::UpdateInnerTolerances(@)".}
proc OrientClosedSolid*(solid: var TopoDS_Solid): bool {.cdecl,
    importcpp: "BRepLib::OrientClosedSolid(@)".}
proc ContinuityOfFaces*(theEdge: TopoDS_Edge; theFace1: TopoDS_Face;
                       theFace2: TopoDS_Face; theAngleTol: cfloat): GeomAbs_Shape {.
    cdecl, importcpp: "BRepLib::ContinuityOfFaces(@)".}
proc EncodeRegularity*(S: TopoDS_Shape; TolAng: cfloat = 1.0e-10) {.cdecl,
    importcpp: "BRepLib::EncodeRegularity(@)".}
proc EncodeRegularity*(S: TopoDS_Shape; LE: TopTools_ListOfShape;
                      TolAng: cfloat = 1.0e-10) {.cdecl,
    importcpp: "BRepLib::EncodeRegularity(@)".}
proc EncodeRegularity*(E: var TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face;
                      TolAng: cfloat = 1.0e-10) {.cdecl,
    importcpp: "BRepLib::EncodeRegularity(@)".}
proc SortFaces*(S: TopoDS_Shape; LF: var TopTools_ListOfShape) {.cdecl,
    importcpp: "BRepLib::SortFaces(@)".}
proc ReverseSortFaces*(S: TopoDS_Shape; LF: var TopTools_ListOfShape) {.cdecl,
    importcpp: "BRepLib::ReverseSortFaces(@)".}
proc EnsureNormalConsistency*(S: TopoDS_Shape; theAngTol: cfloat = 0.001;
                             ForceComputeNormals: bool = false): bool {.cdecl,
    importcpp: "BRepLib::EnsureNormalConsistency(@)".}
proc UpdateDeflection*(S: TopoDS_Shape) {.cdecl, importcpp: "BRepLib::UpdateDeflection(@)",
                                       .}
proc BoundingVertex*(theLV: NCollection_List[TopoDS_Shape];
                    theNewCenter: var PntObj; theNewTol: var cfloat) {.cdecl,
    importcpp: "BRepLib::BoundingVertex(@)".}
proc FindValidRange*(theCurve: Adaptor3d_Curve; theTolE: cfloat; theParV1: cfloat;
                    thePntV1: PntObj; theTolV1: cfloat; theParV2: cfloat;
                    thePntV2: PntObj; theTolV2: cfloat; theFirst: var cfloat;
                    theLast: var cfloat): bool {.cdecl,
    importcpp: "BRepLib::FindValidRange(@)".}
proc FindValidRange*(theEdge: TopoDS_Edge; theFirst: var cfloat; theLast: var cfloat): bool {.
    cdecl, importcpp: "BRepLib::FindValidRange(@)".}
proc ExtendFace*(theF: TopoDS_Face; theExtVal: cfloat; theExtUMin: bool;
                theExtUMax: bool; theExtVMin: bool; theExtVMax: bool;
                theFExtended: var TopoDS_Face) {.cdecl,
    importcpp: "BRepLib::ExtendFace(@)".}
{.pop.}