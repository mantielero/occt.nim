##  Created on: 2000-02-07
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of ShapeAlgo_ToolContainer"
discard "forward decl of ShapeAnalysis_Wire"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Curve"
discard "forward decl of ShapeAlgo_AlgoContainer"
discard "forward decl of ShapeAlgo_AlgoContainer"
type
  HandleShapeAlgoAlgoContainer* = Handle[ShapeAlgoAlgoContainer]
  ShapeAlgoAlgoContainer* {.importcpp: "ShapeAlgo_AlgoContainer",
                           header: "ShapeAlgo_AlgoContainer.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructShapeAlgoAlgoContainer*(): ShapeAlgoAlgoContainer {.constructor,
    importcpp: "ShapeAlgo_AlgoContainer(@)", header: "ShapeAlgo_AlgoContainer.hxx".}
proc setToolContainer*(this: var ShapeAlgoAlgoContainer;
                      tc: Handle[ShapeAlgoToolContainer]) {.
    importcpp: "SetToolContainer", header: "ShapeAlgo_AlgoContainer.hxx".}
proc toolContainer*(this: ShapeAlgoAlgoContainer): Handle[ShapeAlgoToolContainer] {.
    noSideEffect, importcpp: "ToolContainer", header: "ShapeAlgo_AlgoContainer.hxx".}
proc connectNextWire*(this: ShapeAlgoAlgoContainer; saw: Handle[ShapeAnalysisWire];
                     nextsewd: Handle[ShapeExtendWireData]; maxtol: float;
                     distmin: var float; revsewd: var bool; revnextsewd: var bool): bool {.
    noSideEffect, importcpp: "ConnectNextWire",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc approxBSplineCurve*(this: ShapeAlgoAlgoContainer;
                        bspline: Handle[GeomBSplineCurve];
                        seq: var TColGeomSequenceOfCurve) {.noSideEffect,
    importcpp: "ApproxBSplineCurve", header: "ShapeAlgo_AlgoContainer.hxx".}
proc approxBSplineCurve*(this: ShapeAlgoAlgoContainer;
                        bspline: Handle[Geom2dBSplineCurve];
                        seq: var TColGeom2dSequenceOfCurve) {.noSideEffect,
    importcpp: "ApproxBSplineCurve", header: "ShapeAlgo_AlgoContainer.hxx".}
proc c0BSplineToSequenceOfC1BSplineCurve*(this: ShapeAlgoAlgoContainer;
    bs: Handle[GeomBSplineCurve];
    seqBS: var Handle[TColGeomHSequenceOfBoundedCurve]): bool {.noSideEffect,
    importcpp: "C0BSplineToSequenceOfC1BSplineCurve",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc c0BSplineToSequenceOfC1BSplineCurve*(this: ShapeAlgoAlgoContainer;
    bs: Handle[Geom2dBSplineCurve];
    seqBS: var Handle[TColGeom2dHSequenceOfBoundedCurve]): bool {.noSideEffect,
    importcpp: "C0BSplineToSequenceOfC1BSplineCurve",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc c0ShapeToC1Shape*(this: ShapeAlgoAlgoContainer; shape: TopoDS_Shape; tol: float): TopoDS_Shape {.
    noSideEffect, importcpp: "C0ShapeToC1Shape",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc convertSurfaceToBSpline*(this: ShapeAlgoAlgoContainer;
                             surf: Handle[GeomSurface]; uf: float; ul: float;
                             vf: float; vl: float): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "ConvertSurfaceToBSpline",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc homoWires*(this: ShapeAlgoAlgoContainer; wireIn1: TopoDS_Wire;
               wireIn2: TopoDS_Wire; wireOut1: var TopoDS_Wire;
               wireOut2: var TopoDS_Wire; byParam: bool): bool {.noSideEffect,
    importcpp: "HomoWires", header: "ShapeAlgo_AlgoContainer.hxx".}
proc outerWire*(this: ShapeAlgoAlgoContainer; face: TopoDS_Face): TopoDS_Wire {.
    noSideEffect, importcpp: "OuterWire", header: "ShapeAlgo_AlgoContainer.hxx".}
proc convertToPeriodic*(this: ShapeAlgoAlgoContainer; surf: Handle[GeomSurface]): Handle[
    GeomSurface] {.noSideEffect, importcpp: "ConvertToPeriodic",
                  header: "ShapeAlgo_AlgoContainer.hxx".}
proc getFaceUVBounds*(this: ShapeAlgoAlgoContainer; f: TopoDS_Face; umin: var float;
                     umax: var float; vmin: var float; vmax: var float) {.noSideEffect,
    importcpp: "GetFaceUVBounds", header: "ShapeAlgo_AlgoContainer.hxx".}
proc convertCurveToBSpline*(this: ShapeAlgoAlgoContainer; c3d: Handle[GeomCurve];
                           first: float; last: float; tol3d: float;
                           continuity: GeomAbsShape; maxSegments: int;
                           maxDegree: int): Handle[GeomBSplineCurve] {.
    noSideEffect, importcpp: "ConvertCurveToBSpline",
    header: "ShapeAlgo_AlgoContainer.hxx".}
type
  ShapeAlgoAlgoContainerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeAlgo_AlgoContainer::get_type_name(@)",
                            header: "ShapeAlgo_AlgoContainer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeAlgo_AlgoContainer::get_type_descriptor(@)",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc dynamicType*(this: ShapeAlgoAlgoContainer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeAlgo_AlgoContainer.hxx".}
