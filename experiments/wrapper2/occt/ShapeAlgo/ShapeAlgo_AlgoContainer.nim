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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../TColGeom/TColGeom_SequenceOfCurve, ../TColGeom2d/TColGeom2d_SequenceOfCurve,
  ../TColGeom/TColGeom_HSequenceOfBoundedCurve,
  ../TColGeom2d/TColGeom2d_HSequenceOfBoundedCurve, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer

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
  Handle_ShapeAlgo_AlgoContainer* = handle[ShapeAlgo_AlgoContainer]
  ShapeAlgo_AlgoContainer* {.importcpp: "ShapeAlgo_AlgoContainer",
                            header: "ShapeAlgo_AlgoContainer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructShapeAlgo_AlgoContainer*(): ShapeAlgo_AlgoContainer {.constructor,
    importcpp: "ShapeAlgo_AlgoContainer(@)", header: "ShapeAlgo_AlgoContainer.hxx".}
proc SetToolContainer*(this: var ShapeAlgo_AlgoContainer;
                      TC: handle[ShapeAlgo_ToolContainer]) {.
    importcpp: "SetToolContainer", header: "ShapeAlgo_AlgoContainer.hxx".}
proc ToolContainer*(this: ShapeAlgo_AlgoContainer): handle[ShapeAlgo_ToolContainer] {.
    noSideEffect, importcpp: "ToolContainer", header: "ShapeAlgo_AlgoContainer.hxx".}
proc ConnectNextWire*(this: ShapeAlgo_AlgoContainer;
                     saw: handle[ShapeAnalysis_Wire];
                     nextsewd: handle[ShapeExtend_WireData];
                     maxtol: Standard_Real; distmin: var Standard_Real;
                     revsewd: var Standard_Boolean;
                     revnextsewd: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "ConnectNextWire",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc ApproxBSplineCurve*(this: ShapeAlgo_AlgoContainer;
                        bspline: handle[Geom_BSplineCurve];
                        seq: var TColGeom_SequenceOfCurve) {.noSideEffect,
    importcpp: "ApproxBSplineCurve", header: "ShapeAlgo_AlgoContainer.hxx".}
proc ApproxBSplineCurve*(this: ShapeAlgo_AlgoContainer;
                        bspline: handle[Geom2d_BSplineCurve];
                        seq: var TColGeom2d_SequenceOfCurve) {.noSideEffect,
    importcpp: "ApproxBSplineCurve", header: "ShapeAlgo_AlgoContainer.hxx".}
proc C0BSplineToSequenceOfC1BSplineCurve*(this: ShapeAlgo_AlgoContainer;
    BS: handle[Geom_BSplineCurve];
    seqBS: var handle[TColGeom_HSequenceOfBoundedCurve]): Standard_Boolean {.
    noSideEffect, importcpp: "C0BSplineToSequenceOfC1BSplineCurve",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc C0BSplineToSequenceOfC1BSplineCurve*(this: ShapeAlgo_AlgoContainer;
    BS: handle[Geom2d_BSplineCurve];
    seqBS: var handle[TColGeom2d_HSequenceOfBoundedCurve]): Standard_Boolean {.
    noSideEffect, importcpp: "C0BSplineToSequenceOfC1BSplineCurve",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc C0ShapeToC1Shape*(this: ShapeAlgo_AlgoContainer; shape: TopoDS_Shape;
                      tol: Standard_Real): TopoDS_Shape {.noSideEffect,
    importcpp: "C0ShapeToC1Shape", header: "ShapeAlgo_AlgoContainer.hxx".}
proc ConvertSurfaceToBSpline*(this: ShapeAlgo_AlgoContainer;
                             surf: handle[Geom_Surface]; UF: Standard_Real;
                             UL: Standard_Real; VF: Standard_Real; VL: Standard_Real): handle[
    Geom_BSplineSurface] {.noSideEffect, importcpp: "ConvertSurfaceToBSpline",
                          header: "ShapeAlgo_AlgoContainer.hxx".}
proc HomoWires*(this: ShapeAlgo_AlgoContainer; wireIn1: TopoDS_Wire;
               wireIn2: TopoDS_Wire; wireOut1: var TopoDS_Wire;
               wireOut2: var TopoDS_Wire; byParam: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "HomoWires", header: "ShapeAlgo_AlgoContainer.hxx".}
proc OuterWire*(this: ShapeAlgo_AlgoContainer; face: TopoDS_Face): TopoDS_Wire {.
    noSideEffect, importcpp: "OuterWire", header: "ShapeAlgo_AlgoContainer.hxx".}
proc ConvertToPeriodic*(this: ShapeAlgo_AlgoContainer; surf: handle[Geom_Surface]): handle[
    Geom_Surface] {.noSideEffect, importcpp: "ConvertToPeriodic",
                   header: "ShapeAlgo_AlgoContainer.hxx".}
proc GetFaceUVBounds*(this: ShapeAlgo_AlgoContainer; F: TopoDS_Face;
                     Umin: var Standard_Real; Umax: var Standard_Real;
                     Vmin: var Standard_Real; Vmax: var Standard_Real) {.noSideEffect,
    importcpp: "GetFaceUVBounds", header: "ShapeAlgo_AlgoContainer.hxx".}
proc ConvertCurveToBSpline*(this: ShapeAlgo_AlgoContainer; C3D: handle[Geom_Curve];
                           First: Standard_Real; Last: Standard_Real;
                           Tol3d: Standard_Real; Continuity: GeomAbs_Shape;
                           MaxSegments: Standard_Integer;
                           MaxDegree: Standard_Integer): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "ConvertCurveToBSpline",
    header: "ShapeAlgo_AlgoContainer.hxx".}
type
  ShapeAlgo_AlgoContainerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeAlgo_AlgoContainer::get_type_name(@)",
                              header: "ShapeAlgo_AlgoContainer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeAlgo_AlgoContainer::get_type_descriptor(@)",
    header: "ShapeAlgo_AlgoContainer.hxx".}
proc DynamicType*(this: ShapeAlgo_AlgoContainer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeAlgo_AlgoContainer.hxx".}