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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Vec"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of ProjLib_ProjectedCurve"
discard "forward decl of IntTools_Context"
type
  BOPTools_AlgoTools2D* {.importcpp: "BOPTools_AlgoTools2D",
                         header: "BOPTools_AlgoTools2D.hxx", bycopy.} = object ## !
                                                                          ## Compute
                                                                          ## P-Curve for the edge <aE> on the face
                                                                          ## <aF>.<br>
                                                                          ## ! Raises
                                                                          ## exception
                                                                          ## Standard_ConstructionError if
                                                                          ## projection
                                                                          ## algorithm
                                                                          ## fails.<br>
                                                                          ## !
                                                                          ## <theContext> -
                                                                          ## storage for
                                                                          ## caching the
                                                                          ## geometrical tools


proc BuildPCurveForEdgeOnFace*(aE: TopoDS_Edge; aF: TopoDS_Face; theContext: handle[
    IntTools_Context] = handle[IntTools_Context]()) {.
    importcpp: "BOPTools_AlgoTools2D::BuildPCurveForEdgeOnFace(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc EdgeTangent*(anE: TopoDS_Edge; aT: Standard_Real; Tau: var gp_Vec): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools2D::EdgeTangent(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc PointOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: Standard_Real;
                    U: var Standard_Real; V: var Standard_Real; theContext: handle[
    IntTools_Context] = handle[IntTools_Context]()) {.
    importcpp: "BOPTools_AlgoTools2D::PointOnSurface(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc CurveOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face; aC: var handle[Geom2d_Curve];
                    aToler: var Standard_Real; theContext: handle[IntTools_Context] = handle[
    IntTools_Context]()) {.importcpp: "BOPTools_AlgoTools2D::CurveOnSurface(@)",
                          header: "BOPTools_AlgoTools2D.hxx".}
proc CurveOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face; aC: var handle[Geom2d_Curve];
                    aFirst: var Standard_Real; aLast: var Standard_Real;
                    aToler: var Standard_Real; theContext: handle[IntTools_Context] = handle[
    IntTools_Context]()) {.importcpp: "BOPTools_AlgoTools2D::CurveOnSurface(@)",
                          header: "BOPTools_AlgoTools2D.hxx".}
proc HasCurveOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face;
                       aC: var handle[Geom2d_Curve]; aFirst: var Standard_Real;
                       aLast: var Standard_Real; aToler: var Standard_Real): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools2D::HasCurveOnSurface(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc HasCurveOnSurface*(aE: TopoDS_Edge; aF: TopoDS_Face): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools2D::HasCurveOnSurface(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc AdjustPCurveOnFace*(theF: TopoDS_Face; theC3D: handle[Geom_Curve];
                        theC2D: handle[Geom2d_Curve];
                        theC2DA: var handle[Geom2d_Curve]; theContext: handle[
    IntTools_Context] = handle[IntTools_Context]()) {.
    importcpp: "BOPTools_AlgoTools2D::AdjustPCurveOnFace(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc AdjustPCurveOnFace*(theF: TopoDS_Face; theFirst: Standard_Real;
                        theLast: Standard_Real; theC2D: handle[Geom2d_Curve];
                        theC2DA: var handle[Geom2d_Curve]; theContext: handle[
    IntTools_Context] = handle[IntTools_Context]()) {.
    importcpp: "BOPTools_AlgoTools2D::AdjustPCurveOnFace(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc AdjustPCurveOnSurf*(aF: BRepAdaptor_Surface; aT1: Standard_Real;
                        aT2: Standard_Real; aC2D: handle[Geom2d_Curve];
                        aC2DA: var handle[Geom2d_Curve]) {.
    importcpp: "BOPTools_AlgoTools2D::AdjustPCurveOnSurf(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc IntermediatePoint*(aFirst: Standard_Real; aLast: Standard_Real): Standard_Real {.
    importcpp: "BOPTools_AlgoTools2D::IntermediatePoint(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc IntermediatePoint*(anE: TopoDS_Edge): Standard_Real {.
    importcpp: "BOPTools_AlgoTools2D::IntermediatePoint(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc Make2D*(aE: TopoDS_Edge; aF: TopoDS_Face; aC: var handle[Geom2d_Curve];
            aFirst: var Standard_Real; aLast: var Standard_Real;
            aToler: var Standard_Real;
            theContext: handle[IntTools_Context] = handle[IntTools_Context]()) {.
    importcpp: "BOPTools_AlgoTools2D::Make2D(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc MakePCurveOnFace*(aF: TopoDS_Face; C3D: handle[Geom_Curve];
                      aC: var handle[Geom2d_Curve]; aToler: var Standard_Real;
    theContext: handle[IntTools_Context] = handle[IntTools_Context]()) {.
    importcpp: "BOPTools_AlgoTools2D::MakePCurveOnFace(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc MakePCurveOnFace*(aF: TopoDS_Face; C3D: handle[Geom_Curve]; aT1: Standard_Real;
                      aT2: Standard_Real; aC: var handle[Geom2d_Curve];
                      aToler: var Standard_Real; theContext: handle[IntTools_Context] = handle[
    IntTools_Context]()) {.importcpp: "BOPTools_AlgoTools2D::MakePCurveOnFace(@)",
                          header: "BOPTools_AlgoTools2D.hxx".}
proc AttachExistingPCurve*(aEold: TopoDS_Edge; aEnew: TopoDS_Edge; aF: TopoDS_Face;
                          aCtx: handle[IntTools_Context]): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools2D::AttachExistingPCurve(@)",
    header: "BOPTools_AlgoTools2D.hxx".}
proc IsEdgeIsoline*(theE: TopoDS_Edge; theF: TopoDS_Face;
                   isTheUIso: var Standard_Boolean; isTheVIso: var Standard_Boolean) {.
    importcpp: "BOPTools_AlgoTools2D::IsEdgeIsoline(@)",
    header: "BOPTools_AlgoTools2D.hxx".}