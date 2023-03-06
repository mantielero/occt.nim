import ../topopebrepds/topopebrepds_types
import ../gp/gp_types
import ../topabs/topabs_types
import ../intsurf/intsurf_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../brepadaptor/brepadaptor_types
import ../geomadaptor/geomadaptor_types
import ../toptools/toptools_types
import ../tcolstd/tcolstd_types
import ../geomfill/geomfill_types
import ../topods/topods_types
import ../chfids/chfids_types
import ../bnd/bnd_types
import ../geom/geom_types
import ../geomabs/geomabs_types
import ../geom2d/geom2d_types
import ../brepblend/brepblend_types




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
proc chFi3dInPeriod*(u: cfloat; uFirst: cfloat; uLast: cfloat; eps: cfloat): cfloat {.
    cdecl, importcpp: "ChFi3d_InPeriod(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoite*(p1: gp_Pnt2d; p2: gp_Pnt2d; mu1: var cfloat; mu2: var cfloat; mv3: var cfloat;
                 mv2: var cfloat) {.cdecl, importcpp: "ChFi3d_Boite(@)",
                                header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoite*(p1: gp_Pnt2d; p2: gp_Pnt2d; p3: gp_Pnt2d; p4: gp_Pnt2d; du: var cfloat;
                 dv: var cfloat; mu1: var cfloat; mu2: var cfloat; mv3: var cfloat;
                 mv2: var cfloat) {.cdecl, importcpp: "ChFi3d_Boite(@)",
                                header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSetPointTolerance*(dStr: var TopOpeBRepDS_DataStructure; box: BndBox;
                             ip: cint) {.cdecl, importcpp: "ChFi3d_SetPointTolerance(@)",
                                       header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(c: Handle[GeomCurve]; wd: cfloat; wf: cfloat; box1: var BndBox;
                      box2: var BndBox) {.cdecl, importcpp: "ChFi3d_EnlargeBox(@)",
                                       header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(s: Handle[Adaptor3dHSurface]; pc: Handle[Geom2dCurve];
                      wd: cfloat; wf: cfloat; box1: var BndBox; box2: var BndBox) {.cdecl,
    importcpp: "ChFi3d_EnlargeBox(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(e: TopoDS_Edge; lf: TopToolsListOfShape; w: cfloat;
                      box: var BndBox) {.cdecl, importcpp: "ChFi3d_EnlargeBox(@)",
                                      header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(dStr: var TopOpeBRepDS_DataStructure;
                      st: Handle[ChFiDS_Stripe]; sd: Handle[ChFiDS_SurfData];
                      b1: var BndBox; b2: var BndBox; isfirst: bool) {.cdecl,
    importcpp: "ChFi3d_EnlargeBox(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEvalconti*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face): GeomAbsShape {.
    cdecl, importcpp: "ChFi3d_evalconti(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dConexfaces*(e: TopoDS_Edge; f1: var TopoDS_Face; f2: var TopoDS_Face;
                      eFMap: ChFiDS_Map) {.cdecl,
    importcpp: "ChFi3d_conexfaces(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEdgeState*(e: ptr TopoDS_Edge; eFMap: ChFiDS_Map): ChFiDS_State {.cdecl,
    importcpp: "ChFi3d_EdgeState(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dKParticular*(spine: Handle[ChFiDS_Spine]; ie: cint;
                       s1: BRepAdaptorSurface; s2: BRepAdaptorSurface): bool {.cdecl,
    importcpp: "ChFi3d_KParticular(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoundFac*(s: var BRepAdaptorSurface; umin: cfloat; umax: cfloat;
                    vmin: cfloat; vmax: cfloat; checknaturalbounds: bool = true) {.
    cdecl, importcpp: "ChFi3d_BoundFac(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoundSrf*(s: var GeomAdaptorSurface; umin: cfloat; umax: cfloat;
                    vmin: cfloat; vmax: cfloat; checknaturalbounds: bool = true) {.
    cdecl, importcpp: "ChFi3d_BoundSrf(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dInterPlaneEdge*(plan: Handle[Adaptor3dHSurface];
                          c: Handle[Adaptor3dHCurve]; w: var cfloat; sens: bool;
                          tolc: cfloat): bool {.cdecl,
    importcpp: "ChFi3d_InterPlaneEdge(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dExtrSpineCarac*(dStr: TopOpeBRepDS_DataStructure;
                          cd: Handle[ChFiDS_Stripe]; i: cint; p: cfloat; jf: cint;
                          sens: cint; p2: var gp_Pnt; v: var gp_Vec; r: var cfloat) {.cdecl,
    importcpp: "ChFi3d_ExtrSpineCarac(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCircularSpine*(wFirst: var cfloat; wLast: var cfloat; pdeb: gp_Pnt; vdeb: gp_Vec;
                         pfin: gp_Pnt; vfin: gp_Vec; rad: cfloat): Handle[GeomCircle] {.
    cdecl, importcpp: "ChFi3d_CircularSpine(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSpine*(pd: gp_Pnt; vd: var gp_Vec; pf: gp_Pnt; vf: var gp_Vec; r: cfloat): Handle[
    GeomBezierCurve] {.cdecl, importcpp: "ChFi3d_Spine(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(fac: Handle[Adaptor3dHSurface]; curv: var Handle[Geom2dCurve];
                   sens1: cint; pfac1: gp_Pnt2d; vfac1: gp_Vec2d; sens2: cint; pfac2: gp_Pnt2d;
                   vfac2: gp_Vec2d; t3d: cfloat; ta: cfloat): Handle[GeomFillBoundary] {.
    cdecl, importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(surf: Handle[Adaptor3dHSurface]; curv: var Handle[Geom2dCurve];
                   sens1: cint; p1: gp_Pnt2d; v1: var gp_Vec; sens2: cint; p2: gp_Pnt2d;
                   v2: var gp_Vec; t3d: cfloat; ta: cfloat): Handle[GeomFillBoundary] {.
    cdecl, importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(s: Handle[GeomSurface]; p1: gp_Pnt2d; p2: gp_Pnt2d; t3d: cfloat;
                   ta: cfloat; isfreeboundary: bool = false): Handle[GeomFillBoundary] {.
    cdecl, importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(hs: Handle[Adaptor3dHSurface]; p1: gp_Pnt2d; p2: gp_Pnt2d; t3d: cfloat;
                   ta: cfloat; isfreeboundary: bool = false): Handle[GeomFillBoundary] {.
    cdecl, importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(hs: Handle[Adaptor3dHSurface]; curv: Handle[Geom2dCurve];
                   t3d: cfloat; ta: cfloat; isfreeboundary: bool = false): Handle[
    GeomFillBoundary] {.cdecl, importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(fac: Handle[Adaptor3dHSurface]; curv: var Handle[Geom2dCurve];
                   p1: gp_Pnt2d; p2: gp_Pnt2d; t3d: cfloat; ta: cfloat;
                   isfreeboundary: bool = false): Handle[GeomFillBoundary] {.cdecl,
    importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCoefficient*(v3d: gp_Vec; d1u: gp_Vec; d1v: gp_Vec; du: var cfloat; dv: var cfloat) {.
    cdecl, importcpp: "ChFi3d_Coefficient(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBuildPCurve*(p1: gp_Pnt2d; d1: var Dir2dObj; p2: gp_Pnt2d; d2: var Dir2dObj;
                       redresse: bool = true): Handle[Geom2dCurve] {.cdecl,
    importcpp: "ChFi3d_BuildPCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBuildPCurve*(surf: Handle[Adaptor3dHSurface]; p1: gp_Pnt2d; v1: gp_Vec; p2: gp_Pnt2d;
                       v2: gp_Vec; redresse: bool = false): Handle[Geom2dCurve] {.cdecl,
    importcpp: "ChFi3d_BuildPCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBuildPCurve*(surf: Handle[Adaptor3dHSurface]; p1: gp_Pnt2d; v1: gp_Vec2d;
                       p2: gp_Pnt2d; v2: gp_Vec2d; redresse: bool = false): Handle[Geom2dCurve] {.
    cdecl, importcpp: "ChFi3d_BuildPCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCheckSameParameter*(c3d: Handle[Adaptor3dHCurve];
                              pcurv: var Handle[Geom2dCurve];
                              s: Handle[Adaptor3dHSurface]; tol3d: cfloat;
                              tolreached: var cfloat): bool {.cdecl,
    importcpp: "ChFi3d_CheckSameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSameParameter*(c3d: Handle[Adaptor3dHCurve];
                         pcurv: var Handle[Geom2dCurve];
                         s: Handle[Adaptor3dHSurface]; tol3d: cfloat;
                         tolreached: var cfloat): bool {.cdecl,
    importcpp: "ChFi3d_SameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSameParameter*(c3d: Handle[GeomCurve]; pcurv: var Handle[Geom2dCurve];
                         s: Handle[GeomSurface]; pardeb: cfloat; parfin: cfloat;
                         tol3d: cfloat; tolreached: var cfloat): bool {.cdecl,
    importcpp: "ChFi3d_SameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputePCurv*(c3d: Handle[GeomCurve]; uv1: gp_Pnt2d; uv2: gp_Pnt2d;
                        pcurv: var Handle[Geom2dCurve]; s: Handle[GeomSurface];
                        pardeb: cfloat; parfin: cfloat; tol3d: cfloat;
                        tolreached: var cfloat; reverse: bool = false) {.cdecl,
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputePCurv*(c3d: Handle[Adaptor3dHCurve]; uv1: gp_Pnt2d; uv2: gp_Pnt2d;
                        pcurv: var Handle[Geom2dCurve];
                        s: Handle[Adaptor3dHSurface]; pardeb: cfloat;
                        parfin: cfloat; tol3d: cfloat; tolreached: var cfloat;
                        reverse: bool = false) {.cdecl,
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputePCurv*(uv1: gp_Pnt2d; uv2: gp_Pnt2d; pcurv: var Handle[Geom2dCurve];
                        pardeb: cfloat; parfin: cfloat; reverse: bool = false) {.cdecl,
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIntTraces*(fd1: Handle[ChFiDS_SurfData]; pref1: cfloat; p1: var cfloat;
                     jf1: cint; sens1: cint; fd2: Handle[ChFiDS_SurfData];
                     pref2: cfloat; p2: var cfloat; jf2: cint; sens2: cint;
                     refP2d: gp_Pnt2d; check2dDistance: bool = false;
                     enlarge: bool = false): bool {.cdecl,
    importcpp: "ChFi3d_IntTraces(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIsInFront*(dStr: var TopOpeBRepDS_DataStructure;
                     cd1: Handle[ChFiDS_Stripe]; cd2: Handle[ChFiDS_Stripe];
                     i1: cint; i2: cint; sens1: cint; sens2: cint; p1: var cfloat;
                     p2: var cfloat; face: var TopoDS_Face; sameside: var bool;
                     jf1: var cint; jf2: var cint; visavis: var bool; vtx: TopoDS_Vertex;
                     check2dDistance: bool = false; enlarge: bool = false): bool {.cdecl,
    importcpp: "ChFi3d_IsInFront(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dProjectPCurv*(hCg: Handle[Adaptor3dHCurve];
                        hSg: Handle[Adaptor3dHSurface];
                        pcurv: var Handle[Geom2dCurve]; tol3d: cfloat;
                        tolreached: var cfloat) {.cdecl,
    importcpp: "ChFi3d_ProjectPCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dReparamPcurv*(uf: cfloat; ul: cfloat; pcurv: var Handle[Geom2dCurve]) {.
    cdecl, importcpp: "ChFi3d_ReparamPcurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputeArete*(p1: ChFiDS_CommonPoint; uv1: gp_Pnt2d; p2: ChFiDS_CommonPoint;
                        uv2: gp_Pnt2d; surf: Handle[GeomSurface];
                        c3d: var Handle[GeomCurve]; pcurv: var Handle[Geom2dCurve];
                        pardeb: var cfloat; parfin: var cfloat; tol3d: cfloat;
                        tol2d: cfloat; tolreached: var cfloat; iFlag: cint) {.cdecl,
    importcpp: "ChFi3d_ComputeArete(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilCurveInDS*(icurv: cint; isurf: cint; pcurv: Handle[Geom2dCurve];
                        et: TopAbsOrientation): Handle[
    TopOpeBRepDS_SurfaceCurveInterference] {.cdecl,
    importcpp: "ChFi3d_FilCurveInDS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dTrsfTrans*(t1: IntSurfTypeTrans): TopAbsOrientation {.cdecl,
    importcpp: "ChFi3d_TrsfTrans(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilCommonPoint*(sp: BRepBlendExtremity; transLine: IntSurfTypeTrans;
                          start: bool; cp: var ChFiDS_CommonPoint; tol: cfloat) {.
    cdecl, importcpp: "ChFi3d_FilCommonPoint(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSolidIndex*(sp: Handle[ChFiDS_Spine];
                      dStr: var TopOpeBRepDS_DataStructure; mapESo: var ChFiDS_Map;
                      mapESh: var ChFiDS_Map): cint {.cdecl,
    importcpp: "ChFi3d_SolidIndex(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIndexPointInDS*(p1: ChFiDS_CommonPoint;
                          dStr: var TopOpeBRepDS_DataStructure): cint {.cdecl,
    importcpp: "ChFi3d_IndexPointInDS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilPointInDS*(et: TopAbsOrientation; ic: cint; ip: cint; par: cfloat;
                        isVertex: bool = false): Handle[
    TopOpeBRepDS_CurvePointInterference] {.cdecl,
    importcpp: "ChFi3d_FilPointInDS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilVertexInDS*(et: TopAbsOrientation; ic: cint; ip: cint; par: cfloat): Handle[
    TopOpeBRepDS_CurvePointInterference] {.cdecl,
    importcpp: "ChFi3d_FilVertexInDS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilDS*(solidIndex: cint; corDat: Handle[ChFiDS_Stripe];
                 dStr: var TopOpeBRepDS_DataStructure;
                 reglist: var ChFiDS_Regularities; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "ChFi3d_FilDS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dStripeEdgeInter*(theStripe1: Handle[ChFiDS_Stripe];
                           theStripe2: Handle[ChFiDS_Stripe];
                           dStr: var TopOpeBRepDS_DataStructure; tol2d: cfloat) {.
    cdecl, importcpp: "ChFi3d_StripeEdgeInter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIndexOfSurfData*(v1: TopoDS_Vertex; cd: Handle[ChFiDS_Stripe];
                           sens: var cint): cint {.cdecl,
    importcpp: "ChFi3d_IndexOfSurfData(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEdgeFromV1*(v1: TopoDS_Vertex; cd: Handle[ChFiDS_Stripe]; sens: var cint): TopoDS_Edge {.
    cdecl, importcpp: "ChFi3d_EdgeFromV1(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dConvTol2dToTol3d*(s: Handle[Adaptor3dHSurface]; tol2d: cfloat): cfloat {.
    cdecl, importcpp: "ChFi3d_ConvTol2dToTol3d(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputeCurves*(s1: Handle[Adaptor3dHSurface];
                         s2: Handle[Adaptor3dHSurface];
                         pardeb: TColStdArray1OfReal; parfin: TColStdArray1OfReal;
                         c3d: var Handle[GeomCurve]; pc1: var Handle[Geom2dCurve];
                         pc2: var Handle[Geom2dCurve]; tol3d: cfloat; tol2d: cfloat;
                         tolreached: var cfloat; wholeCurv: bool = true): bool {.cdecl,
    importcpp: "ChFi3d_ComputeCurves(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIntCS*(s: Handle[Adaptor3dHSurface]; c: Handle[Adaptor3dHCurve];
                 p2dS: var gp_Pnt2d; wc: var cfloat): bool {.cdecl,
    importcpp: "ChFi3d_IntCS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputesIntPC*(fi1: ChFiDS_FaceInterference;
                         fi2: ChFiDS_FaceInterference;
                         hs1: Handle[GeomAdaptorHSurface];
                         hs2: Handle[GeomAdaptorHSurface]; uInt1: var cfloat;
                         uInt2: var cfloat) {.cdecl,
    importcpp: "ChFi3d_ComputesIntPC(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputesIntPC*(fi1: ChFiDS_FaceInterference;
                         fi2: ChFiDS_FaceInterference;
                         hs1: Handle[GeomAdaptorHSurface];
                         hs2: Handle[GeomAdaptorHSurface]; uInt1: var cfloat;
                         uInt2: var cfloat; p: var gp_Pnt) {.cdecl,
    importcpp: "ChFi3d_ComputesIntPC(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoundSurf*(dStr: var TopOpeBRepDS_DataStructure;
                     fd1: Handle[ChFiDS_SurfData]; iFaCo1: cint; iFaArc1: cint): Handle[
    GeomAdaptorHSurface] {.cdecl, importcpp: "ChFi3d_BoundSurf(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSearchPivot*(s: ptr cint; u: array[3, array[3, cfloat]]; t: cfloat): cint {.
    cdecl, importcpp: "ChFi3d_SearchPivot(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSearchFD*(dStr: var TopOpeBRepDS_DataStructure;
                    cd1: Handle[ChFiDS_Stripe]; cd2: Handle[ChFiDS_Stripe];
                    sens1: cint; sens2: cint; i1: var cint; i2: var cint; p1: var cfloat;
                    p2: var cfloat; ind1: cint; ind2: cint; face: var TopoDS_Face;
                    sameside: var bool; jf1: var cint; jf2: var cint): bool {.cdecl,
    importcpp: "ChFi3d_SearchFD(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dParameters*(s: Handle[GeomSurface]; p3d: gp_Pnt; u: var cfloat; v: var cfloat) {.
    cdecl, importcpp: "ChFi3d_Parameters(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dTrimCurve*(gc: Handle[GeomCurve]; firstP: gp_Pnt; lastP: gp_Pnt;
                     gtc: var Handle[GeomTrimmedCurve]) {.cdecl,
    importcpp: "ChFi3d_TrimCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dPerformElSpine*(hes: var Handle[ChFiDS_HElSpine];
                          spine: var Handle[ChFiDS_Spine];
                          continuity: GeomAbsShape; tol: cfloat;
                          isOffset: bool = false) {.cdecl,
    importcpp: "ChFi3d_PerformElSpine(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeFace*(spine: Handle[ChFiDS_Spine];
                       hs: Handle[BRepAdaptorHSurface]; tol: cfloat): TopoDS_Face {.
    cdecl, importcpp: "ChFi3d_EnlargeFace(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheFace1*(map: TopToolsListOfShape; f1: TopoDS_Face;
                        f: var TopoDS_Face) {.cdecl,
    importcpp: "ChFi3d_cherche_face1(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheElement*(v: TopoDS_Vertex; e1: TopoDS_Edge; f1: TopoDS_Face;
                          e: var TopoDS_Edge; vtx: var TopoDS_Vertex) {.cdecl,
    importcpp: "ChFi3d_cherche_element(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEvalTolReached*(s1: Handle[Adaptor3dHSurface]; pc1: Handle[Geom2dCurve];
                          s2: Handle[Adaptor3dHSurface]; pc2: Handle[Geom2dCurve];
                          c: Handle[GeomCurve]): cfloat {.cdecl,
    importcpp: "ChFi3d_EvalTolReached(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheEdge*(v: TopoDS_Vertex; e1: TopToolsArray1OfShape; f1: TopoDS_Face;
                       e: var TopoDS_Edge; vtx: var TopoDS_Vertex) {.cdecl,
    importcpp: "ChFi3d_cherche_edge(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNbface*(mapVF: TopToolsListOfShape): cint {.cdecl,
    importcpp: "ChFi3d_nbface(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEdgeCommonFaces*(mapEF: TopToolsListOfShape; f1: var TopoDS_Face;
                           f2: var TopoDS_Face) {.cdecl,
    importcpp: "ChFi3d_edge_common_faces(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dAngleEdge*(vtx: TopoDS_Vertex; e1: TopoDS_Edge; e2: TopoDS_Edge): cfloat {.
    cdecl, importcpp: "ChFi3d_AngleEdge(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheBordsLibres*(myVEMap: ChFiDS_Map; v1: TopoDS_Vertex;
                              bordlibre: var bool; edgelibre1: var TopoDS_Edge;
                              edgelibre2: var TopoDS_Edge) {.cdecl,
    importcpp: "ChFi3d_ChercheBordsLibres(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNbNotDegeneratedEdges*(vtx: TopoDS_Vertex; vEMap: ChFiDS_Map): cint {.
    cdecl, importcpp: "ChFi3d_NbNotDegeneratedEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNumberOfEdges*(vtx: TopoDS_Vertex; vEMap: ChFiDS_Map): cint {.cdecl,
    importcpp: "ChFi3d_NumberOfEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNumberOfSharpEdges*(vtx: TopoDS_Vertex; vEMap: ChFiDS_Map;
                              eFmap: ChFiDS_Map): cint {.cdecl,
    importcpp: "ChFi3d_NumberOfSharpEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheVertex*(e1: TopoDS_Edge; e2: TopoDS_Edge;
                         vertex: var TopoDS_Vertex; trouve: var bool) {.cdecl,
    importcpp: "ChFi3d_cherche_vertex(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCouture*(f: TopoDS_Face; couture: var bool; edgecouture: var TopoDS_Edge) {.
    cdecl, importcpp: "ChFi3d_Couture(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCoutureOnVertex*(f: TopoDS_Face; v: TopoDS_Vertex; couture: var bool;
                           edgecouture: var TopoDS_Edge) {.cdecl,
    importcpp: "ChFi3d_CoutureOnVertex(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIsPseudoSeam*(e: TopoDS_Edge; f: TopoDS_Face): bool {.cdecl,
    importcpp: "ChFi3d_IsPseudoSeam(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dApproxByC2*(c: Handle[GeomCurve]): Handle[GeomBSplineCurve] {.cdecl,
    importcpp: "ChFi3d_ApproxByC2(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIsSmooth*(c: Handle[GeomCurve]): bool {.cdecl,
    importcpp: "ChFi3d_IsSmooth(@)", header: "ChFi3d_Builder_0.hxx".}

