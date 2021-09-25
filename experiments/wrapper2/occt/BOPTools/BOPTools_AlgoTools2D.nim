##  Created by: Peter KURNEV
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Vec"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of ProjLib_ProjectedCurve"
discard "forward decl of IntTools_Context"
type
  BOPToolsAlgoTools2D* {.importcpp: "BOPTools_AlgoTools2D",
                        header: "BOPTools_AlgoTools2D.hxx", bycopy.} = object ## ! Compute P-Curve for the edge <aE> on the face
                                                                         ## <aF>.<br>
                                                                         ## ! Raises
                                                                         ## exception
                                                                         ## Standard_ConstructionError if
                                                                         ## projection
                                                                         ## algorithm
                                                                         ## fails.<br>
                                                                         ## !
                                                                         ## <theContext> - storage for caching the
                                                                         ## geometrical tools


proc buildPCurveForEdgeOnFace*(aE: TopoDS_Edge; aF: TopoDS_Face; theContext: Handle[
    IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools2D::BuildPCurveForEdgeOnFace(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc edgeTangent*(anE: TopoDS_Edge; aT: float; tau: var Vec): bool {.
    importcpp: "BOPTools_AlgoTools2D::EdgeTangent(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc pointOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: float; u: var float;
                    v: var float; theContext: Handle[IntToolsContext] = handle[
    IntToolsContext]()) {.importcpp: "BOPTools_AlgoTools2D::PointOnSurface(@)",
                         header: "BOPTools_AlgoTools2D.hxx".}
proc curveOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face; aC: var Handle[Geom2dCurve];
                    aToler: var float; theContext: Handle[IntToolsContext] = handle[
    IntToolsContext]()) {.importcpp: "BOPTools_AlgoTools2D::CurveOnSurface(@)",
                         header: "BOPTools_AlgoTools2D.hxx".}
proc curveOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face; aC: var Handle[Geom2dCurve];
                    aFirst: var float; aLast: var float; aToler: var float; theContext: Handle[
    IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools2D::CurveOnSurface(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc hasCurveOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face;
                       aC: var Handle[Geom2dCurve]; aFirst: var float;
                       aLast: var float; aToler: var float): bool {.
    importcpp: "BOPTools_AlgoTools2D::HasCurveOnSurface(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc hasCurveOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face): bool {.
    importcpp: "BOPTools_AlgoTools2D::HasCurveOnSurface(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc adjustPCurveOnFace*(theF: TopoDS_Face; theC3D: Handle[GeomCurve];
                        theC2D: Handle[Geom2dCurve];
                        theC2DA: var Handle[Geom2dCurve]; theContext: Handle[
    IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools2D::AdjustPCurveOnFace(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc adjustPCurveOnFace*(theF: TopoDS_Face; theFirst: float; theLast: float;
                        theC2D: Handle[Geom2dCurve];
                        theC2DA: var Handle[Geom2dCurve]; theContext: Handle[
    IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools2D::AdjustPCurveOnFace(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc adjustPCurveOnSurf*(aF: BRepAdaptorSurface; aT1: float; aT2: float;
                        aC2D: Handle[Geom2dCurve]; aC2DA: var Handle[Geom2dCurve]) {.
    importcpp: "BOPTools_AlgoTools2D::AdjustPCurveOnSurf(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc intermediatePoint*(aFirst: float; aLast: float): float {.
    importcpp: "BOPTools_AlgoTools2D::IntermediatePoint(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc intermediatePoint*(anE: TopoDS_Edge): float {.
    importcpp: "BOPTools_AlgoTools2D::IntermediatePoint(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc make2D*(aE: TopoDS_Edge; aF: TopoDS_Face; aC: var Handle[Geom2dCurve];
            aFirst: var float; aLast: var float; aToler: var float;
            theContext: Handle[IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools2D::Make2D(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc makePCurveOnFace*(aF: TopoDS_Face; c3d: Handle[GeomCurve];
                      aC: var Handle[Geom2dCurve]; aToler: var float; theContext: Handle[
    IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools2D::MakePCurveOnFace(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc makePCurveOnFace*(aF: TopoDS_Face; c3d: Handle[GeomCurve]; aT1: float; aT2: float;
                      aC: var Handle[Geom2dCurve]; aToler: var float; theContext: Handle[
    IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools2D::MakePCurveOnFace(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc attachExistingPCurve*(aEold: TopoDS_Edge; aEnew: TopoDS_Edge; aF: TopoDS_Face;
                          aCtx: Handle[IntToolsContext]): int {.
    importcpp: "BOPTools_AlgoTools2D::AttachExistingPCurve(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc isEdgeIsoline*(theE: TopoDS_Edge; theF: TopoDS_Face; isTheUIso: var bool;
                   isTheVIso: var bool) {.importcpp: "BOPTools_AlgoTools2D::IsEdgeIsoline(@)",
                                       header: "BOPTools_AlgoTools2D.hxx".}
