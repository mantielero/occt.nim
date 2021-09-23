##  Created on: 1996-12-11
##  Created by: Robert COUBLANC
##  Copyright (c) 1996-1999 Matra Datavision
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
  PrsDim_KindOfSurface, ../Aspect/Aspect_TypeOfLine,
  ../Aspect/Aspect_TypeOfMarker, ../gp/gp_Dir, ../gp/gp_Pnt,
  ../Quantity/Quantity_NameOfColor, ../Prs3d/Prs3d_Drawer,
  ../Prs3d/Prs3d_Presentation, ../Standard/Standard,
  ../Standard/Standard_DefineAlloc, ../Standard/Standard_Handle

discard "forward decl of Bnd_Box"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Plane"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
type
  PrsDim* {.importcpp: "PrsDim", header: "PrsDim.hxx", bycopy.} = object ## ! Returns the nearest point in a shape. This is used by
                                                                 ## ! several classes in calculation of dimensions.


proc Nearest*(aShape: TopoDS_Shape; aPoint: gp_Pnt): gp_Pnt {.
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc Nearest*(theLine: gp_Lin; thePoint: gp_Pnt): gp_Pnt {.
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc Nearest*(theCurve: handle[Geom_Curve]; thePoint: gp_Pnt; theFirstPoint: gp_Pnt;
             theLastPoint: gp_Pnt; theNearestPoint: var gp_Pnt): Standard_Boolean {.
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc Farest*(aShape: TopoDS_Shape; aPoint: gp_Pnt): gp_Pnt {.
    importcpp: "PrsDim::Farest(@)", header: "PrsDim.hxx".}
proc ComputeGeometry*(theEdge: TopoDS_Edge; theCurve: var handle[Geom_Curve];
                     theFirstPnt: var gp_Pnt; theLastPnt: var gp_Pnt): Standard_Boolean {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc ComputeGeometry*(theEdge: TopoDS_Edge; theCurve: var handle[Geom_Curve];
                     theFirstPnt: var gp_Pnt; theLastPnt: var gp_Pnt;
                     theIsInfinite: var Standard_Boolean): Standard_Boolean {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc ComputeGeometry*(theEdge: TopoDS_Edge; theCurve: var handle[Geom_Curve];
                     theFirstPnt: var gp_Pnt; theLastPnt: var gp_Pnt;
                     theExtCurve: var handle[Geom_Curve];
                     theIsInfinite: var Standard_Boolean;
                     theIsOnPlane: var Standard_Boolean;
                     thePlane: handle[Geom_Plane]): Standard_Boolean {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc ComputeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theFirstCurve: var handle[Geom_Curve];
                     theSecondCurve: var handle[Geom_Curve];
                     theFirstPnt1: var gp_Pnt; theLastPnt1: var gp_Pnt;
                     theFirstPnt2: var gp_Pnt; theLastPnt2: var gp_Pnt;
                     thePlane: handle[Geom_Plane]): Standard_Boolean {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc ComputeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theFirstCurve: var handle[Geom_Curve];
                     theSecondCurve: var handle[Geom_Curve];
                     theFirstPnt1: var gp_Pnt; theLastPnt1: var gp_Pnt;
                     theFirstPnt2: var gp_Pnt; theLastPnt2: var gp_Pnt;
                     theIsinfinite1: var Standard_Boolean;
                     theIsinfinite2: var Standard_Boolean): Standard_Boolean {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc ComputeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theExtIndex: var Standard_Integer;
                     theFirstCurve: var handle[Geom_Curve];
                     theSecondCurve: var handle[Geom_Curve];
                     theFirstPnt1: var gp_Pnt; theLastPnt1: var gp_Pnt;
                     theFirstPnt2: var gp_Pnt; theLastPnt2: var gp_Pnt;
                     theExtCurve: var handle[Geom_Curve];
                     theIsinfinite1: var Standard_Boolean;
                     theIsinfinite2: var Standard_Boolean;
                     thePlane: handle[Geom_Plane]): Standard_Boolean {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc ComputeGeomCurve*(aCurve: var handle[Geom_Curve]; first1: Standard_Real;
                      last1: Standard_Real; FirstPnt1: var gp_Pnt;
                      LastPnt1: var gp_Pnt; aPlane: handle[Geom_Plane];
                      isOnPlane: var Standard_Boolean): Standard_Boolean {.
    importcpp: "PrsDim::ComputeGeomCurve(@)", header: "PrsDim.hxx".}
proc ComputeGeometry*(aVertex: TopoDS_Vertex; point: var gp_Pnt;
                     aPlane: handle[Geom_Plane]; isOnPlane: var Standard_Boolean): Standard_Boolean {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc GetPlaneFromFace*(aFace: TopoDS_Face; aPlane: var gp_Pln;
                      aSurf: var handle[Geom_Surface];
                      aSurfType: var PrsDim_KindOfSurface;
                      Offset: var Standard_Real): Standard_Boolean {.
    importcpp: "PrsDim::GetPlaneFromFace(@)", header: "PrsDim.hxx".}
proc InitFaceLength*(aFace: TopoDS_Face; aPlane: var gp_Pln;
                    aSurface: var handle[Geom_Surface];
                    aSurfaceType: var PrsDim_KindOfSurface;
                    anOffset: var Standard_Real) {.
    importcpp: "PrsDim::InitFaceLength(@)", header: "PrsDim.hxx".}
proc InitLengthBetweenCurvilinearFaces*(theFirstFace: TopoDS_Face;
                                       theSecondFace: TopoDS_Face;
                                       theFirstSurf: var handle[Geom_Surface];
                                       theSecondSurf: var handle[Geom_Surface];
                                       theFirstAttach: var gp_Pnt;
                                       theSecondAttach: var gp_Pnt;
                                       theDirOnPlane: var gp_Dir) {.
    importcpp: "PrsDim::InitLengthBetweenCurvilinearFaces(@)",
    header: "PrsDim.hxx".}
proc InitAngleBetweenPlanarFaces*(theFirstFace: TopoDS_Face;
                                 theSecondFace: TopoDS_Face;
                                 theCenter: var gp_Pnt; theFirstAttach: var gp_Pnt;
                                 theSecondAttach: var gp_Pnt; theIsFirstPointSet: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "PrsDim::InitAngleBetweenPlanarFaces(@)", header: "PrsDim.hxx".}
proc InitAngleBetweenCurvilinearFaces*(theFirstFace: TopoDS_Face;
                                      theSecondFace: TopoDS_Face;
                                      theFirstSurfType: PrsDim_KindOfSurface;
                                      theSecondSurfType: PrsDim_KindOfSurface;
                                      theCenter: var gp_Pnt;
                                      theFirstAttach: var gp_Pnt;
                                      theSecondAttach: var gp_Pnt;
    theIsFirstPointSet: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "PrsDim::InitAngleBetweenCurvilinearFaces(@)", header: "PrsDim.hxx".}
proc ProjectPointOnPlane*(aPoint: gp_Pnt; aPlane: gp_Pln): gp_Pnt {.
    importcpp: "PrsDim::ProjectPointOnPlane(@)", header: "PrsDim.hxx".}
proc ProjectPointOnLine*(aPoint: gp_Pnt; aLine: gp_Lin): gp_Pnt {.
    importcpp: "PrsDim::ProjectPointOnLine(@)", header: "PrsDim.hxx".}
proc TranslatePointToBound*(aPoint: gp_Pnt; aDir: gp_Dir; aBndBox: Bnd_Box): gp_Pnt {.
    importcpp: "PrsDim::TranslatePointToBound(@)", header: "PrsDim.hxx".}
proc InDomain*(aFirstPar: Standard_Real; aLastPar: Standard_Real;
              anAttachPar: Standard_Real): Standard_Boolean {.
    importcpp: "PrsDim::InDomain(@)", header: "PrsDim.hxx".}
proc NearestApex*(elips: gp_Elips; pApex: gp_Pnt; nApex: gp_Pnt; fpara: Standard_Real;
                 lpara: Standard_Real; IsInDomain: var Standard_Boolean): gp_Pnt {.
    importcpp: "PrsDim::NearestApex(@)", header: "PrsDim.hxx".}
proc DistanceFromApex*(elips: gp_Elips; Apex: gp_Pnt; par: Standard_Real): Standard_Real {.
    importcpp: "PrsDim::DistanceFromApex(@)", header: "PrsDim.hxx".}
proc ComputeProjEdgePresentation*(aPres: handle[Prs3d_Presentation];
                                 aDrawer: handle[Prs3d_Drawer];
                                 anEdge: TopoDS_Edge;
                                 ProjCurve: handle[Geom_Curve]; FirstP: gp_Pnt;
                                 LastP: gp_Pnt; aColor: Quantity_NameOfColor = Quantity_NOC_PURPLE;
                                 aWidth: Standard_Real = 2;
                                 aProjTOL: Aspect_TypeOfLine = Aspect_TOL_DASH;
                                 aCallTOL: Aspect_TypeOfLine = Aspect_TOL_DOT) {.
    importcpp: "PrsDim::ComputeProjEdgePresentation(@)", header: "PrsDim.hxx".}
proc ComputeProjVertexPresentation*(aPres: handle[Prs3d_Presentation];
                                   aDrawer: handle[Prs3d_Drawer];
                                   aVertex: TopoDS_Vertex; ProjPoint: gp_Pnt; aColor: Quantity_NameOfColor = Quantity_NOC_PURPLE;
                                   aWidth: Standard_Real = 2; aProjTOM: Aspect_TypeOfMarker = Aspect_TOM_PLUS;
                                   aCallTOL: Aspect_TypeOfLine = Aspect_TOL_DOT) {.
    importcpp: "PrsDim::ComputeProjVertexPresentation(@)", header: "PrsDim.hxx".}