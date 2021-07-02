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
  HandleShapeFixWire* = Handle[ShapeFixWire]

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
  ShapeFixWire* {.importcpp: "ShapeFix_Wire", header: "ShapeFix_Wire.hxx", bycopy.} = object of ShapeFixRoot ##
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


proc constructShapeFixWire*(): ShapeFixWire {.constructor,
    importcpp: "ShapeFix_Wire(@)", header: "ShapeFix_Wire.hxx".}
proc constructShapeFixWire*(wire: TopoDS_Wire; face: TopoDS_Face; prec: StandardReal): ShapeFixWire {.
    constructor, importcpp: "ShapeFix_Wire(@)", header: "ShapeFix_Wire.hxx".}
proc clearModes*(this: var ShapeFixWire) {.importcpp: "ClearModes",
                                       header: "ShapeFix_Wire.hxx".}
proc clearStatuses*(this: var ShapeFixWire) {.importcpp: "ClearStatuses",
    header: "ShapeFix_Wire.hxx".}
proc init*(this: var ShapeFixWire; wire: TopoDS_Wire; face: TopoDS_Face;
          prec: StandardReal) {.importcpp: "Init", header: "ShapeFix_Wire.hxx".}
proc init*(this: var ShapeFixWire; saw: Handle[ShapeAnalysisWire]) {.
    importcpp: "Init", header: "ShapeFix_Wire.hxx".}
proc load*(this: var ShapeFixWire; wire: TopoDS_Wire) {.importcpp: "Load",
    header: "ShapeFix_Wire.hxx".}
proc load*(this: var ShapeFixWire; sbwd: Handle[ShapeExtendWireData]) {.
    importcpp: "Load", header: "ShapeFix_Wire.hxx".}
proc setFace*(this: var ShapeFixWire; face: TopoDS_Face) {.importcpp: "SetFace",
    header: "ShapeFix_Wire.hxx".}
proc setSurface*(this: var ShapeFixWire; surf: Handle[GeomSurface]) {.
    importcpp: "SetSurface", header: "ShapeFix_Wire.hxx".}
proc setSurface*(this: var ShapeFixWire; surf: Handle[GeomSurface];
                loc: TopLocLocation) {.importcpp: "SetSurface",
                                     header: "ShapeFix_Wire.hxx".}
proc setPrecision*(this: var ShapeFixWire; prec: StandardReal) {.
    importcpp: "SetPrecision", header: "ShapeFix_Wire.hxx".}
proc setMaxTailAngle*(this: var ShapeFixWire; theMaxTailAngle: StandardReal) {.
    importcpp: "SetMaxTailAngle", header: "ShapeFix_Wire.hxx".}
proc setMaxTailWidth*(this: var ShapeFixWire; theMaxTailWidth: StandardReal) {.
    importcpp: "SetMaxTailWidth", header: "ShapeFix_Wire.hxx".}
proc isLoaded*(this: ShapeFixWire): StandardBoolean {.noSideEffect,
    importcpp: "IsLoaded", header: "ShapeFix_Wire.hxx".}
proc isReady*(this: ShapeFixWire): StandardBoolean {.noSideEffect,
    importcpp: "IsReady", header: "ShapeFix_Wire.hxx".}
proc nbEdges*(this: ShapeFixWire): StandardInteger {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeFix_Wire.hxx".}
proc wire*(this: ShapeFixWire): TopoDS_Wire {.noSideEffect, importcpp: "Wire",
    header: "ShapeFix_Wire.hxx".}
proc wireAPIMake*(this: ShapeFixWire): TopoDS_Wire {.noSideEffect,
    importcpp: "WireAPIMake", header: "ShapeFix_Wire.hxx".}
proc analyzer*(this: ShapeFixWire): Handle[ShapeAnalysisWire] {.noSideEffect,
    importcpp: "Analyzer", header: "ShapeFix_Wire.hxx".}
proc wireData*(this: ShapeFixWire): Handle[ShapeExtendWireData] {.noSideEffect,
    importcpp: "WireData", header: "ShapeFix_Wire.hxx".}
proc face*(this: ShapeFixWire): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "ShapeFix_Wire.hxx".}
proc modifyTopologyMode*(this: var ShapeFixWire): var StandardBoolean {.
    importcpp: "ModifyTopologyMode", header: "ShapeFix_Wire.hxx".}
proc modifyGeometryMode*(this: var ShapeFixWire): var StandardBoolean {.
    importcpp: "ModifyGeometryMode", header: "ShapeFix_Wire.hxx".}
proc modifyRemoveLoopMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "ModifyRemoveLoopMode", header: "ShapeFix_Wire.hxx".}
proc closedWireMode*(this: var ShapeFixWire): var StandardBoolean {.
    importcpp: "ClosedWireMode", header: "ShapeFix_Wire.hxx".}
proc preferencePCurveMode*(this: var ShapeFixWire): var StandardBoolean {.
    importcpp: "PreferencePCurveMode", header: "ShapeFix_Wire.hxx".}
proc fixGapsByRangesMode*(this: var ShapeFixWire): var StandardBoolean {.
    importcpp: "FixGapsByRangesMode", header: "ShapeFix_Wire.hxx".}
proc fixReorderMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixReorderMode", header: "ShapeFix_Wire.hxx".}
proc fixSmallMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixSmallMode", header: "ShapeFix_Wire.hxx".}
proc fixConnectedMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixConnectedMode", header: "ShapeFix_Wire.hxx".}
proc fixEdgeCurvesMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixEdgeCurvesMode", header: "ShapeFix_Wire.hxx".}
proc fixDegeneratedMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixDegeneratedMode", header: "ShapeFix_Wire.hxx".}
proc fixSelfIntersectionMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixSelfIntersectionMode", header: "ShapeFix_Wire.hxx".}
proc fixLackingMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixLackingMode", header: "ShapeFix_Wire.hxx".}
proc fixGaps3dMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixGaps3dMode", header: "ShapeFix_Wire.hxx".}
proc fixGaps2dMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixGaps2dMode", header: "ShapeFix_Wire.hxx".}
proc fixReversed2dMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixReversed2dMode", header: "ShapeFix_Wire.hxx".}
proc fixRemovePCurveMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixRemovePCurveMode", header: "ShapeFix_Wire.hxx".}
proc fixAddPCurveMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixAddPCurveMode", header: "ShapeFix_Wire.hxx".}
proc fixRemoveCurve3dMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixRemoveCurve3dMode", header: "ShapeFix_Wire.hxx".}
proc fixAddCurve3dMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixAddCurve3dMode", header: "ShapeFix_Wire.hxx".}
proc fixSeamMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixSeamMode", header: "ShapeFix_Wire.hxx".}
proc fixShiftedMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixShiftedMode", header: "ShapeFix_Wire.hxx".}
proc fixSameParameterMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixSameParameterMode", header: "ShapeFix_Wire.hxx".}
proc fixVertexToleranceMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixVertexToleranceMode", header: "ShapeFix_Wire.hxx".}
proc fixNotchedEdgesMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixNotchedEdgesMode", header: "ShapeFix_Wire.hxx".}
proc fixSelfIntersectingEdgeMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixSelfIntersectingEdgeMode", header: "ShapeFix_Wire.hxx".}
proc fixIntersectingEdgesMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixIntersectingEdgesMode", header: "ShapeFix_Wire.hxx".}
proc fixNonAdjacentIntersectingEdgesMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixNonAdjacentIntersectingEdgesMode", header: "ShapeFix_Wire.hxx".}
proc fixTailMode*(this: var ShapeFixWire): var StandardInteger {.
    importcpp: "FixTailMode", header: "ShapeFix_Wire.hxx".}
proc perform*(this: var ShapeFixWire): StandardBoolean {.importcpp: "Perform",
    header: "ShapeFix_Wire.hxx".}
proc fixReorder*(this: var ShapeFixWire): StandardBoolean {.importcpp: "FixReorder",
    header: "ShapeFix_Wire.hxx".}
proc fixSmall*(this: var ShapeFixWire; lockvtx: StandardBoolean;
              precsmall: StandardReal = 0.0): StandardInteger {.
    importcpp: "FixSmall", header: "ShapeFix_Wire.hxx".}
proc fixConnected*(this: var ShapeFixWire; prec: StandardReal = -1.0): StandardBoolean {.
    importcpp: "FixConnected", header: "ShapeFix_Wire.hxx".}
proc fixEdgeCurves*(this: var ShapeFixWire): StandardBoolean {.
    importcpp: "FixEdgeCurves", header: "ShapeFix_Wire.hxx".}
proc fixDegenerated*(this: var ShapeFixWire): StandardBoolean {.
    importcpp: "FixDegenerated", header: "ShapeFix_Wire.hxx".}
proc fixSelfIntersection*(this: var ShapeFixWire): StandardBoolean {.
    importcpp: "FixSelfIntersection", header: "ShapeFix_Wire.hxx".}
proc fixLacking*(this: var ShapeFixWire; force: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "FixLacking", header: "ShapeFix_Wire.hxx".}
proc fixClosed*(this: var ShapeFixWire; prec: StandardReal = -1.0): StandardBoolean {.
    importcpp: "FixClosed", header: "ShapeFix_Wire.hxx".}
proc fixGaps3d*(this: var ShapeFixWire): StandardBoolean {.importcpp: "FixGaps3d",
    header: "ShapeFix_Wire.hxx".}
proc fixGaps2d*(this: var ShapeFixWire): StandardBoolean {.importcpp: "FixGaps2d",
    header: "ShapeFix_Wire.hxx".}
proc fixReorder*(this: var ShapeFixWire; wi: ShapeAnalysisWireOrder): StandardBoolean {.
    importcpp: "FixReorder", header: "ShapeFix_Wire.hxx".}
proc fixSmall*(this: var ShapeFixWire; num: StandardInteger; lockvtx: StandardBoolean;
              precsmall: StandardReal): StandardBoolean {.importcpp: "FixSmall",
    header: "ShapeFix_Wire.hxx".}
proc fixConnected*(this: var ShapeFixWire; num: StandardInteger; prec: StandardReal): StandardBoolean {.
    importcpp: "FixConnected", header: "ShapeFix_Wire.hxx".}
proc fixSeam*(this: var ShapeFixWire; num: StandardInteger): StandardBoolean {.
    importcpp: "FixSeam", header: "ShapeFix_Wire.hxx".}
proc fixShifted*(this: var ShapeFixWire): StandardBoolean {.importcpp: "FixShifted",
    header: "ShapeFix_Wire.hxx".}
proc fixDegenerated*(this: var ShapeFixWire; num: StandardInteger): StandardBoolean {.
    importcpp: "FixDegenerated", header: "ShapeFix_Wire.hxx".}
proc fixLacking*(this: var ShapeFixWire; num: StandardInteger;
                force: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "FixLacking", header: "ShapeFix_Wire.hxx".}
proc fixNotchedEdges*(this: var ShapeFixWire): StandardBoolean {.
    importcpp: "FixNotchedEdges", header: "ShapeFix_Wire.hxx".}
proc fixGap3d*(this: var ShapeFixWire; num: StandardInteger;
              convert: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "FixGap3d", header: "ShapeFix_Wire.hxx".}
proc fixGap2d*(this: var ShapeFixWire; num: StandardInteger;
              convert: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "FixGap2d", header: "ShapeFix_Wire.hxx".}
proc fixTails*(this: var ShapeFixWire): StandardBoolean {.importcpp: "FixTails",
    header: "ShapeFix_Wire.hxx".}
proc statusReorder*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusReorder", header: "ShapeFix_Wire.hxx".}
proc statusSmall*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusSmall", header: "ShapeFix_Wire.hxx".}
proc statusConnected*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusConnected", header: "ShapeFix_Wire.hxx".}
proc statusEdgeCurves*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusEdgeCurves", header: "ShapeFix_Wire.hxx".}
proc statusDegenerated*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusDegenerated", header: "ShapeFix_Wire.hxx".}
proc statusSelfIntersection*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusSelfIntersection", header: "ShapeFix_Wire.hxx".}
proc statusLacking*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusLacking", header: "ShapeFix_Wire.hxx".}
proc statusClosed*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusClosed", header: "ShapeFix_Wire.hxx".}
proc statusGaps3d*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusGaps3d", header: "ShapeFix_Wire.hxx".}
proc statusGaps2d*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusGaps2d", header: "ShapeFix_Wire.hxx".}
proc statusNotches*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusNotches", header: "ShapeFix_Wire.hxx".}
proc statusRemovedSegment*(this: ShapeFixWire): StandardBoolean {.noSideEffect,
    importcpp: "StatusRemovedSegment", header: "ShapeFix_Wire.hxx".}
proc statusFixTails*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusFixTails", header: "ShapeFix_Wire.hxx".}
proc lastFixStatus*(this: ShapeFixWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "LastFixStatus", header: "ShapeFix_Wire.hxx".}
proc fixEdgeTool*(this: ShapeFixWire): Handle[ShapeFixEdge] {.noSideEffect,
    importcpp: "FixEdgeTool", header: "ShapeFix_Wire.hxx".}
type
  ShapeFixWirebaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_Wire::get_type_name(@)",
                            header: "ShapeFix_Wire.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_Wire::get_type_descriptor(@)",
    header: "ShapeFix_Wire.hxx".}
proc dynamicType*(this: ShapeFixWire): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Wire.hxx".}

