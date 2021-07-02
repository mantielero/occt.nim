##  Created on: 1994-03-24
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1994-1999 Matra Datavision
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

when defined(OCCT_DEBUG):
  var
    simul* {.importcpp: "simul", header: "ChFi3d_Builder_0.hxx".}: OSD_Chronometer
    elspine* {.importcpp: "elspine", header: "ChFi3d_Builder_0.hxx".}: OSD_Chronometer
    chemine* {.importcpp: "chemine", header: "ChFi3d_Builder_0.hxx".}: OSD_Chronometer
proc chFi3dInPeriod*(u: StandardReal; uFirst: StandardReal; uLast: StandardReal;
                    eps: StandardReal): StandardReal {.
    importcpp: "ChFi3d_InPeriod(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoite*(p1: GpPnt2d; p2: GpPnt2d; mu: var StandardReal; mu: var StandardReal;
                 mv: var StandardReal; mv: var StandardReal) {.
    importcpp: "ChFi3d_Boite(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoite*(p1: GpPnt2d; p2: GpPnt2d; p3: GpPnt2d; p4: GpPnt2d;
                 du: var StandardReal; dv: var StandardReal; mu: var StandardReal;
                 mu: var StandardReal; mv: var StandardReal; mv: var StandardReal) {.
    importcpp: "ChFi3d_Boite(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSetPointTolerance*(dStr: var TopOpeBRepDS_DataStructure; box: BndBox;
                             ip: StandardInteger) {.
    importcpp: "ChFi3d_SetPointTolerance(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(c: Handle[GeomCurve]; wd: StandardReal; wf: StandardReal;
                      box1: var BndBox; box2: var BndBox) {.
    importcpp: "ChFi3d_EnlargeBox(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(s: Handle[Adaptor3dHSurface]; pc: Handle[Geom2dCurve];
                      wd: StandardReal; wf: StandardReal; box1: var BndBox;
                      box2: var BndBox) {.importcpp: "ChFi3d_EnlargeBox(@)",
                                       header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(e: TopoDS_Edge; lf: TopToolsListOfShape; w: StandardReal;
                      box: var BndBox) {.importcpp: "ChFi3d_EnlargeBox(@)",
                                      header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(dStr: var TopOpeBRepDS_DataStructure;
                      st: Handle[ChFiDS_Stripe]; sd: Handle[ChFiDS_SurfData];
                      b1: var BndBox; b2: var BndBox; isfirst: StandardBoolean) {.
    importcpp: "ChFi3d_EnlargeBox(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEvalconti*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face): GeomAbsShape {.
    importcpp: "ChFi3d_evalconti(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dConexfaces*(e: TopoDS_Edge; f1: var TopoDS_Face; f2: var TopoDS_Face;
                      eFMap: ChFiDS_Map) {.importcpp: "ChFi3d_conexfaces(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEdgeState*(e: ptr TopoDS_Edge; eFMap: ChFiDS_Map): ChFiDS_State {.
    importcpp: "ChFi3d_EdgeState(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dKParticular*(spine: Handle[ChFiDS_Spine]; ie: StandardInteger;
                       s1: BRepAdaptorSurface; s2: BRepAdaptorSurface): StandardBoolean {.
    importcpp: "ChFi3d_KParticular(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoundFac*(s: var BRepAdaptorSurface; umin: StandardReal;
                    umax: StandardReal; vmin: StandardReal; vmax: StandardReal;
                    checknaturalbounds: StandardBoolean = standardTrue) {.
    importcpp: "ChFi3d_BoundFac(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoundSrf*(s: var GeomAdaptorSurface; umin: StandardReal;
                    umax: StandardReal; vmin: StandardReal; vmax: StandardReal;
                    checknaturalbounds: StandardBoolean = standardTrue) {.
    importcpp: "ChFi3d_BoundSrf(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dInterPlaneEdge*(plan: Handle[Adaptor3dHSurface];
                          c: Handle[Adaptor3dHCurve]; w: var StandardReal;
                          sens: StandardBoolean; tolc: StandardReal): StandardBoolean {.
    importcpp: "ChFi3d_InterPlaneEdge(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dExtrSpineCarac*(dStr: TopOpeBRepDS_DataStructure;
                          cd: Handle[ChFiDS_Stripe]; i: StandardInteger;
                          p: StandardReal; jf: StandardInteger;
                          sens: StandardInteger; p: var GpPnt; v: var GpVec;
                          r: var StandardReal) {.
    importcpp: "ChFi3d_ExtrSpineCarac(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCircularSpine*(wFirst: var StandardReal; wLast: var StandardReal;
                         pdeb: GpPnt; vdeb: GpVec; pfin: GpPnt; vfin: GpVec;
                         rad: StandardReal): Handle[GeomCircle] {.
    importcpp: "ChFi3d_CircularSpine(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSpine*(pd: GpPnt; vd: var GpVec; pf: GpPnt; vf: var GpVec; r: StandardReal): Handle[
    GeomBezierCurve] {.importcpp: "ChFi3d_Spine(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(fac: Handle[Adaptor3dHSurface]; curv: var Handle[Geom2dCurve];
                   sens1: StandardInteger; pfac1: GpPnt2d; vfac1: GpVec2d;
                   sens2: StandardInteger; pfac2: GpPnt2d; vfac2: GpVec2d;
                   t3d: StandardReal; ta: StandardReal): Handle[GeomFillBoundary] {.
    importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(surf: Handle[Adaptor3dHSurface]; curv: var Handle[Geom2dCurve];
                   sens1: StandardInteger; p1: GpPnt2d; v1: var GpVec;
                   sens2: StandardInteger; p2: GpPnt2d; v2: var GpVec;
                   t3d: StandardReal; ta: StandardReal): Handle[GeomFillBoundary] {.
    importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(s: Handle[GeomSurface]; p1: GpPnt2d; p2: GpPnt2d;
                   t3d: StandardReal; ta: StandardReal;
                   isfreeboundary: StandardBoolean = standardFalse): Handle[
    GeomFillBoundary] {.importcpp: "ChFi3d_mkbound(@)",
                       header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(hs: Handle[Adaptor3dHSurface]; p1: GpPnt2d; p2: GpPnt2d;
                   t3d: StandardReal; ta: StandardReal;
                   isfreeboundary: StandardBoolean = standardFalse): Handle[
    GeomFillBoundary] {.importcpp: "ChFi3d_mkbound(@)",
                       header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(hs: Handle[Adaptor3dHSurface]; curv: Handle[Geom2dCurve];
                   t3d: StandardReal; ta: StandardReal;
                   isfreeboundary: StandardBoolean = standardFalse): Handle[
    GeomFillBoundary] {.importcpp: "ChFi3d_mkbound(@)",
                       header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(fac: Handle[Adaptor3dHSurface]; curv: var Handle[Geom2dCurve];
                   p1: GpPnt2d; p2: GpPnt2d; t3d: StandardReal; ta: StandardReal;
                   isfreeboundary: StandardBoolean = standardFalse): Handle[
    GeomFillBoundary] {.importcpp: "ChFi3d_mkbound(@)",
                       header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCoefficient*(v3d: GpVec; d1u: GpVec; d1v: GpVec; du: var StandardReal;
                       dv: var StandardReal) {.importcpp: "ChFi3d_Coefficient(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBuildPCurve*(p1: GpPnt2d; d1: var GpDir2d; p2: GpPnt2d; d2: var GpDir2d;
                       redresse: StandardBoolean = standardTrue): Handle[Geom2dCurve] {.
    importcpp: "ChFi3d_BuildPCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBuildPCurve*(surf: Handle[Adaptor3dHSurface]; p1: GpPnt2d; v1: GpVec;
                       p2: GpPnt2d; v2: GpVec;
                       redresse: StandardBoolean = standardFalse): Handle[
    Geom2dCurve] {.importcpp: "ChFi3d_BuildPCurve(@)",
                  header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBuildPCurve*(surf: Handle[Adaptor3dHSurface]; p1: GpPnt2d; v1: GpVec2d;
                       p2: GpPnt2d; v2: GpVec2d;
                       redresse: StandardBoolean = standardFalse): Handle[
    Geom2dCurve] {.importcpp: "ChFi3d_BuildPCurve(@)",
                  header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCheckSameParameter*(c3d: Handle[Adaptor3dHCurve];
                              pcurv: var Handle[Geom2dCurve];
                              s: Handle[Adaptor3dHSurface]; tol3d: StandardReal;
                              tolreached: var StandardReal): StandardBoolean {.
    importcpp: "ChFi3d_CheckSameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSameParameter*(c3d: Handle[Adaptor3dHCurve];
                         pcurv: var Handle[Geom2dCurve];
                         s: Handle[Adaptor3dHSurface]; tol3d: StandardReal;
                         tolreached: var StandardReal): StandardBoolean {.
    importcpp: "ChFi3d_SameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSameParameter*(c3d: Handle[GeomCurve]; pcurv: var Handle[Geom2dCurve];
                         s: Handle[GeomSurface]; pardeb: StandardReal;
                         parfin: StandardReal; tol3d: StandardReal;
                         tolreached: var StandardReal): StandardBoolean {.
    importcpp: "ChFi3d_SameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputePCurv*(c3d: Handle[GeomCurve]; uv1: GpPnt2d; uv2: GpPnt2d;
                        pcurv: var Handle[Geom2dCurve]; s: Handle[GeomSurface];
                        pardeb: StandardReal; parfin: StandardReal;
                        tol3d: StandardReal; tolreached: var StandardReal;
                        reverse: StandardBoolean = standardFalse) {.
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputePCurv*(c3d: Handle[Adaptor3dHCurve]; uv1: GpPnt2d; uv2: GpPnt2d;
                        pcurv: var Handle[Geom2dCurve];
                        s: Handle[Adaptor3dHSurface]; pardeb: StandardReal;
                        parfin: StandardReal; tol3d: StandardReal;
                        tolreached: var StandardReal;
                        reverse: StandardBoolean = standardFalse) {.
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputePCurv*(uv1: GpPnt2d; uv2: GpPnt2d; pcurv: var Handle[Geom2dCurve];
                        pardeb: StandardReal; parfin: StandardReal;
                        reverse: StandardBoolean = standardFalse) {.
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIntTraces*(fd1: Handle[ChFiDS_SurfData]; pref1: StandardReal;
                     p1: var StandardReal; jf1: StandardInteger;
                     sens1: StandardInteger; fd2: Handle[ChFiDS_SurfData];
                     pref2: StandardReal; p2: var StandardReal; jf2: StandardInteger;
                     sens2: StandardInteger; refP2d: GpPnt2d;
                     check2dDistance: StandardBoolean = standardFalse;
                     enlarge: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ChFi3d_IntTraces(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIsInFront*(dStr: var TopOpeBRepDS_DataStructure;
                     cd1: Handle[ChFiDS_Stripe]; cd2: Handle[ChFiDS_Stripe];
                     i1: StandardInteger; i2: StandardInteger;
                     sens1: StandardInteger; sens2: StandardInteger;
                     p1: var StandardReal; p2: var StandardReal;
                     face: var TopoDS_Face; sameside: var StandardBoolean;
                     jf1: var StandardInteger; jf2: var StandardInteger;
                     visavis: var StandardBoolean; vtx: TopoDS_Vertex;
                     check2dDistance: StandardBoolean = standardFalse;
                     enlarge: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ChFi3d_IsInFront(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dProjectPCurv*(hCg: Handle[Adaptor3dHCurve];
                        hSg: Handle[Adaptor3dHSurface];
                        pcurv: var Handle[Geom2dCurve]; tol3d: StandardReal;
                        tolreached: var StandardReal) {.
    importcpp: "ChFi3d_ProjectPCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dReparamPcurv*(uf: StandardReal; ul: StandardReal;
                        pcurv: var Handle[Geom2dCurve]) {.
    importcpp: "ChFi3d_ReparamPcurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputeArete*(p1: ChFiDS_CommonPoint; uv1: GpPnt2d;
                        p2: ChFiDS_CommonPoint; uv2: GpPnt2d;
                        surf: Handle[GeomSurface]; c3d: var Handle[GeomCurve];
                        pcurv: var Handle[Geom2dCurve]; pardeb: var StandardReal;
                        parfin: var StandardReal; tol3d: StandardReal;
                        tol2d: StandardReal; tolreached: var StandardReal;
                        iFlag: StandardInteger) {.
    importcpp: "ChFi3d_ComputeArete(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilCurveInDS*(icurv: StandardInteger; isurf: StandardInteger;
                        pcurv: Handle[Geom2dCurve]; et: TopAbsOrientation): Handle[
    TopOpeBRepDS_SurfaceCurveInterference] {.importcpp: "ChFi3d_FilCurveInDS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dTrsfTrans*(t1: IntSurfTypeTrans): TopAbsOrientation {.
    importcpp: "ChFi3d_TrsfTrans(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilCommonPoint*(sp: BRepBlendExtremity; transLine: IntSurfTypeTrans;
                          start: StandardBoolean; cp: var ChFiDS_CommonPoint;
                          tol: StandardReal) {.
    importcpp: "ChFi3d_FilCommonPoint(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSolidIndex*(sp: Handle[ChFiDS_Spine];
                      dStr: var TopOpeBRepDS_DataStructure; mapESo: var ChFiDS_Map;
                      mapESh: var ChFiDS_Map): StandardInteger {.
    importcpp: "ChFi3d_SolidIndex(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIndexPointInDS*(p1: ChFiDS_CommonPoint;
                          dStr: var TopOpeBRepDS_DataStructure): StandardInteger {.
    importcpp: "ChFi3d_IndexPointInDS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilPointInDS*(et: TopAbsOrientation; ic: StandardInteger;
                        ip: StandardInteger; par: StandardReal;
                        isVertex: StandardBoolean = standardFalse): Handle[
    TopOpeBRepDS_CurvePointInterference] {.importcpp: "ChFi3d_FilPointInDS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilVertexInDS*(et: TopAbsOrientation; ic: StandardInteger;
                         ip: StandardInteger; par: StandardReal): Handle[
    TopOpeBRepDS_CurvePointInterference] {.importcpp: "ChFi3d_FilVertexInDS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilDS*(solidIndex: StandardInteger; corDat: Handle[ChFiDS_Stripe];
                 dStr: var TopOpeBRepDS_DataStructure;
                 reglist: var ChFiDS_Regularities; tol3d: StandardReal;
                 tol2d: StandardReal) {.importcpp: "ChFi3d_FilDS(@)",
                                      header: "ChFi3d_Builder_0.hxx".}
proc chFi3dStripeEdgeInter*(theStripe1: Handle[ChFiDS_Stripe];
                           theStripe2: Handle[ChFiDS_Stripe];
                           dStr: var TopOpeBRepDS_DataStructure;
                           tol2d: StandardReal) {.
    importcpp: "ChFi3d_StripeEdgeInter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIndexOfSurfData*(v1: TopoDS_Vertex; cd: Handle[ChFiDS_Stripe];
                           sens: var StandardInteger): StandardInteger {.
    importcpp: "ChFi3d_IndexOfSurfData(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEdgeFromV1*(v1: TopoDS_Vertex; cd: Handle[ChFiDS_Stripe];
                      sens: var StandardInteger): TopoDS_Edge {.
    importcpp: "ChFi3d_EdgeFromV1(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dConvTol2dToTol3d*(s: Handle[Adaptor3dHSurface]; tol2d: StandardReal): StandardReal {.
    importcpp: "ChFi3d_ConvTol2dToTol3d(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputeCurves*(s1: Handle[Adaptor3dHSurface];
                         s2: Handle[Adaptor3dHSurface];
                         pardeb: TColStdArray1OfReal; parfin: TColStdArray1OfReal;
                         c3d: var Handle[GeomCurve]; pc1: var Handle[Geom2dCurve];
                         pc2: var Handle[Geom2dCurve]; tol3d: StandardReal;
                         tol2d: StandardReal; tolreached: var StandardReal;
                         wholeCurv: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "ChFi3d_ComputeCurves(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIntCS*(s: Handle[Adaptor3dHSurface]; c: Handle[Adaptor3dHCurve];
                 p2dS: var GpPnt2d; wc: var StandardReal): StandardBoolean {.
    importcpp: "ChFi3d_IntCS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputesIntPC*(fi1: ChFiDS_FaceInterference;
                         fi2: ChFiDS_FaceInterference;
                         hs1: Handle[GeomAdaptorHSurface];
                         hs2: Handle[GeomAdaptorHSurface];
                         uInt1: var StandardReal; uInt2: var StandardReal) {.
    importcpp: "ChFi3d_ComputesIntPC(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputesIntPC*(fi1: ChFiDS_FaceInterference;
                         fi2: ChFiDS_FaceInterference;
                         hs1: Handle[GeomAdaptorHSurface];
                         hs2: Handle[GeomAdaptorHSurface];
                         uInt1: var StandardReal; uInt2: var StandardReal;
                         p: var GpPnt) {.importcpp: "ChFi3d_ComputesIntPC(@)",
                                      header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoundSurf*(dStr: var TopOpeBRepDS_DataStructure;
                     fd1: Handle[ChFiDS_SurfData]; iFaCo1: StandardInteger;
                     iFaArc1: StandardInteger): Handle[GeomAdaptorHSurface] {.
    importcpp: "ChFi3d_BoundSurf(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSearchPivot*(s: ptr StandardInteger; u: array[3, array[3, StandardReal]];
                       t: StandardReal): StandardInteger {.
    importcpp: "ChFi3d_SearchPivot(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSearchFD*(dStr: var TopOpeBRepDS_DataStructure;
                    cd1: Handle[ChFiDS_Stripe]; cd2: Handle[ChFiDS_Stripe];
                    sens1: StandardInteger; sens2: StandardInteger;
                    i1: var StandardInteger; i2: var StandardInteger;
                    p1: var StandardReal; p2: var StandardReal; ind1: StandardInteger;
                    ind2: StandardInteger; face: var TopoDS_Face;
                    sameside: var StandardBoolean; jf1: var StandardInteger;
                    jf2: var StandardInteger): StandardBoolean {.
    importcpp: "ChFi3d_SearchFD(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dParameters*(s: Handle[GeomSurface]; p3d: GpPnt; u: var StandardReal;
                      v: var StandardReal) {.importcpp: "ChFi3d_Parameters(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dTrimCurve*(gc: Handle[GeomCurve]; firstP: GpPnt; lastP: GpPnt;
                     gtc: var Handle[GeomTrimmedCurve]) {.
    importcpp: "ChFi3d_TrimCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dPerformElSpine*(hes: var Handle[ChFiDS_HElSpine];
                          spine: var Handle[ChFiDS_Spine];
                          continuity: GeomAbsShape; tol: StandardReal;
                          isOffset: StandardBoolean = standardFalse) {.
    importcpp: "ChFi3d_PerformElSpine(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeFace*(spine: Handle[ChFiDS_Spine];
                       hs: Handle[BRepAdaptorHSurface]; tol: StandardReal): TopoDS_Face {.
    importcpp: "ChFi3d_EnlargeFace(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheFace1*(map: TopToolsListOfShape; f1: TopoDS_Face;
                        f: var TopoDS_Face) {.importcpp: "ChFi3d_cherche_face1(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheElement*(v: TopoDS_Vertex; e1: TopoDS_Edge; f1: TopoDS_Face;
                          e: var TopoDS_Edge; vtx: var TopoDS_Vertex) {.
    importcpp: "ChFi3d_cherche_element(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEvalTolReached*(s1: Handle[Adaptor3dHSurface]; pc1: Handle[Geom2dCurve];
                          s2: Handle[Adaptor3dHSurface]; pc2: Handle[Geom2dCurve];
                          c: Handle[GeomCurve]): StandardReal {.
    importcpp: "ChFi3d_EvalTolReached(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheEdge*(v: TopoDS_Vertex; e1: TopToolsArray1OfShape; f1: TopoDS_Face;
                       e: var TopoDS_Edge; vtx: var TopoDS_Vertex) {.
    importcpp: "ChFi3d_cherche_edge(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNbface*(mapVF: TopToolsListOfShape): StandardInteger {.
    importcpp: "ChFi3d_nbface(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEdgeCommonFaces*(mapEF: TopToolsListOfShape; f1: var TopoDS_Face;
                           f2: var TopoDS_Face) {.
    importcpp: "ChFi3d_edge_common_faces(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dAngleEdge*(vtx: TopoDS_Vertex; e1: TopoDS_Edge; e2: TopoDS_Edge): StandardReal {.
    importcpp: "ChFi3d_AngleEdge(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheBordsLibres*(myVEMap: ChFiDS_Map; v1: TopoDS_Vertex;
                              bordlibre: var StandardBoolean;
                              edgelibre1: var TopoDS_Edge;
                              edgelibre2: var TopoDS_Edge) {.
    importcpp: "ChFi3d_ChercheBordsLibres(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNbNotDegeneratedEdges*(vtx: TopoDS_Vertex; vEMap: ChFiDS_Map): StandardInteger {.
    importcpp: "ChFi3d_NbNotDegeneratedEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNumberOfEdges*(vtx: TopoDS_Vertex; vEMap: ChFiDS_Map): StandardInteger {.
    importcpp: "ChFi3d_NumberOfEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNumberOfSharpEdges*(vtx: TopoDS_Vertex; vEMap: ChFiDS_Map;
                              eFmap: ChFiDS_Map): StandardInteger {.
    importcpp: "ChFi3d_NumberOfSharpEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheVertex*(e1: TopoDS_Edge; e2: TopoDS_Edge;
                         vertex: var TopoDS_Vertex; trouve: var StandardBoolean) {.
    importcpp: "ChFi3d_cherche_vertex(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCouture*(f: TopoDS_Face; couture: var StandardBoolean;
                   edgecouture: var TopoDS_Edge) {.importcpp: "ChFi3d_Couture(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCoutureOnVertex*(f: TopoDS_Face; v: TopoDS_Vertex;
                           couture: var StandardBoolean;
                           edgecouture: var TopoDS_Edge) {.
    importcpp: "ChFi3d_CoutureOnVertex(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIsPseudoSeam*(e: TopoDS_Edge; f: TopoDS_Face): StandardBoolean {.
    importcpp: "ChFi3d_IsPseudoSeam(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dApproxByC2*(c: Handle[GeomCurve]): Handle[GeomBSplineCurve] {.
    importcpp: "ChFi3d_ApproxByC2(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIsSmooth*(c: Handle[GeomCurve]): StandardBoolean {.
    importcpp: "ChFi3d_IsSmooth(@)", header: "ChFi3d_Builder_0.hxx".}

