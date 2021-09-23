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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real, ShapeFix_Root,
  ../TopoDS/TopoDS_Wire, ../ShapeExtend/ShapeExtend_Status

discard "forward decl of ShapeFix_Edge"
discard "forward decl of ShapeAnalysis_Wire"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of ShapeAnalysis_WireOrder"
discard "forward decl of ShapeFix_Wire"
discard "forward decl of ShapeFix_Wire"
type
  Handle_ShapeFix_Wire* = handle[ShapeFix_Wire]

## ! This class provides a set of tools for repairing a wire.
## !
## ! These are methods Fix...(), organised in two levels:
## !
## ! Level 1: Advanced - each method in this level fixes one separate problem,
## ! usually dealing with either single edge or connection of the
## ! two adjacent edges. These methods should be used carefully and
## ! called in right sequence, because some of them depend on others.
## !
## ! Level 2: Public (API) - methods which group several methods of level 1
## ! and call them in a proper sequence in order to make some
## ! consistent set of fixes for a whole wire. It is possible to
## ! control calls to methods of the advanced level from methods of
## ! the public level by use of flags Fix..Mode() (see below).
## !
## ! Fixes can be made in three ways:
## ! 1. Increasing tolerance of an edge or a vertex
## ! 2. Changing topology (adding/removing/replacing edge in the wire
## ! and/or replacing the vertex in the edge)
## ! 3. Changing geometry (shifting vertex or adjusting ends of edge
## ! curve to vertices, or recomputing curves of the edge)
## !
## ! When fix can be made in more than one way (e.g., either
## ! by increasing tolerance or shifting a vertex), it is choosen
## ! according to the flags:
## ! ModifyTopologyMode - allows modification of the topology.
## ! This flag can be set when fixing a wire on
## ! the separate (free) face, and should be
## ! unset for face which is part of shell.
## ! ModifyGeometryMode - allows modification of the geometry.
## !
## ! The order of descriptions of Fix() methods in this CDL
## ! approximately corresponds to the optimal order of calls.
## !
## ! NOTE: most of fixing methods expect edges in the
## ! ShapeExtend_WireData to be ordered, so it is necessary to make
## ! call to FixReorder() before any other fixes
## !
## ! ShapeFix_Wire should be initialized prior to any fix by the
## ! following data:
## ! a) Wire (ether TopoDS_Wire or ShapeExtend_Wire)
## ! b) Face or surface
## ! c) Precision
## ! d) Maximal tail angle and width
## ! This can be done either by calling corresponding methods
## ! (LoadWire, SetFace or SetSurface, SetPrecision, SetMaxTailAngle
## ! and SetMaxTailWidth), or
## ! by loading already filled ShapeAnalisis_Wire with method Load

type
  ShapeFix_Wire* {.importcpp: "ShapeFix_Wire", header: "ShapeFix_Wire.hxx", bycopy.} = object of ShapeFix_Root ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## Constructor,
                                                                                                     ## creates
                                                                                                     ## clear
                                                                                                     ## object
                                                                                                     ## with
                                                                                                     ## default
                                                                                                     ## flags
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Updates
                                                                                                     ## WireData
                                                                                                     ## if
                                                                                                     ## some
                                                                                                     ## replacements
                                                                                                     ## are
                                                                                                     ## made
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## This
                                                                                                     ## is
                                                                                                     ## necessary
                                                                                                     ## for
                                                                                                     ## wires
                                                                                                     ## (unlike
                                                                                                     ## other
                                                                                                     ## shape
                                                                                                     ## types)
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## since
                                                                                                     ## one
                                                                                                     ## edge
                                                                                                     ## can
                                                                                                     ## present
                                                                                                     ## in
                                                                                                     ## wire
                                                                                                     ## several
                                                                                                     ## times
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Detect
                                                                                                     ## and
                                                                                                     ## fix
                                                                                                     ## self-intersecting
                                                                                                     ## pcurve
                                                                                                     ## of
                                                                                                     ## edge
                                                                                                     ## <num>.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Fix
                                                                                                     ## is
                                                                                                     ## made
                                                                                                     ## by
                                                                                                     ## one
                                                                                                     ## of
                                                                                                     ## two
                                                                                                     ## methods:
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## -
                                                                                                     ## cut
                                                                                                     ## out
                                                                                                     ## the
                                                                                                     ## self-intersection
                                                                                                     ## loop
                                                                                                     ## on
                                                                                                     ## pcurve
                                                                                                     ## (thus
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## producing
                                                                                                     ## C0
                                                                                                     ## pcurve).
                                                                                                     ## This
                                                                                                     ## also
                                                                                                     ## increases
                                                                                                     ## tolerance
                                                                                                     ## of
                                                                                                     ## edge
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## in
                                                                                                     ## order
                                                                                                     ## to
                                                                                                     ## satisfy
                                                                                                     ## SameParameter
                                                                                                     ## requirement.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## -
                                                                                                     ## increase
                                                                                                     ## tolerance
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## vertex
                                                                                                     ## of
                                                                                                     ## edge
                                                                                                     ## nearest
                                                                                                     ## to
                                                                                                     ## the
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## self-intersection
                                                                                                     ## point
                                                                                                     ## so
                                                                                                     ## that
                                                                                                     ## it
                                                                                                     ## comprises
                                                                                                     ## that
                                                                                                     ## point.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## The
                                                                                                     ## first
                                                                                                     ## method
                                                                                                     ## is
                                                                                                     ## considered
                                                                                                     ## only
                                                                                                     ## if
                                                                                                     ## ModifyGeometryMode
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## is
                                                                                                     ## True.
                                                                                                     ## In
                                                                                                     ## that
                                                                                                     ## case,
                                                                                                     ## the
                                                                                                     ## method
                                                                                                     ## which
                                                                                                     ## requires
                                                                                                     ## less
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## increasing
                                                                                                     ## of
                                                                                                     ## tolerance
                                                                                                     ## is
                                                                                                     ## selected.


proc constructShapeFix_Wire*(): ShapeFix_Wire {.constructor,
    importcpp: "ShapeFix_Wire(@)", header: "ShapeFix_Wire.hxx".}
proc constructShapeFix_Wire*(wire: TopoDS_Wire; face: TopoDS_Face;
                            prec: Standard_Real): ShapeFix_Wire {.constructor,
    importcpp: "ShapeFix_Wire(@)", header: "ShapeFix_Wire.hxx".}
proc ClearModes*(this: var ShapeFix_Wire) {.importcpp: "ClearModes",
                                        header: "ShapeFix_Wire.hxx".}
proc ClearStatuses*(this: var ShapeFix_Wire) {.importcpp: "ClearStatuses",
    header: "ShapeFix_Wire.hxx".}
proc Init*(this: var ShapeFix_Wire; wire: TopoDS_Wire; face: TopoDS_Face;
          prec: Standard_Real) {.importcpp: "Init", header: "ShapeFix_Wire.hxx".}
proc Init*(this: var ShapeFix_Wire; saw: handle[ShapeAnalysis_Wire]) {.
    importcpp: "Init", header: "ShapeFix_Wire.hxx".}
proc Load*(this: var ShapeFix_Wire; wire: TopoDS_Wire) {.importcpp: "Load",
    header: "ShapeFix_Wire.hxx".}
proc Load*(this: var ShapeFix_Wire; sbwd: handle[ShapeExtend_WireData]) {.
    importcpp: "Load", header: "ShapeFix_Wire.hxx".}
proc SetFace*(this: var ShapeFix_Wire; face: TopoDS_Face) {.importcpp: "SetFace",
    header: "ShapeFix_Wire.hxx".}
proc SetSurface*(this: var ShapeFix_Wire; surf: handle[Geom_Surface]) {.
    importcpp: "SetSurface", header: "ShapeFix_Wire.hxx".}
proc SetSurface*(this: var ShapeFix_Wire; surf: handle[Geom_Surface];
                loc: TopLoc_Location) {.importcpp: "SetSurface",
                                      header: "ShapeFix_Wire.hxx".}
proc SetPrecision*(this: var ShapeFix_Wire; prec: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeFix_Wire.hxx".}
proc SetMaxTailAngle*(this: var ShapeFix_Wire; theMaxTailAngle: Standard_Real) {.
    importcpp: "SetMaxTailAngle", header: "ShapeFix_Wire.hxx".}
proc SetMaxTailWidth*(this: var ShapeFix_Wire; theMaxTailWidth: Standard_Real) {.
    importcpp: "SetMaxTailWidth", header: "ShapeFix_Wire.hxx".}
proc IsLoaded*(this: ShapeFix_Wire): Standard_Boolean {.noSideEffect,
    importcpp: "IsLoaded", header: "ShapeFix_Wire.hxx".}
proc IsReady*(this: ShapeFix_Wire): Standard_Boolean {.noSideEffect,
    importcpp: "IsReady", header: "ShapeFix_Wire.hxx".}
proc NbEdges*(this: ShapeFix_Wire): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeFix_Wire.hxx".}
proc Wire*(this: ShapeFix_Wire): TopoDS_Wire {.noSideEffect, importcpp: "Wire",
    header: "ShapeFix_Wire.hxx".}
proc WireAPIMake*(this: ShapeFix_Wire): TopoDS_Wire {.noSideEffect,
    importcpp: "WireAPIMake", header: "ShapeFix_Wire.hxx".}
proc Analyzer*(this: ShapeFix_Wire): handle[ShapeAnalysis_Wire] {.noSideEffect,
    importcpp: "Analyzer", header: "ShapeFix_Wire.hxx".}
proc WireData*(this: ShapeFix_Wire): handle[ShapeExtend_WireData] {.noSideEffect,
    importcpp: "WireData", header: "ShapeFix_Wire.hxx".}
proc Face*(this: ShapeFix_Wire): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "ShapeFix_Wire.hxx".}
proc ModifyTopologyMode*(this: var ShapeFix_Wire): var Standard_Boolean {.
    importcpp: "ModifyTopologyMode", header: "ShapeFix_Wire.hxx".}
proc ModifyGeometryMode*(this: var ShapeFix_Wire): var Standard_Boolean {.
    importcpp: "ModifyGeometryMode", header: "ShapeFix_Wire.hxx".}
proc ModifyRemoveLoopMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "ModifyRemoveLoopMode", header: "ShapeFix_Wire.hxx".}
proc ClosedWireMode*(this: var ShapeFix_Wire): var Standard_Boolean {.
    importcpp: "ClosedWireMode", header: "ShapeFix_Wire.hxx".}
proc PreferencePCurveMode*(this: var ShapeFix_Wire): var Standard_Boolean {.
    importcpp: "PreferencePCurveMode", header: "ShapeFix_Wire.hxx".}
proc FixGapsByRangesMode*(this: var ShapeFix_Wire): var Standard_Boolean {.
    importcpp: "FixGapsByRangesMode", header: "ShapeFix_Wire.hxx".}
proc FixReorderMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixReorderMode", header: "ShapeFix_Wire.hxx".}
proc FixSmallMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixSmallMode", header: "ShapeFix_Wire.hxx".}
proc FixConnectedMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixConnectedMode", header: "ShapeFix_Wire.hxx".}
proc FixEdgeCurvesMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixEdgeCurvesMode", header: "ShapeFix_Wire.hxx".}
proc FixDegeneratedMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixDegeneratedMode", header: "ShapeFix_Wire.hxx".}
proc FixSelfIntersectionMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixSelfIntersectionMode", header: "ShapeFix_Wire.hxx".}
proc FixLackingMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixLackingMode", header: "ShapeFix_Wire.hxx".}
proc FixGaps3dMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixGaps3dMode", header: "ShapeFix_Wire.hxx".}
proc FixGaps2dMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixGaps2dMode", header: "ShapeFix_Wire.hxx".}
proc FixReversed2dMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixReversed2dMode", header: "ShapeFix_Wire.hxx".}
proc FixRemovePCurveMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixRemovePCurveMode", header: "ShapeFix_Wire.hxx".}
proc FixAddPCurveMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixAddPCurveMode", header: "ShapeFix_Wire.hxx".}
proc FixRemoveCurve3dMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixRemoveCurve3dMode", header: "ShapeFix_Wire.hxx".}
proc FixAddCurve3dMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixAddCurve3dMode", header: "ShapeFix_Wire.hxx".}
proc FixSeamMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixSeamMode", header: "ShapeFix_Wire.hxx".}
proc FixShiftedMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixShiftedMode", header: "ShapeFix_Wire.hxx".}
proc FixSameParameterMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixSameParameterMode", header: "ShapeFix_Wire.hxx".}
proc FixVertexToleranceMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixVertexToleranceMode", header: "ShapeFix_Wire.hxx".}
proc FixNotchedEdgesMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixNotchedEdgesMode", header: "ShapeFix_Wire.hxx".}
proc FixSelfIntersectingEdgeMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixSelfIntersectingEdgeMode", header: "ShapeFix_Wire.hxx".}
proc FixIntersectingEdgesMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixIntersectingEdgesMode", header: "ShapeFix_Wire.hxx".}
proc FixNonAdjacentIntersectingEdgesMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixNonAdjacentIntersectingEdgesMode", header: "ShapeFix_Wire.hxx".}
proc FixTailMode*(this: var ShapeFix_Wire): var Standard_Integer {.
    importcpp: "FixTailMode", header: "ShapeFix_Wire.hxx".}
proc Perform*(this: var ShapeFix_Wire): Standard_Boolean {.importcpp: "Perform",
    header: "ShapeFix_Wire.hxx".}
proc FixReorder*(this: var ShapeFix_Wire): Standard_Boolean {.
    importcpp: "FixReorder", header: "ShapeFix_Wire.hxx".}
proc FixSmall*(this: var ShapeFix_Wire; lockvtx: Standard_Boolean;
              precsmall: Standard_Real = 0.0): Standard_Integer {.
    importcpp: "FixSmall", header: "ShapeFix_Wire.hxx".}
proc FixConnected*(this: var ShapeFix_Wire; prec: Standard_Real = -1.0): Standard_Boolean {.
    importcpp: "FixConnected", header: "ShapeFix_Wire.hxx".}
proc FixEdgeCurves*(this: var ShapeFix_Wire): Standard_Boolean {.
    importcpp: "FixEdgeCurves", header: "ShapeFix_Wire.hxx".}
proc FixDegenerated*(this: var ShapeFix_Wire): Standard_Boolean {.
    importcpp: "FixDegenerated", header: "ShapeFix_Wire.hxx".}
proc FixSelfIntersection*(this: var ShapeFix_Wire): Standard_Boolean {.
    importcpp: "FixSelfIntersection", header: "ShapeFix_Wire.hxx".}
proc FixLacking*(this: var ShapeFix_Wire; force: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "FixLacking", header: "ShapeFix_Wire.hxx".}
proc FixClosed*(this: var ShapeFix_Wire; prec: Standard_Real = -1.0): Standard_Boolean {.
    importcpp: "FixClosed", header: "ShapeFix_Wire.hxx".}
proc FixGaps3d*(this: var ShapeFix_Wire): Standard_Boolean {.importcpp: "FixGaps3d",
    header: "ShapeFix_Wire.hxx".}
proc FixGaps2d*(this: var ShapeFix_Wire): Standard_Boolean {.importcpp: "FixGaps2d",
    header: "ShapeFix_Wire.hxx".}
proc FixReorder*(this: var ShapeFix_Wire; wi: ShapeAnalysis_WireOrder): Standard_Boolean {.
    importcpp: "FixReorder", header: "ShapeFix_Wire.hxx".}
proc FixSmall*(this: var ShapeFix_Wire; num: Standard_Integer;
              lockvtx: Standard_Boolean; precsmall: Standard_Real): Standard_Boolean {.
    importcpp: "FixSmall", header: "ShapeFix_Wire.hxx".}
proc FixConnected*(this: var ShapeFix_Wire; num: Standard_Integer; prec: Standard_Real): Standard_Boolean {.
    importcpp: "FixConnected", header: "ShapeFix_Wire.hxx".}
proc FixSeam*(this: var ShapeFix_Wire; num: Standard_Integer): Standard_Boolean {.
    importcpp: "FixSeam", header: "ShapeFix_Wire.hxx".}
proc FixShifted*(this: var ShapeFix_Wire): Standard_Boolean {.
    importcpp: "FixShifted", header: "ShapeFix_Wire.hxx".}
proc FixDegenerated*(this: var ShapeFix_Wire; num: Standard_Integer): Standard_Boolean {.
    importcpp: "FixDegenerated", header: "ShapeFix_Wire.hxx".}
proc FixLacking*(this: var ShapeFix_Wire; num: Standard_Integer;
                force: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "FixLacking", header: "ShapeFix_Wire.hxx".}
proc FixNotchedEdges*(this: var ShapeFix_Wire): Standard_Boolean {.
    importcpp: "FixNotchedEdges", header: "ShapeFix_Wire.hxx".}
proc FixGap3d*(this: var ShapeFix_Wire; num: Standard_Integer;
              convert: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "FixGap3d", header: "ShapeFix_Wire.hxx".}
proc FixGap2d*(this: var ShapeFix_Wire; num: Standard_Integer;
              convert: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "FixGap2d", header: "ShapeFix_Wire.hxx".}
proc FixTails*(this: var ShapeFix_Wire): Standard_Boolean {.importcpp: "FixTails",
    header: "ShapeFix_Wire.hxx".}
proc StatusReorder*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusReorder", header: "ShapeFix_Wire.hxx".}
proc StatusSmall*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusSmall", header: "ShapeFix_Wire.hxx".}
proc StatusConnected*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusConnected", header: "ShapeFix_Wire.hxx".}
proc StatusEdgeCurves*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusEdgeCurves", header: "ShapeFix_Wire.hxx".}
proc StatusDegenerated*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusDegenerated", header: "ShapeFix_Wire.hxx".}
proc StatusSelfIntersection*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusSelfIntersection", header: "ShapeFix_Wire.hxx".}
proc StatusLacking*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusLacking", header: "ShapeFix_Wire.hxx".}
proc StatusClosed*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusClosed", header: "ShapeFix_Wire.hxx".}
proc StatusGaps3d*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusGaps3d", header: "ShapeFix_Wire.hxx".}
proc StatusGaps2d*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusGaps2d", header: "ShapeFix_Wire.hxx".}
proc StatusNotches*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusNotches", header: "ShapeFix_Wire.hxx".}
proc StatusRemovedSegment*(this: ShapeFix_Wire): Standard_Boolean {.noSideEffect,
    importcpp: "StatusRemovedSegment", header: "ShapeFix_Wire.hxx".}
proc StatusFixTails*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusFixTails", header: "ShapeFix_Wire.hxx".}
proc LastFixStatus*(this: ShapeFix_Wire; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "LastFixStatus", header: "ShapeFix_Wire.hxx".}
proc FixEdgeTool*(this: ShapeFix_Wire): handle[ShapeFix_Edge] {.noSideEffect,
    importcpp: "FixEdgeTool", header: "ShapeFix_Wire.hxx".}
type
  ShapeFix_Wirebase_type* = ShapeFix_Root

proc get_type_name*(): cstring {.importcpp: "ShapeFix_Wire::get_type_name(@)",
                              header: "ShapeFix_Wire.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_Wire::get_type_descriptor(@)",
    header: "ShapeFix_Wire.hxx".}
proc DynamicType*(this: ShapeFix_Wire): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Wire.hxx".}