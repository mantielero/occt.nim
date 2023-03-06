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



proc nearest*(aShape: TopoDS_Shape; aPoint: PntObj): PntObj {.cdecl,
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc nearest*(theLine: LinObj; thePoint: PntObj): PntObj {.cdecl,
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc nearest*(theCurve: Handle[GeomCurve]; thePoint: PntObj; theFirstPoint: PntObj;
             theLastPoint: PntObj; theNearestPoint: var PntObj): bool {.cdecl,
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc farest*(aShape: TopoDS_Shape; aPoint: PntObj): PntObj {.cdecl,
    importcpp: "PrsDim::Farest(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
                     theFirstPnt: var PntObj; theLastPnt: var PntObj): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
                     theFirstPnt: var PntObj; theLastPnt: var PntObj;
                     theIsInfinite: var bool): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
                     theFirstPnt: var PntObj; theLastPnt: var PntObj;
                     theExtCurve: var Handle[GeomCurve]; theIsInfinite: var bool;
                     theIsOnPlane: var bool; thePlane: Handle[GeomPlane]): bool {.
    cdecl, importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theFirstCurve: var Handle[GeomCurve];
                     theSecondCurve: var Handle[GeomCurve]; theFirstPnt1: var PntObj;
                     theLastPnt1: var PntObj; theFirstPnt2: var PntObj;
                     theLastPnt2: var PntObj; thePlane: Handle[GeomPlane]): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theFirstCurve: var Handle[GeomCurve];
                     theSecondCurve: var Handle[GeomCurve]; theFirstPnt1: var PntObj;
                     theLastPnt1: var PntObj; theFirstPnt2: var PntObj;
                     theLastPnt2: var PntObj; theIsinfinite1: var bool;
                     theIsinfinite2: var bool): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theExtIndex: var cint; theFirstCurve: var Handle[GeomCurve];
                     theSecondCurve: var Handle[GeomCurve]; theFirstPnt1: var PntObj;
                     theLastPnt1: var PntObj; theFirstPnt2: var PntObj;
                     theLastPnt2: var PntObj; theExtCurve: var Handle[GeomCurve];
                     theIsinfinite1: var bool; theIsinfinite2: var bool;
                     thePlane: Handle[GeomPlane]): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeomCurve*(aCurve: var Handle[GeomCurve]; first1: cfloat; last1: cfloat;
                      firstPnt1: var PntObj; lastPnt1: var PntObj;
                      aPlane: Handle[GeomPlane]; isOnPlane: var bool): bool {.cdecl,
    importcpp: "PrsDim::ComputeGeomCurve(@)", header: "PrsDim.hxx".}
proc computeGeometry*(aVertex: TopoDS_Vertex; point: var PntObj;
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
                                       theFirstAttach: var PntObj;
                                       theSecondAttach: var PntObj;
                                       theDirOnPlane: var DirObj) {.cdecl,
    importcpp: "PrsDim::InitLengthBetweenCurvilinearFaces(@)", header: "PrsDim.hxx".}
proc initAngleBetweenPlanarFaces*(theFirstFace: TopoDS_Face;
                                 theSecondFace: TopoDS_Face; theCenter: var PntObj;
                                 theFirstAttach: var PntObj; theSecondAttach: var PntObj;
                                 theIsFirstPointSet: bool = false): bool {.cdecl,
    importcpp: "PrsDim::InitAngleBetweenPlanarFaces(@)", header: "PrsDim.hxx".}
proc initAngleBetweenCurvilinearFaces*(theFirstFace: TopoDS_Face;
                                      theSecondFace: TopoDS_Face;
                                      theFirstSurfType: PrsDimKindOfSurface;
                                      theSecondSurfType: PrsDimKindOfSurface;
                                      theCenter: var PntObj; theFirstAttach: var PntObj;
                                      theSecondAttach: var PntObj;
                                      theIsFirstPointSet: bool = false): bool {.
    cdecl, importcpp: "PrsDim::InitAngleBetweenCurvilinearFaces(@)", header: "PrsDim.hxx".}
proc projectPointOnPlane*(aPoint: PntObj; aPlane: PlnObj): PntObj {.cdecl,
    importcpp: "PrsDim::ProjectPointOnPlane(@)", header: "PrsDim.hxx".}
proc projectPointOnLine*(aPoint: PntObj; aLine: LinObj): PntObj {.cdecl,
    importcpp: "PrsDim::ProjectPointOnLine(@)", header: "PrsDim.hxx".}
proc translatePointToBound*(aPoint: PntObj; aDir: DirObj; aBndBox: BndBox): PntObj {.cdecl,
    importcpp: "PrsDim::TranslatePointToBound(@)", header: "PrsDim.hxx".}
proc inDomain*(aFirstPar: cfloat; aLastPar: cfloat; anAttachPar: cfloat): bool {.cdecl,
    importcpp: "PrsDim::InDomain(@)", header: "PrsDim.hxx".}
proc nearestApex*(elips: ElipsObj; pApex: PntObj; nApex: PntObj; fpara: cfloat; lpara: cfloat;
                 isInDomain: var bool): PntObj {.cdecl,
    importcpp: "PrsDim::NearestApex(@)", header: "PrsDim.hxx".}
proc distanceFromApex*(elips: ElipsObj; apex: PntObj; par: cfloat): cfloat {.cdecl,
    importcpp: "PrsDim::DistanceFromApex(@)", header: "PrsDim.hxx".}
proc computeProjEdgePresentation*(aPres: Handle[Prs3dPresentation];
                                 aDrawer: Handle[Prs3dDrawer];
                                 anEdge: TopoDS_Edge;
                                 projCurve: Handle[GeomCurve]; firstP: PntObj;
                                 lastP: PntObj; aColor: QuantityNameOfColor = quantityNOC_PURPLE;
                                 aWidth: cfloat = 2;
                                 aProjTOL: AspectTypeOfLine = aspectTOL_DASH;
                                 aCallTOL: AspectTypeOfLine = aspectTOL_DOT) {.
    cdecl, importcpp: "PrsDim::ComputeProjEdgePresentation(@)", header: "PrsDim.hxx".}
proc computeProjVertexPresentation*(aPres: Handle[Prs3dPresentation];
                                   aDrawer: Handle[Prs3dDrawer];
                                   aVertex: TopoDS_Vertex; projPoint: PntObj; aColor: QuantityNameOfColor = quantityNOC_PURPLE;
                                   aWidth: cfloat = 2; aProjTOM: AspectTypeOfMarker = aspectTOM_PLUS;
                                   aCallTOL: AspectTypeOfLine = aspectTOL_DOT) {.
    cdecl, importcpp: "PrsDim::ComputeProjVertexPresentation(@)", header: "PrsDim.hxx".}


