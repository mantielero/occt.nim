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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

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
  BOPTools_AlgoTools3D* {.importcpp: "BOPTools_AlgoTools3D",
                         header: "BOPTools_AlgoTools3D.hxx", bycopy.} = object ## ! Makes the edge
                                                                          ## <theESplit> seam edge for the face
                                                                          ## <theFace> basing on the
                                                                          ## surface
                                                                          ## properties (U and V
                                                                          ## periods)


proc DoSplitSEAMOnFace*(theESplit: TopoDS_Edge; theFace: TopoDS_Face): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools3D::DoSplitSEAMOnFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc DoSplitSEAMOnFace*(theEOrigin: TopoDS_Edge; theESplit: TopoDS_Edge;
                       theFace: TopoDS_Face): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools3D::DoSplitSEAMOnFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc GetNormalToFaceOnEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: Standard_Real;
                           aD: var gp_Dir; theContext: handle[IntTools_Context] = handle[
    IntTools_Context]()) {.importcpp: "BOPTools_AlgoTools3D::GetNormalToFaceOnEdge(@)",
                          header: "BOPTools_AlgoTools3D.hxx".}
proc GetNormalToFaceOnEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aD: var gp_Dir; theContext: handle[
    IntTools_Context] = handle[IntTools_Context]()) {.
    importcpp: "BOPTools_AlgoTools3D::GetNormalToFaceOnEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc SenseFlag*(aNF1: gp_Dir; aNF2: gp_Dir): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools3D::SenseFlag(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc GetNormalToSurface*(`aS`: handle[Geom_Surface]; U: Standard_Real;
                        V: Standard_Real; aD: var gp_Dir): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools3D::GetNormalToSurface(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc GetApproxNormalToFaceOnEdge*(aE: TopoDS_Edge; aF: TopoDS_Face;
                                 aT: Standard_Real; aPx: var gp_Pnt; aD: var gp_Dir;
                                 theContext: handle[IntTools_Context]): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools3D::GetApproxNormalToFaceOnEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc GetApproxNormalToFaceOnEdge*(theE: TopoDS_Edge; theF: TopoDS_Face;
                                 aT: Standard_Real; aP: var gp_Pnt; aDNF: var gp_Dir;
                                 aDt2D: Standard_Real): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools3D::GetApproxNormalToFaceOnEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc GetApproxNormalToFaceOnEdge*(theE: TopoDS_Edge; theF: TopoDS_Face;
                                 aT: Standard_Real; aDt2D: Standard_Real;
                                 aP: var gp_Pnt; aDNF: var gp_Dir;
                                 theContext: handle[IntTools_Context]): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools3D::GetApproxNormalToFaceOnEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc PointNearEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: Standard_Real;
                   aDt2D: Standard_Real; aP2D: var gp_Pnt2d; aPx: var gp_Pnt;
                   theContext: handle[IntTools_Context]): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools3D::PointNearEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc PointNearEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: Standard_Real;
                   aDt2D: Standard_Real; aP2D: var gp_Pnt2d; aPx: var gp_Pnt): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools3D::PointNearEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc PointNearEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aT: Standard_Real;
                   aP2D: var gp_Pnt2d; aPx: var gp_Pnt;
                   theContext: handle[IntTools_Context]): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools3D::PointNearEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc PointNearEdge*(aE: TopoDS_Edge; aF: TopoDS_Face; aP2D: var gp_Pnt2d;
                   aPx: var gp_Pnt; theContext: handle[IntTools_Context]): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools3D::PointNearEdge(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc MinStepIn2d*(): Standard_Real {.importcpp: "BOPTools_AlgoTools3D::MinStepIn2d(@)",
                                  header: "BOPTools_AlgoTools3D.hxx".}
proc IsEmptyShape*(`aS`: TopoDS_Shape): Standard_Boolean {.
    importcpp: "BOPTools_AlgoTools3D::IsEmptyShape(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc OrientEdgeOnFace*(aE: TopoDS_Edge; aF: TopoDS_Face; aER: var TopoDS_Edge) {.
    importcpp: "BOPTools_AlgoTools3D::OrientEdgeOnFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc PointInFace*(theF: TopoDS_Face; theP: var gp_Pnt; theP2D: var gp_Pnt2d;
                 theContext: handle[IntTools_Context]): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools3D::PointInFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc PointInFace*(theF: TopoDS_Face; theE: TopoDS_Edge; theT: Standard_Real;
                 theDt2D: Standard_Real; theP: var gp_Pnt; theP2D: var gp_Pnt2d;
                 theContext: handle[IntTools_Context]): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools3D::PointInFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}
proc PointInFace*(theF: TopoDS_Face; theL: handle[Geom2d_Curve]; theP: var gp_Pnt;
                 theP2D: var gp_Pnt2d; theContext: handle[IntTools_Context];
                 theDt2D: Standard_Real = 0.0): Standard_Integer {.
    importcpp: "BOPTools_AlgoTools3D::PointInFace(@)",
    header: "BOPTools_AlgoTools3D.hxx".}