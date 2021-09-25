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
discard "forward decl of gp_Dir"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of IntTools_Context"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Shape"
type
  BOPToolsAlgoTools3D* {.importcpp: "BOPTools_AlgoTools3D",
                        header: "BOPTools_AlgoTools3D.hxx", bycopy.} = object ## ! Makes the edge
                                                                         ## <theESplit> seam edge for the face
                                                                         ## <theFace> basing on the surface
                                                                         ## properties (U and V
                                                                         ## periods)


proc doSplitSEAMOnFace*(theESplit: TopoDS_Edge; theFace: TopoDS_Face): bool {.
    importcpp: "BOPTools_AlgoTools3D::DoSplitSEAMOnFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc doSplitSEAMOnFace*(theEOrigin: TopoDS_Edge; theESplit: TopoDS_Edge;
                       theFace: TopoDS_Face): bool {.
    importcpp: "BOPTools_AlgoTools3D::DoSplitSEAMOnFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc getNormalToFaceOnEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: float; aD: var Dir;
    theContext: Handle[IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools3D::GetNormalToFaceOnEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc getNormalToFaceOnEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aD: var Dir; theContext: Handle[
    IntToolsContext] = handle[IntToolsContext]()) {.
    importcpp: "BOPTools_AlgoTools3D::GetNormalToFaceOnEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc senseFlag*(aNF1: Dir; aNF2: Dir): int {.importcpp: "BOPTools_AlgoTools3D::SenseFlag(@)",
                                       header: "BOPTools_AlgoTools3D.hxx".}
proc getNormalToSurface*(`aS`: Handle[GeomSurface]; u: float; v: float; aD: var Dir): bool {.
    importcpp: "BOPTools_AlgoTools3D::GetNormalToSurface(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc getApproxNormalToFaceOnEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: float;
                                 aPx: var Pnt; aD: var Dir;
                                 theContext: Handle[IntToolsContext]): bool {.
    importcpp: "BOPTools_AlgoTools3D::GetApproxNormalToFaceOnEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc getApproxNormalToFaceOnEdge*(theE: TopoDS_Edge; theF: TopoDS_Face; aT: float;
                                 aP: var Pnt; aDNF: var Dir; aDt2D: float): bool {.
    importcpp: "BOPTools_AlgoTools3D::GetApproxNormalToFaceOnEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc getApproxNormalToFaceOnEdge*(theE: TopoDS_Edge; theF: TopoDS_Face; aT: float;
                                 aDt2D: float; aP: var Pnt; aDNF: var Dir;
                                 theContext: Handle[IntToolsContext]): bool {.
    importcpp: "BOPTools_AlgoTools3D::GetApproxNormalToFaceOnEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc pointNearEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: float; aDt2D: float;
                   aP2D: var Pnt2d; aPx: var Pnt; theContext: Handle[IntToolsContext]): int {.
    importcpp: "BOPTools_AlgoTools3D::PointNearEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc pointNearEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: float; aDt2D: float;
                   aP2D: var Pnt2d; aPx: var Pnt): int {.
    importcpp: "BOPTools_AlgoTools3D::PointNearEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc pointNearEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: float; aP2D: var Pnt2d;
                   aPx: var Pnt; theContext: Handle[IntToolsContext]): int {.
    importcpp: "BOPTools_AlgoTools3D::PointNearEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc pointNearEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aP2D: var Pnt2d; aPx: var Pnt;
                   theContext: Handle[IntToolsContext]): int {.
    importcpp: "BOPTools_AlgoTools3D::PointNearEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc minStepIn2d*(): float {.importcpp: "BOPTools_AlgoTools3D::MinStepIn2d(@)",
                          header: "BOPTools_AlgoTools3D.hxx".}
proc isEmptyShape*(`aS`: TopoDS_Shape): bool {.
    importcpp: "BOPTools_AlgoTools3D::IsEmptyShape(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc orientEdgeOnFace*(aE: TopoDS_Edge; aF: TopoDS_Face; aER: var TopoDS_Edge) {.
    importcpp: "BOPTools_AlgoTools3D::OrientEdgeOnFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc pointInFace*(theF: TopoDS_Face; theP: var Pnt; theP2D: var Pnt2d;
                 theContext: Handle[IntToolsContext]): int {.
    importcpp: "BOPTools_AlgoTools3D::PointInFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc pointInFace*(theF: TopoDS_Face; theE: TopoDS_Edge; theT: float; theDt2D: float;
                 theP: var Pnt; theP2D: var Pnt2d; theContext: Handle[IntToolsContext]): int {.
    importcpp: "BOPTools_AlgoTools3D::PointInFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc pointInFace*(theF: TopoDS_Face; theL: Handle[Geom2dCurve]; theP: var Pnt;
                 theP2D: var Pnt2d; theContext: Handle[IntToolsContext];
                 theDt2D: float = 0.0): int {.
    importcpp: "BOPTools_AlgoTools3D::PointInFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
