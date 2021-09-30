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


proc nearest*(aShape: TopoDS_Shape; aPoint: Pnt): Pnt {.
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc nearest*(theLine: Lin; thePoint: Pnt): Pnt {.importcpp: "PrsDim::Nearest(@)",
    header: "PrsDim.hxx".}
proc nearest*(theCurve: Handle[GeomCurve]; thePoint: Pnt; theFirstPoint: Pnt;
             theLastPoint: Pnt; theNearestPoint: var Pnt): bool {.
    importcpp: "PrsDim::Nearest(@)", header: "PrsDim.hxx".}
proc farest*(aShape: TopoDS_Shape; aPoint: Pnt): Pnt {.importcpp: "PrsDim::Farest(@)",
    header: "PrsDim.hxx".}
proc computeGeometry*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
                     theFirstPnt: var Pnt; theLastPnt: var Pnt): bool {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
                     theFirstPnt: var Pnt; theLastPnt: var Pnt;
                     theIsInfinite: var bool): bool {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
                     theFirstPnt: var Pnt; theLastPnt: var Pnt;
                     theExtCurve: var Handle[GeomCurve]; theIsInfinite: var bool;
                     theIsOnPlane: var bool; thePlane: Handle[GeomPlane]): bool {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theFirstCurve: var Handle[GeomCurve];
                     theSecondCurve: var Handle[GeomCurve]; theFirstPnt1: var Pnt;
                     theLastPnt1: var Pnt; theFirstPnt2: var Pnt;
                     theLastPnt2: var Pnt; thePlane: Handle[GeomPlane]): bool {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theFirstCurve: var Handle[GeomCurve];
                     theSecondCurve: var Handle[GeomCurve]; theFirstPnt1: var Pnt;
                     theLastPnt1: var Pnt; theFirstPnt2: var Pnt;
                     theLastPnt2: var Pnt; theIsinfinite1: var bool;
                     theIsinfinite2: var bool): bool {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeometry*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge;
                     theExtIndex: var cint; theFirstCurve: var Handle[GeomCurve];
                     theSecondCurve: var Handle[GeomCurve]; theFirstPnt1: var Pnt;
                     theLastPnt1: var Pnt; theFirstPnt2: var Pnt;
                     theLastPnt2: var Pnt; theExtCurve: var Handle[GeomCurve];
                     theIsinfinite1: var bool; theIsinfinite2: var bool;
                     thePlane: Handle[GeomPlane]): bool {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc computeGeomCurve*(aCurve: var Handle[GeomCurve]; first1: cfloat; last1: cfloat;
                      firstPnt1: var Pnt; lastPnt1: var Pnt;
                      aPlane: Handle[GeomPlane]; isOnPlane: var bool): bool {.
    importcpp: "PrsDim::ComputeGeomCurve(@)", header: "PrsDim.hxx".}
proc computeGeometry*(aVertex: TopoDS_Vertex; point: var Pnt;
                     aPlane: Handle[GeomPlane]; isOnPlane: var bool): bool {.
    importcpp: "PrsDim::ComputeGeometry(@)", header: "PrsDim.hxx".}
proc getPlaneFromFace*(aFace: TopoDS_Face; aPlane: var Pln;
                      aSurf: var Handle[GeomSurface];
                      aSurfType: var PrsDimKindOfSurface; offset: var cfloat): bool {.
    importcpp: "PrsDim::GetPlaneFromFace(@)", header: "PrsDim.hxx".}
proc initFaceLength*(aFace: TopoDS_Face; aPlane: var Pln;
                    aSurface: var Handle[GeomSurface];
                    aSurfaceType: var PrsDimKindOfSurface; anOffset: var cfloat) {.
    importcpp: "PrsDim::InitFaceLength(@)", header: "PrsDim.hxx".}
proc initLengthBetweenCurvilinearFaces*(theFirstFace: TopoDS_Face;
                                       theSecondFace: TopoDS_Face;
                                       theFirstSurf: var Handle[GeomSurface];
                                       theSecondSurf: var Handle[GeomSurface];
                                       theFirstAttach: var Pnt;
                                       theSecondAttach: var Pnt;
                                       theDirOnPlane: var Dir) {.
    importcpp: "PrsDim::InitLengthBetweenCurvilinearFaces(@)",
    header: "PrsDim.hxx".}
proc initAngleBetweenPlanarFaces*(theFirstFace: TopoDS_Face;
                                 theSecondFace: TopoDS_Face; theCenter: var Pnt;
                                 theFirstAttach: var Pnt; theSecondAttach: var Pnt;
                                 theIsFirstPointSet: bool = false): bool {.
    importcpp: "PrsDim::InitAngleBetweenPlanarFaces(@)", header: "PrsDim.hxx".}
proc initAngleBetweenCurvilinearFaces*(theFirstFace: TopoDS_Face;
                                      theSecondFace: TopoDS_Face;
                                      theFirstSurfType: PrsDimKindOfSurface;
                                      theSecondSurfType: PrsDimKindOfSurface;
                                      theCenter: var Pnt; theFirstAttach: var Pnt;
                                      theSecondAttach: var Pnt;
                                      theIsFirstPointSet: bool = false): bool {.
    importcpp: "PrsDim::InitAngleBetweenCurvilinearFaces(@)", header: "PrsDim.hxx".}
proc projectPointOnPlane*(aPoint: Pnt; aPlane: Pln): Pnt {.
    importcpp: "PrsDim::ProjectPointOnPlane(@)", header: "PrsDim.hxx".}
proc projectPointOnLine*(aPoint: Pnt; aLine: Lin): Pnt {.
    importcpp: "PrsDim::ProjectPointOnLine(@)", header: "PrsDim.hxx".}
proc translatePointToBound*(aPoint: Pnt; aDir: Dir; aBndBox: BndBox): Pnt {.
    importcpp: "PrsDim::TranslatePointToBound(@)", header: "PrsDim.hxx".}
proc inDomain*(aFirstPar: cfloat; aLastPar: cfloat; anAttachPar: cfloat): bool {.
    importcpp: "PrsDim::InDomain(@)", header: "PrsDim.hxx".}
proc nearestApex*(elips: Elips; pApex: Pnt; nApex: Pnt; fpara: cfloat; lpara: cfloat;
                 isInDomain: var bool): Pnt {.importcpp: "PrsDim::NearestApex(@)",
    header: "PrsDim.hxx".}
proc distanceFromApex*(elips: Elips; apex: Pnt; par: cfloat): cfloat {.
    importcpp: "PrsDim::DistanceFromApex(@)", header: "PrsDim.hxx".}
proc computeProjEdgePresentation*(aPres: Handle[Prs3dPresentation];
                                 aDrawer: Handle[Prs3dDrawer];
                                 anEdge: TopoDS_Edge;
                                 projCurve: Handle[GeomCurve]; firstP: Pnt;
                                 lastP: Pnt; aColor: QuantityNameOfColor = quantityNOC_PURPLE;
                                 aWidth: cfloat = 2;
                                 aProjTOL: AspectTypeOfLine = aspectTOL_DASH;
                                 aCallTOL: AspectTypeOfLine = aspectTOL_DOT) {.
    importcpp: "PrsDim::ComputeProjEdgePresentation(@)", header: "PrsDim.hxx".}
proc computeProjVertexPresentation*(aPres: Handle[Prs3dPresentation];
                                   aDrawer: Handle[Prs3dDrawer];
                                   aVertex: TopoDS_Vertex; projPoint: Pnt; aColor: QuantityNameOfColor = quantityNOC_PURPLE;
                                   aWidth: cfloat = 2; aProjTOM: AspectTypeOfMarker = aspectTOM_PLUS;
                                   aCallTOL: AspectTypeOfLine = aspectTOL_DOT) {.
    importcpp: "PrsDim::ComputeProjVertexPresentation(@)", header: "PrsDim.hxx".}

























