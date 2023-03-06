import prsdim_types
import ../gp/gp_types
import ../standard/standard_types
import ../prs3d/prs3d_types
import ../topods/topods_types
import ../bnd/bnd_types
import ../geom/geom_types
import ../quantity/quantity_types
import ../aspect/aspect_types



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



proc nearest*(aShape: TopoDS_Shape; aPoint: gp_Pnt): gp_Pnt {.cdecl,
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc nearest*(theLine: LinObj; thePoint: gp_Pnt): gp_Pnt {.cdecl,
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc nearest*(theCurve: Handle[GeomCurve]; thePoint: gp_Pnt; theFirstPoint: gp_Pnt;
             theLastPoint: gp_Pnt; theNearestPoint: var gp_Pnt): bool {.cdecl,
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc farest*(aShape: TopoDS_Shape; aPoint: gp_Pnt): gp_Pnt {.cdecl,
    importcpp: "PrsDim::Farest(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
                     theFirstPnt: var gp_Pnt; theLastPnt: var gp_Pnt): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
                     theFirstPnt: var gp_Pnt; theLastPnt: var gp_Pnt;
                     theIsInfinite: var bool): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
                     theFirstPnt: var gp_Pnt; theLastPnt: var gp_Pnt;
                     theExtCurve: var Handle[GeomCurve]; theIsInfinite: var bool;
                     theIsOnPlane: var bool; thePlane: Handle[GeomPlane]): bool {.
    cdecl, importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theFirstCurve: var Handle[GeomCurve];
                     theSecondCurve: var Handle[GeomCurve]; theFirstPnt1: var gp_Pnt;
                     theLastPnt1: var gp_Pnt; theFirstPnt2: var gp_Pnt;
                     theLastPnt2: var gp_Pnt; thePlane: Handle[GeomPlane]): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theFirstCurve: var Handle[GeomCurve];
                     theSecondCurve: var Handle[GeomCurve]; theFirstPnt1: var gp_Pnt;
                     theLastPnt1: var gp_Pnt; theFirstPnt2: var gp_Pnt;
                     theLastPnt2: var gp_Pnt; theIsinfinite1: var bool;
                     theIsinfinite2: var bool): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theExtIndex: var cint; theFirstCurve: var Handle[GeomCurve];
                     theSecondCurve: var Handle[GeomCurve]; theFirstPnt1: var gp_Pnt;
                     theLastPnt1: var gp_Pnt; theFirstPnt2: var gp_Pnt;
                     theLastPnt2: var gp_Pnt; theExtCurve: var Handle[GeomCurve];
                     theIsinfinite1: var bool; theIsinfinite2: var bool;
                     thePlane: Handle[GeomPlane]): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeomCurve*(aCurve: var Handle[GeomCurve]; first1: cfloat; last1: cfloat;
                      firstPnt1: var gp_Pnt; lastPnt1: var gp_Pnt;
                      aPlane: Handle[GeomPlane]; isOnPlane: var bool): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeomCurve(@)", header: "PrsDim.hxx".}
proc computeGeometry*(aVertex: TopoDS_Vertex; point: var gp_Pnt;
                     aPlane: Handle[GeomPlane]; isOnPlane: var bool): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc getPlaneFromFace*(aFace: TopoDS_Face; aPlane: var PlnObj;
                      aSurf: var Handle[GeomSurface];
                      aSurfType: var PrsDimKindOfSurface; offset: var cfloat): bool {.
    cdecl, importcpp: "PrsDim::GetPlaneFromFace(@)", header: "PrsDim.hxx".}
proc initFaceLength*(aFace: TopoDS_Face; aPlane: var PlnObj;
                    aSurface: var Handle[GeomSurface];
                    aSurfaceType: var PrsDimKindOfSurface; anOffset: var cfloat) {.
    cdecl, importcpp: "PrsDim::InitFaceLength(@)", header: "PrsDim.hxx".}
proc initLengthBetweenCurvilinearFaces*(theFirstFace: TopoDS_Face;
                                       theSecondFace: TopoDS_Face;
                                       theFirstSurf: var Handle[GeomSurface];
                                       theSecondSurf: var Handle[GeomSurface];
                                       theFirstAttach: var gp_Pnt;
                                       theSecondAttach: var gp_Pnt;
                                       theDirOnPlane: var DirObj) {.cdecl,
    importcpp: "PrsDim::InitLengthBetweenCurvilinearFaces(@)", header: "PrsDim.hxx".}
proc initAngleBetweenPlanarFaces*(theFirstFace: TopoDS_Face;
                                 theSecondFace: TopoDS_Face; theCenter: var gp_Pnt;
                                 theFirstAttach: var gp_Pnt; theSecondAttach: var gp_Pnt;
                                 theIsFirstPointSet: bool = false): bool {.cdecl,
    importcpp: "PrsDim::InitAngleBetweenPlanarFaces(@)", header: "PrsDim.hxx".}
proc initAngleBetweenCurvilinearFaces*(theFirstFace: TopoDS_Face;
                                      theSecondFace: TopoDS_Face;
                                      theFirstSurfType: PrsDimKindOfSurface;
                                      theSecondSurfType: PrsDimKindOfSurface;
                                      theCenter: var gp_Pnt; theFirstAttach: var gp_Pnt;
                                      theSecondAttach: var gp_Pnt;
                                      theIsFirstPointSet: bool = false): bool {.
    cdecl, importcpp: "PrsDim::InitAngleBetweenCurvilinearFaces(@)", header: "PrsDim.hxx".}
proc projectPointOnPlane*(aPoint: gp_Pnt; aPlane: PlnObj): gp_Pnt {.cdecl,
    importcpp: "PrsDim::ProjectPointOnPlane(@)", header: "PrsDim.hxx".}
proc projectPointOnLine*(aPoint: gp_Pnt; aLine: LinObj): gp_Pnt {.cdecl,
    importcpp: "PrsDim::ProjectPointOnLine(@)", header: "PrsDim.hxx".}
proc translatePointToBound*(aPoint: gp_Pnt; aDir: DirObj; aBndBox: BndBox): gp_Pnt {.cdecl,
    importcpp: "PrsDim::TranslatePointToBound(@)", header: "PrsDim.hxx".}
proc inDomain*(aFirstPar: cfloat; aLastPar: cfloat; anAttachPar: cfloat): bool {.cdecl,
    importcpp: "PrsDim::InDomain(@)", header: "PrsDim.hxx".}
proc nearestApex*(elips: ElipsObj; pApex: gp_Pnt; nApex: gp_Pnt; fpara: cfloat; lpara: cfloat;
                 isInDomain: var bool): gp_Pnt {.cdecl,
    importcpp: "PrsDim::NearestApex(@)", header: "PrsDim.hxx".}
proc distanceFromApex*(elips: ElipsObj; apex: gp_Pnt; par: cfloat): cfloat {.cdecl,
    importcpp: "PrsDim::DistanceFromApex(@)", header: "PrsDim.hxx".}
proc computeProjEdgePresentation*(aPres: Handle[Prs3dPresentation];
                                 aDrawer: Handle[Prs3dDrawer];
                                 anEdge: TopoDS_Edge;
                                 projCurve: Handle[GeomCurve]; firstP: gp_Pnt;
                                 lastP: gp_Pnt; aColor: QuantityNameOfColor = quantityNOC_PURPLE;
                                 aWidth: cfloat = 2;
                                 aProjTOL: AspectTypeOfLine = aspectTOL_DASH;
                                 aCallTOL: AspectTypeOfLine = aspectTOL_DOT) {.
    cdecl, importcpp: "PrsDim::ComputeProjEdgePresentation(@)", header: "PrsDim.hxx".}
proc computeProjVertexPresentation*(aPres: Handle[Prs3dPresentation];
                                   aDrawer: Handle[Prs3dDrawer];
                                   aVertex: TopoDS_Vertex; projPoint: gp_Pnt; aColor: QuantityNameOfColor = quantityNOC_PURPLE;
                                   aWidth: cfloat = 2; aProjTOM: AspectTypeOfMarker = aspectTOM_PLUS;
                                   aCallTOL: AspectTypeOfLine = aspectTOL_DOT) {.
    cdecl, importcpp: "PrsDim::ComputeProjVertexPresentation(@)", header: "PrsDim.hxx".}


