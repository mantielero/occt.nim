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
# when defined(Status):
#   discard
discard "forward decl of ShapeAnalysis_Wire"
discard "forward decl of ShapeAnalysis_Wire"
type
  HandleShapeAnalysisWire* = Handle[ShapeAnalysisWire]

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
  ShapeAnalysisWire* {.importcpp: "ShapeAnalysis_Wire",
                      header: "ShapeAnalysis_Wire.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructShapeAnalysisWire*(): ShapeAnalysisWire {.constructor,
    importcpp: "ShapeAnalysis_Wire(@)", header: "ShapeAnalysis_Wire.hxx".}
proc constructShapeAnalysisWire*(wire: TopoDS_Wire; face: TopoDS_Face;
                                precision: StandardReal): ShapeAnalysisWire {.
    constructor, importcpp: "ShapeAnalysis_Wire(@)",
    header: "ShapeAnalysis_Wire.hxx".}
proc constructShapeAnalysisWire*(sbwd: Handle[ShapeExtendWireData];
                                face: TopoDS_Face; precision: StandardReal): ShapeAnalysisWire {.
    constructor, importcpp: "ShapeAnalysis_Wire(@)",
    header: "ShapeAnalysis_Wire.hxx".}
proc init*(this: var ShapeAnalysisWire; wire: TopoDS_Wire; face: TopoDS_Face;
          precision: StandardReal) {.importcpp: "Init",
                                   header: "ShapeAnalysis_Wire.hxx".}
proc init*(this: var ShapeAnalysisWire; sbwd: Handle[ShapeExtendWireData];
          face: TopoDS_Face; precision: StandardReal) {.importcpp: "Init",
    header: "ShapeAnalysis_Wire.hxx".}
proc load*(this: var ShapeAnalysisWire; wire: TopoDS_Wire) {.importcpp: "Load",
    header: "ShapeAnalysis_Wire.hxx".}
proc load*(this: var ShapeAnalysisWire; sbwd: Handle[ShapeExtendWireData]) {.
    importcpp: "Load", header: "ShapeAnalysis_Wire.hxx".}
proc setFace*(this: var ShapeAnalysisWire; face: TopoDS_Face) {.importcpp: "SetFace",
    header: "ShapeAnalysis_Wire.hxx".}
proc setSurface*(this: var ShapeAnalysisWire; surface: Handle[GeomSurface]) {.
    importcpp: "SetSurface", header: "ShapeAnalysis_Wire.hxx".}
proc setSurface*(this: var ShapeAnalysisWire; surface: Handle[GeomSurface];
                location: TopLocLocation) {.importcpp: "SetSurface",
    header: "ShapeAnalysis_Wire.hxx".}
proc setPrecision*(this: var ShapeAnalysisWire; precision: StandardReal) {.
    importcpp: "SetPrecision", header: "ShapeAnalysis_Wire.hxx".}
proc clearStatuses*(this: var ShapeAnalysisWire) {.importcpp: "ClearStatuses",
    header: "ShapeAnalysis_Wire.hxx".}
proc isLoaded*(this: ShapeAnalysisWire): StandardBoolean {.noSideEffect,
    importcpp: "IsLoaded", header: "ShapeAnalysis_Wire.hxx".}
proc isReady*(this: ShapeAnalysisWire): StandardBoolean {.noSideEffect,
    importcpp: "IsReady", header: "ShapeAnalysis_Wire.hxx".}
proc precision*(this: ShapeAnalysisWire): StandardReal {.noSideEffect,
    importcpp: "Precision", header: "ShapeAnalysis_Wire.hxx".}
proc wireData*(this: ShapeAnalysisWire): Handle[ShapeExtendWireData] {.noSideEffect,
    importcpp: "WireData", header: "ShapeAnalysis_Wire.hxx".}
proc nbEdges*(this: ShapeAnalysisWire): StandardInteger {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_Wire.hxx".}
proc face*(this: ShapeAnalysisWire): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "ShapeAnalysis_Wire.hxx".}
proc surface*(this: ShapeAnalysisWire): Handle[ShapeAnalysisSurface] {.noSideEffect,
    importcpp: "Surface", header: "ShapeAnalysis_Wire.hxx".}
proc perform*(this: var ShapeAnalysisWire): StandardBoolean {.importcpp: "Perform",
    header: "ShapeAnalysis_Wire.hxx".}
proc checkOrder*(this: var ShapeAnalysisWire;
                isClosed: StandardBoolean = standardTrue;
                mode3d: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "CheckOrder", header: "ShapeAnalysis_Wire.hxx".}
proc checkConnected*(this: var ShapeAnalysisWire; prec: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckConnected", header: "ShapeAnalysis_Wire.hxx".}
proc checkSmall*(this: var ShapeAnalysisWire; precsmall: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckSmall", header: "ShapeAnalysis_Wire.hxx".}
proc checkEdgeCurves*(this: var ShapeAnalysisWire): StandardBoolean {.
    importcpp: "CheckEdgeCurves", header: "ShapeAnalysis_Wire.hxx".}
proc checkDegenerated*(this: var ShapeAnalysisWire): StandardBoolean {.
    importcpp: "CheckDegenerated", header: "ShapeAnalysis_Wire.hxx".}
proc checkClosed*(this: var ShapeAnalysisWire; prec: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckClosed", header: "ShapeAnalysis_Wire.hxx".}
proc checkSelfIntersection*(this: var ShapeAnalysisWire): StandardBoolean {.
    importcpp: "CheckSelfIntersection", header: "ShapeAnalysis_Wire.hxx".}
proc checkLacking*(this: var ShapeAnalysisWire): StandardBoolean {.
    importcpp: "CheckLacking", header: "ShapeAnalysis_Wire.hxx".}
proc checkGaps3d*(this: var ShapeAnalysisWire): StandardBoolean {.
    importcpp: "CheckGaps3d", header: "ShapeAnalysis_Wire.hxx".}
proc checkGaps2d*(this: var ShapeAnalysisWire): StandardBoolean {.
    importcpp: "CheckGaps2d", header: "ShapeAnalysis_Wire.hxx".}
proc checkCurveGaps*(this: var ShapeAnalysisWire): StandardBoolean {.
    importcpp: "CheckCurveGaps", header: "ShapeAnalysis_Wire.hxx".}
proc checkOrder*(this: var ShapeAnalysisWire; sawo: var ShapeAnalysisWireOrder;
                isClosed: StandardBoolean = standardTrue;
                mode3d: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "CheckOrder", header: "ShapeAnalysis_Wire.hxx".}
proc checkConnected*(this: var ShapeAnalysisWire; num: StandardInteger;
                    prec: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckConnected", header: "ShapeAnalysis_Wire.hxx".}
proc checkSmall*(this: var ShapeAnalysisWire; num: StandardInteger;
                precsmall: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckSmall", header: "ShapeAnalysis_Wire.hxx".}
proc checkSeam*(this: var ShapeAnalysisWire; num: StandardInteger;
               c1: var Handle[Geom2dCurve]; c2: var Handle[Geom2dCurve];
               cf: var StandardReal; cl: var StandardReal): StandardBoolean {.
    importcpp: "CheckSeam", header: "ShapeAnalysis_Wire.hxx".}
proc checkSeam*(this: var ShapeAnalysisWire; num: StandardInteger): StandardBoolean {.
    importcpp: "CheckSeam", header: "ShapeAnalysis_Wire.hxx".}
proc checkDegenerated*(this: var ShapeAnalysisWire; num: StandardInteger;
                      dgnr1: var GpPnt2d; dgnr2: var GpPnt2d): StandardBoolean {.
    importcpp: "CheckDegenerated", header: "ShapeAnalysis_Wire.hxx".}
proc checkDegenerated*(this: var ShapeAnalysisWire; num: StandardInteger): StandardBoolean {.
    importcpp: "CheckDegenerated", header: "ShapeAnalysis_Wire.hxx".}
proc checkGap3d*(this: var ShapeAnalysisWire; num: StandardInteger = 0): StandardBoolean {.
    importcpp: "CheckGap3d", header: "ShapeAnalysis_Wire.hxx".}
proc checkGap2d*(this: var ShapeAnalysisWire; num: StandardInteger = 0): StandardBoolean {.
    importcpp: "CheckGap2d", header: "ShapeAnalysis_Wire.hxx".}
proc checkCurveGap*(this: var ShapeAnalysisWire; num: StandardInteger = 0): StandardBoolean {.
    importcpp: "CheckCurveGap", header: "ShapeAnalysis_Wire.hxx".}
proc checkSelfIntersectingEdge*(this: var ShapeAnalysisWire; num: StandardInteger;
    points2d: var IntRes2dSequenceOfIntersectionPoint;
                               points3d: var TColgpSequenceOfPnt): StandardBoolean {.
    importcpp: "CheckSelfIntersectingEdge", header: "ShapeAnalysis_Wire.hxx".}
proc checkSelfIntersectingEdge*(this: var ShapeAnalysisWire; num: StandardInteger): StandardBoolean {.
    importcpp: "CheckSelfIntersectingEdge", header: "ShapeAnalysis_Wire.hxx".}
proc checkIntersectingEdges*(this: var ShapeAnalysisWire; num: StandardInteger;
                            points2d: var IntRes2dSequenceOfIntersectionPoint;
                            points3d: var TColgpSequenceOfPnt;
                            errors: var TColStdSequenceOfReal): StandardBoolean {.
    importcpp: "CheckIntersectingEdges", header: "ShapeAnalysis_Wire.hxx".}
proc checkIntersectingEdges*(this: var ShapeAnalysisWire; num: StandardInteger): StandardBoolean {.
    importcpp: "CheckIntersectingEdges", header: "ShapeAnalysis_Wire.hxx".}
proc checkIntersectingEdges*(this: var ShapeAnalysisWire; num1: StandardInteger;
                            num2: StandardInteger;
                            points2d: var IntRes2dSequenceOfIntersectionPoint;
                            points3d: var TColgpSequenceOfPnt;
                            errors: var TColStdSequenceOfReal): StandardBoolean {.
    importcpp: "CheckIntersectingEdges", header: "ShapeAnalysis_Wire.hxx".}
proc checkIntersectingEdges*(this: var ShapeAnalysisWire; num1: StandardInteger;
                            num2: StandardInteger): StandardBoolean {.
    importcpp: "CheckIntersectingEdges", header: "ShapeAnalysis_Wire.hxx".}
proc checkLacking*(this: var ShapeAnalysisWire; num: StandardInteger;
                  tolerance: StandardReal; p2d1: var GpPnt2d; p2d2: var GpPnt2d): StandardBoolean {.
    importcpp: "CheckLacking", header: "ShapeAnalysis_Wire.hxx".}
proc checkLacking*(this: var ShapeAnalysisWire; num: StandardInteger;
                  tolerance: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckLacking", header: "ShapeAnalysis_Wire.hxx".}
proc checkOuterBound*(this: var ShapeAnalysisWire;
                     aPIMake: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "CheckOuterBound", header: "ShapeAnalysis_Wire.hxx".}
proc checkNotchedEdges*(this: var ShapeAnalysisWire; num: StandardInteger;
                       shortNum: var StandardInteger; param: var StandardReal;
                       tolerance: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckNotchedEdges", header: "ShapeAnalysis_Wire.hxx".}
proc checkSmallArea*(this: var ShapeAnalysisWire; theWire: TopoDS_Wire): StandardBoolean {.
    importcpp: "CheckSmallArea", header: "ShapeAnalysis_Wire.hxx".}
proc checkShapeConnect*(this: var ShapeAnalysisWire; shape: TopoDS_Shape;
                       prec: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckShapeConnect", header: "ShapeAnalysis_Wire.hxx".}
proc checkShapeConnect*(this: var ShapeAnalysisWire; tailhead: var StandardReal;
                       tailtail: var StandardReal; headtail: var StandardReal;
                       headhead: var StandardReal; shape: TopoDS_Shape;
                       prec: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckShapeConnect", header: "ShapeAnalysis_Wire.hxx".}
proc checkLoop*(this: var ShapeAnalysisWire;
               aMapLoopVertices: var TopToolsIndexedMapOfShape;
               aMapVertexEdges: var TopToolsDataMapOfShapeListOfShape;
               aMapSmallEdges: var TopToolsMapOfShape;
               aMapSeemEdges: var TopToolsMapOfShape): StandardBoolean {.
    importcpp: "CheckLoop", header: "ShapeAnalysis_Wire.hxx".}
proc checkTail*(this: var ShapeAnalysisWire; theEdge1: TopoDS_Edge;
               theEdge2: TopoDS_Edge; theMaxSine: StandardReal;
               theMaxWidth: StandardReal; theMaxTolerance: StandardReal;
               theEdge11: var TopoDS_Edge; theEdge12: var TopoDS_Edge;
               theEdge21: var TopoDS_Edge; theEdge22: var TopoDS_Edge): StandardBoolean {.
    importcpp: "CheckTail", header: "ShapeAnalysis_Wire.hxx".}
proc statusOrder*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusOrder", header: "ShapeAnalysis_Wire.hxx".}
proc statusConnected*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusConnected", header: "ShapeAnalysis_Wire.hxx".}
proc statusEdgeCurves*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusEdgeCurves", header: "ShapeAnalysis_Wire.hxx".}
proc statusDegenerated*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusDegenerated", header: "ShapeAnalysis_Wire.hxx".}
proc statusClosed*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusClosed", header: "ShapeAnalysis_Wire.hxx".}
proc statusSmall*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusSmall", header: "ShapeAnalysis_Wire.hxx".}
proc statusSelfIntersection*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusSelfIntersection",
    header: "ShapeAnalysis_Wire.hxx".}
proc statusLacking*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusLacking", header: "ShapeAnalysis_Wire.hxx".}
proc statusGaps3d*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusGaps3d", header: "ShapeAnalysis_Wire.hxx".}
proc statusGaps2d*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusGaps2d", header: "ShapeAnalysis_Wire.hxx".}
proc statusCurveGaps*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusCurveGaps", header: "ShapeAnalysis_Wire.hxx".}
proc statusLoop*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusLoop", header: "ShapeAnalysis_Wire.hxx".}
proc lastCheckStatus*(this: ShapeAnalysisWire; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "LastCheckStatus", header: "ShapeAnalysis_Wire.hxx".}
proc minDistance3d*(this: ShapeAnalysisWire): StandardReal {.noSideEffect,
    importcpp: "MinDistance3d", header: "ShapeAnalysis_Wire.hxx".}
proc minDistance2d*(this: ShapeAnalysisWire): StandardReal {.noSideEffect,
    importcpp: "MinDistance2d", header: "ShapeAnalysis_Wire.hxx".}
proc maxDistance3d*(this: ShapeAnalysisWire): StandardReal {.noSideEffect,
    importcpp: "MaxDistance3d", header: "ShapeAnalysis_Wire.hxx".}
proc maxDistance2d*(this: ShapeAnalysisWire): StandardReal {.noSideEffect,
    importcpp: "MaxDistance2d", header: "ShapeAnalysis_Wire.hxx".}
type
  ShapeAnalysisWirebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeAnalysis_Wire::get_type_name(@)",
                            header: "ShapeAnalysis_Wire.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeAnalysis_Wire::get_type_descriptor(@)",
    header: "ShapeAnalysis_Wire.hxx".}
proc dynamicType*(this: ShapeAnalysisWire): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeAnalysis_Wire.hxx".}

