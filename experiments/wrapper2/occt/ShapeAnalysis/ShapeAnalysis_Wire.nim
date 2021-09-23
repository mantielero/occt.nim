##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../IntRes2d/IntRes2d_SequenceOfIntersectionPoint,
  ../TColgp/TColgp_SequenceOfPnt, ../TColStd/TColStd_SequenceOfReal,
  ../TopTools/TopTools_IndexedMapOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_MapOfShape, ../ShapeExtend/ShapeExtend_Status

discard "forward decl of ShapeExtend_WireData"
discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of TopoDS_Wire"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of ShapeAnalysis_WireOrder"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
when defined(Status):
  discard
discard "forward decl of ShapeAnalysis_Wire"
discard "forward decl of ShapeAnalysis_Wire"
type
  Handle_ShapeAnalysis_Wire* = handle[ShapeAnalysis_Wire]

## ! This class provides analysis of a wire to be compliant to
## ! CAS.CADE requirements.
## !
## ! The functionalities provided are the following:
## ! 1. consistency of 2d and 3d edge curve senses
## ! 2. connection of adjacent edges regarding to:
## ! a. their vertices
## ! b. their pcurves
## ! c. their 3d curves
## ! 3. adjacency of the edge vertices to its pcurve and 3d curve
## ! 4. if a wire is closed or not (considering its 3d and 2d
## ! contour)
## ! 5. if a wire is outer on its face (considering pcurves)
## !
## ! This class can be used in conjunction with class
## ! ShapeFix_Wire, which will fix the problems detected by this class.
## !
## ! The methods of the given class match to ones of the class
## ! ShapeFix_Wire, e.g., CheckSmall and FixSmall.
## ! This class also includes some auxilary methods
## ! (e.g., CheckOuterBound, etc.),
## ! which have no pair in ShapeFix_Wire.
## !
## ! Like methods of ShapeFix_Wire the ones of this class are
## ! grouped into two levels:
## ! - Public which are recommended for use (the most global
## ! method is Perform),
## ! - Advanced, for optional use only
## !
## ! For analyzing result of Public API checking methods use
## ! corresponding Status... method.
## ! The 'advanced' functions share the single status field which
## ! contains the result of the last performed 'advanced' method.
## ! It is quried by the method LastCheckStatus().
## !
## ! In order to prepare an analyzer, it is necessary to load a wire,
## ! set face and precision.

type
  ShapeAnalysis_Wire* {.importcpp: "ShapeAnalysis_Wire",
                       header: "ShapeAnalysis_Wire.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor


proc constructShapeAnalysis_Wire*(): ShapeAnalysis_Wire {.constructor,
    importcpp: "ShapeAnalysis_Wire(@)", header: "ShapeAnalysis_Wire.hxx".}
proc constructShapeAnalysis_Wire*(wire: TopoDS_Wire; face: TopoDS_Face;
                                 precision: Standard_Real): ShapeAnalysis_Wire {.
    constructor, importcpp: "ShapeAnalysis_Wire(@)",
    header: "ShapeAnalysis_Wire.hxx".}
proc constructShapeAnalysis_Wire*(sbwd: handle[ShapeExtend_WireData];
                                 face: TopoDS_Face; precision: Standard_Real): ShapeAnalysis_Wire {.
    constructor, importcpp: "ShapeAnalysis_Wire(@)",
    header: "ShapeAnalysis_Wire.hxx".}
proc Init*(this: var ShapeAnalysis_Wire; wire: TopoDS_Wire; face: TopoDS_Face;
          precision: Standard_Real) {.importcpp: "Init",
                                    header: "ShapeAnalysis_Wire.hxx".}
proc Init*(this: var ShapeAnalysis_Wire; sbwd: handle[ShapeExtend_WireData];
          face: TopoDS_Face; precision: Standard_Real) {.importcpp: "Init",
    header: "ShapeAnalysis_Wire.hxx".}
proc Load*(this: var ShapeAnalysis_Wire; wire: TopoDS_Wire) {.importcpp: "Load",
    header: "ShapeAnalysis_Wire.hxx".}
proc Load*(this: var ShapeAnalysis_Wire; sbwd: handle[ShapeExtend_WireData]) {.
    importcpp: "Load", header: "ShapeAnalysis_Wire.hxx".}
proc SetFace*(this: var ShapeAnalysis_Wire; face: TopoDS_Face) {.importcpp: "SetFace",
    header: "ShapeAnalysis_Wire.hxx".}
proc SetSurface*(this: var ShapeAnalysis_Wire; surface: handle[Geom_Surface]) {.
    importcpp: "SetSurface", header: "ShapeAnalysis_Wire.hxx".}
proc SetSurface*(this: var ShapeAnalysis_Wire; surface: handle[Geom_Surface];
                location: TopLoc_Location) {.importcpp: "SetSurface",
    header: "ShapeAnalysis_Wire.hxx".}
proc SetPrecision*(this: var ShapeAnalysis_Wire; precision: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeAnalysis_Wire.hxx".}
proc ClearStatuses*(this: var ShapeAnalysis_Wire) {.importcpp: "ClearStatuses",
    header: "ShapeAnalysis_Wire.hxx".}
proc IsLoaded*(this: ShapeAnalysis_Wire): Standard_Boolean {.noSideEffect,
    importcpp: "IsLoaded", header: "ShapeAnalysis_Wire.hxx".}
proc IsReady*(this: ShapeAnalysis_Wire): Standard_Boolean {.noSideEffect,
    importcpp: "IsReady", header: "ShapeAnalysis_Wire.hxx".}
proc Precision*(this: ShapeAnalysis_Wire): Standard_Real {.noSideEffect,
    importcpp: "Precision", header: "ShapeAnalysis_Wire.hxx".}
proc WireData*(this: ShapeAnalysis_Wire): handle[ShapeExtend_WireData] {.
    noSideEffect, importcpp: "WireData", header: "ShapeAnalysis_Wire.hxx".}
proc NbEdges*(this: ShapeAnalysis_Wire): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_Wire.hxx".}
proc Face*(this: ShapeAnalysis_Wire): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "ShapeAnalysis_Wire.hxx".}
proc Surface*(this: ShapeAnalysis_Wire): handle[ShapeAnalysis_Surface] {.
    noSideEffect, importcpp: "Surface", header: "ShapeAnalysis_Wire.hxx".}
proc Perform*(this: var ShapeAnalysis_Wire): Standard_Boolean {.importcpp: "Perform",
    header: "ShapeAnalysis_Wire.hxx".}
proc CheckOrder*(this: var ShapeAnalysis_Wire;
                isClosed: Standard_Boolean = Standard_True;
                mode3d: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "CheckOrder", header: "ShapeAnalysis_Wire.hxx".}
proc CheckConnected*(this: var ShapeAnalysis_Wire; prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckConnected", header: "ShapeAnalysis_Wire.hxx".}
proc CheckSmall*(this: var ShapeAnalysis_Wire; precsmall: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckSmall", header: "ShapeAnalysis_Wire.hxx".}
proc CheckEdgeCurves*(this: var ShapeAnalysis_Wire): Standard_Boolean {.
    importcpp: "CheckEdgeCurves", header: "ShapeAnalysis_Wire.hxx".}
proc CheckDegenerated*(this: var ShapeAnalysis_Wire): Standard_Boolean {.
    importcpp: "CheckDegenerated", header: "ShapeAnalysis_Wire.hxx".}
proc CheckClosed*(this: var ShapeAnalysis_Wire; prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckClosed", header: "ShapeAnalysis_Wire.hxx".}
proc CheckSelfIntersection*(this: var ShapeAnalysis_Wire): Standard_Boolean {.
    importcpp: "CheckSelfIntersection", header: "ShapeAnalysis_Wire.hxx".}
proc CheckLacking*(this: var ShapeAnalysis_Wire): Standard_Boolean {.
    importcpp: "CheckLacking", header: "ShapeAnalysis_Wire.hxx".}
proc CheckGaps3d*(this: var ShapeAnalysis_Wire): Standard_Boolean {.
    importcpp: "CheckGaps3d", header: "ShapeAnalysis_Wire.hxx".}
proc CheckGaps2d*(this: var ShapeAnalysis_Wire): Standard_Boolean {.
    importcpp: "CheckGaps2d", header: "ShapeAnalysis_Wire.hxx".}
proc CheckCurveGaps*(this: var ShapeAnalysis_Wire): Standard_Boolean {.
    importcpp: "CheckCurveGaps", header: "ShapeAnalysis_Wire.hxx".}
proc CheckOrder*(this: var ShapeAnalysis_Wire; sawo: var ShapeAnalysis_WireOrder;
                isClosed: Standard_Boolean = Standard_True;
                mode3d: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "CheckOrder", header: "ShapeAnalysis_Wire.hxx".}
proc CheckConnected*(this: var ShapeAnalysis_Wire; num: Standard_Integer;
                    prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckConnected", header: "ShapeAnalysis_Wire.hxx".}
proc CheckSmall*(this: var ShapeAnalysis_Wire; num: Standard_Integer;
                precsmall: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckSmall", header: "ShapeAnalysis_Wire.hxx".}
proc CheckSeam*(this: var ShapeAnalysis_Wire; num: Standard_Integer;
               C1: var handle[Geom2d_Curve]; C2: var handle[Geom2d_Curve];
               cf: var Standard_Real; cl: var Standard_Real): Standard_Boolean {.
    importcpp: "CheckSeam", header: "ShapeAnalysis_Wire.hxx".}
proc CheckSeam*(this: var ShapeAnalysis_Wire; num: Standard_Integer): Standard_Boolean {.
    importcpp: "CheckSeam", header: "ShapeAnalysis_Wire.hxx".}
proc CheckDegenerated*(this: var ShapeAnalysis_Wire; num: Standard_Integer;
                      dgnr1: var gp_Pnt2d; dgnr2: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "CheckDegenerated", header: "ShapeAnalysis_Wire.hxx".}
proc CheckDegenerated*(this: var ShapeAnalysis_Wire; num: Standard_Integer): Standard_Boolean {.
    importcpp: "CheckDegenerated", header: "ShapeAnalysis_Wire.hxx".}
proc CheckGap3d*(this: var ShapeAnalysis_Wire; num: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "CheckGap3d", header: "ShapeAnalysis_Wire.hxx".}
proc CheckGap2d*(this: var ShapeAnalysis_Wire; num: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "CheckGap2d", header: "ShapeAnalysis_Wire.hxx".}
proc CheckCurveGap*(this: var ShapeAnalysis_Wire; num: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "CheckCurveGap", header: "ShapeAnalysis_Wire.hxx".}
proc CheckSelfIntersectingEdge*(this: var ShapeAnalysis_Wire; num: Standard_Integer;
    points2d: var IntRes2d_SequenceOfIntersectionPoint;
                               points3d: var TColgp_SequenceOfPnt): Standard_Boolean {.
    importcpp: "CheckSelfIntersectingEdge", header: "ShapeAnalysis_Wire.hxx".}
proc CheckSelfIntersectingEdge*(this: var ShapeAnalysis_Wire; num: Standard_Integer): Standard_Boolean {.
    importcpp: "CheckSelfIntersectingEdge", header: "ShapeAnalysis_Wire.hxx".}
proc CheckIntersectingEdges*(this: var ShapeAnalysis_Wire; num: Standard_Integer;
                            points2d: var IntRes2d_SequenceOfIntersectionPoint;
                            points3d: var TColgp_SequenceOfPnt;
                            errors: var TColStd_SequenceOfReal): Standard_Boolean {.
    importcpp: "CheckIntersectingEdges", header: "ShapeAnalysis_Wire.hxx".}
proc CheckIntersectingEdges*(this: var ShapeAnalysis_Wire; num: Standard_Integer): Standard_Boolean {.
    importcpp: "CheckIntersectingEdges", header: "ShapeAnalysis_Wire.hxx".}
proc CheckIntersectingEdges*(this: var ShapeAnalysis_Wire; num1: Standard_Integer;
                            num2: Standard_Integer;
                            points2d: var IntRes2d_SequenceOfIntersectionPoint;
                            points3d: var TColgp_SequenceOfPnt;
                            errors: var TColStd_SequenceOfReal): Standard_Boolean {.
    importcpp: "CheckIntersectingEdges", header: "ShapeAnalysis_Wire.hxx".}
proc CheckIntersectingEdges*(this: var ShapeAnalysis_Wire; num1: Standard_Integer;
                            num2: Standard_Integer): Standard_Boolean {.
    importcpp: "CheckIntersectingEdges", header: "ShapeAnalysis_Wire.hxx".}
proc CheckLacking*(this: var ShapeAnalysis_Wire; num: Standard_Integer;
                  Tolerance: Standard_Real; p2d1: var gp_Pnt2d; p2d2: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "CheckLacking", header: "ShapeAnalysis_Wire.hxx".}
proc CheckLacking*(this: var ShapeAnalysis_Wire; num: Standard_Integer;
                  Tolerance: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckLacking", header: "ShapeAnalysis_Wire.hxx".}
proc CheckOuterBound*(this: var ShapeAnalysis_Wire;
                     APIMake: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "CheckOuterBound", header: "ShapeAnalysis_Wire.hxx".}
proc CheckNotchedEdges*(this: var ShapeAnalysis_Wire; num: Standard_Integer;
                       shortNum: var Standard_Integer; param: var Standard_Real;
                       Tolerance: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckNotchedEdges", header: "ShapeAnalysis_Wire.hxx".}
proc CheckSmallArea*(this: var ShapeAnalysis_Wire; theWire: TopoDS_Wire): Standard_Boolean {.
    importcpp: "CheckSmallArea", header: "ShapeAnalysis_Wire.hxx".}
proc CheckShapeConnect*(this: var ShapeAnalysis_Wire; shape: TopoDS_Shape;
                       prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckShapeConnect", header: "ShapeAnalysis_Wire.hxx".}
proc CheckShapeConnect*(this: var ShapeAnalysis_Wire; tailhead: var Standard_Real;
                       tailtail: var Standard_Real; headtail: var Standard_Real;
                       headhead: var Standard_Real; shape: TopoDS_Shape;
                       prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckShapeConnect", header: "ShapeAnalysis_Wire.hxx".}
proc CheckLoop*(this: var ShapeAnalysis_Wire;
               aMapLoopVertices: var TopTools_IndexedMapOfShape;
               aMapVertexEdges: var TopTools_DataMapOfShapeListOfShape;
               aMapSmallEdges: var TopTools_MapOfShape;
               aMapSeemEdges: var TopTools_MapOfShape): Standard_Boolean {.
    importcpp: "CheckLoop", header: "ShapeAnalysis_Wire.hxx".}
proc CheckTail*(this: var ShapeAnalysis_Wire; theEdge1: TopoDS_Edge;
               theEdge2: TopoDS_Edge; theMaxSine: Standard_Real;
               theMaxWidth: Standard_Real; theMaxTolerance: Standard_Real;
               theEdge11: var TopoDS_Edge; theEdge12: var TopoDS_Edge;
               theEdge21: var TopoDS_Edge; theEdge22: var TopoDS_Edge): Standard_Boolean {.
    importcpp: "CheckTail", header: "ShapeAnalysis_Wire.hxx".}
proc StatusOrder*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusOrder", header: "ShapeAnalysis_Wire.hxx".}
proc StatusConnected*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusConnected", header: "ShapeAnalysis_Wire.hxx".}
proc StatusEdgeCurves*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusEdgeCurves", header: "ShapeAnalysis_Wire.hxx".}
proc StatusDegenerated*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusDegenerated", header: "ShapeAnalysis_Wire.hxx".}
proc StatusClosed*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusClosed", header: "ShapeAnalysis_Wire.hxx".}
proc StatusSmall*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusSmall", header: "ShapeAnalysis_Wire.hxx".}
proc StatusSelfIntersection*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusSelfIntersection",
    header: "ShapeAnalysis_Wire.hxx".}
proc StatusLacking*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusLacking", header: "ShapeAnalysis_Wire.hxx".}
proc StatusGaps3d*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusGaps3d", header: "ShapeAnalysis_Wire.hxx".}
proc StatusGaps2d*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusGaps2d", header: "ShapeAnalysis_Wire.hxx".}
proc StatusCurveGaps*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusCurveGaps", header: "ShapeAnalysis_Wire.hxx".}
proc StatusLoop*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusLoop", header: "ShapeAnalysis_Wire.hxx".}
proc LastCheckStatus*(this: ShapeAnalysis_Wire; Status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "LastCheckStatus", header: "ShapeAnalysis_Wire.hxx".}
proc MinDistance3d*(this: ShapeAnalysis_Wire): Standard_Real {.noSideEffect,
    importcpp: "MinDistance3d", header: "ShapeAnalysis_Wire.hxx".}
proc MinDistance2d*(this: ShapeAnalysis_Wire): Standard_Real {.noSideEffect,
    importcpp: "MinDistance2d", header: "ShapeAnalysis_Wire.hxx".}
proc MaxDistance3d*(this: ShapeAnalysis_Wire): Standard_Real {.noSideEffect,
    importcpp: "MaxDistance3d", header: "ShapeAnalysis_Wire.hxx".}
proc MaxDistance2d*(this: ShapeAnalysis_Wire): Standard_Real {.noSideEffect,
    importcpp: "MaxDistance2d", header: "ShapeAnalysis_Wire.hxx".}
type
  ShapeAnalysis_Wirebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeAnalysis_Wire::get_type_name(@)",
                              header: "ShapeAnalysis_Wire.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeAnalysis_Wire::get_type_descriptor(@)",
    header: "ShapeAnalysis_Wire.hxx".}
proc DynamicType*(this: ShapeAnalysis_Wire): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeAnalysis_Wire.hxx".}