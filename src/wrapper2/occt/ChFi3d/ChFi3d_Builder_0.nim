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

import
  ../TopOpeBRepDS/TopOpeBRepDS_SurfaceCurveInterference,
  ../TopOpeBRepDS/TopOpeBRepDS_CurvePointInterference,
  ../TopOpeBRepDS/TopOpeBRepDS_DataStructure, ../TopOpeBRepDS/TopOpeBRepDS_Curve,
  ../TopOpeBRepDS/TopOpeBRepDS_Surface, ../BRepBlend/BRepBlend_Extremity,
  ../ChFiDS/ChFiDS_Stripe, ../ChFiDS/ChFiDS_SurfData, ../ChFiDS/ChFiDS_Spine,
  ../ChFiDS/ChFiDS_HElSpine, ../ChFiDS/ChFiDS_CommonPoint,
  ../ChFiDS/ChFiDS_Regularities, ../ChFiDS/ChFiDS_FaceInterference,
  ../ChFiDS/ChFiDS_Map, ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Vertex,
  ../TopoDS/TopoDS, ../TopAbs/TopAbs_Orientation,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_ListIteratorOfListOfShape, ../IntSurf/IntSurf_LineOn2S,
  ../IntSurf/IntSurf_TypeTrans, ../GeomFill/GeomFill_Boundary,
  ../GeomFill/GeomFill_BoundWithSurf, ../GeomFill/GeomFill_SimpleBound,
  ../GeomFill/GeomFill_ConstrainedFilling, ../Geom2d/Geom2d_Curve,
  ../Geom/Geom_Curve, ../Geom/Geom_TrimmedCurve, ../Geom/Geom_Surface,
  ../Geom/Geom_BezierCurve, ../Geom/Geom_Circle, ../GeomAdaptor/GeomAdaptor_Curve,
  ../GeomAdaptor/GeomAdaptor_Surface, ../GeomAdaptor/GeomAdaptor_HSurface,
  ../BRepAdaptor/BRepAdaptor_Surface, ../BRepAdaptor/BRepAdaptor_HSurface,
  ../Adaptor3d/Adaptor3d_HCurve, ../Adaptor3d/Adaptor3d_HCurveOnSurface,
  ../Adaptor3d/Adaptor3d_HSurface, ../Extrema/Extrema_LocateExtCC,
  ../Extrema/Extrema_POnCurv, ../Bnd/Bnd_Box, ../GeomAbs/GeomAbs_Shape,
  ../gp/gp_Pnt, ../gp/gp_Vec, ../gp/gp_Pnt2d, ../gp/gp_Vec2d, ../gp/gp_Dir2d,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfVec,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../TopTools/TopTools_Array1OfShape

when defined(OCCT_DEBUG):
  import
    ../OSD/OSD_Chronometer

  var
    simul* {.importcpp: "simul", header: "ChFi3d_Builder_0.hxx".}: OSD_Chronometer
    elspine* {.importcpp: "elspine", header: "ChFi3d_Builder_0.hxx".}: OSD_Chronometer
    chemine* {.importcpp: "chemine", header: "ChFi3d_Builder_0.hxx".}: OSD_Chronometer
proc ChFi3d_InPeriod*(U: Standard_Real; UFirst: Standard_Real; ULast: Standard_Real;
                     Eps: Standard_Real): Standard_Real {.
    importcpp: "ChFi3d_InPeriod(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_Boite*(p1: gp_Pnt2d; p2: gp_Pnt2d; mu: var Standard_Real;
                  Mu: var Standard_Real; mv: var Standard_Real; Mv: var Standard_Real) {.
    importcpp: "ChFi3d_Boite(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_Boite*(p1: gp_Pnt2d; p2: gp_Pnt2d; p3: gp_Pnt2d; p4: gp_Pnt2d;
                  Du: var Standard_Real; Dv: var Standard_Real; mu: var Standard_Real;
                  Mu: var Standard_Real; mv: var Standard_Real; Mv: var Standard_Real) {.
    importcpp: "ChFi3d_Boite(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_SetPointTolerance*(DStr: var TopOpeBRepDS_DataStructure; box: Bnd_Box;
                              IP: Standard_Integer) {.
    importcpp: "ChFi3d_SetPointTolerance(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_EnlargeBox*(C: handle[Geom_Curve]; wd: Standard_Real; wf: Standard_Real;
                       box1: var Bnd_Box; box2: var Bnd_Box) {.
    importcpp: "ChFi3d_EnlargeBox(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_EnlargeBox*(S: handle[Adaptor3d_HSurface]; PC: handle[Geom2d_Curve];
                       wd: Standard_Real; wf: Standard_Real; box1: var Bnd_Box;
                       box2: var Bnd_Box) {.importcpp: "ChFi3d_EnlargeBox(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_EnlargeBox*(E: TopoDS_Edge; LF: TopTools_ListOfShape; w: Standard_Real;
                       box: var Bnd_Box) {.importcpp: "ChFi3d_EnlargeBox(@)",
                                        header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_EnlargeBox*(DStr: var TopOpeBRepDS_DataStructure;
                       st: handle[ChFiDS_Stripe]; sd: handle[ChFiDS_SurfData];
                       b1: var Bnd_Box; b2: var Bnd_Box; isfirst: Standard_Boolean) {.
    importcpp: "ChFi3d_EnlargeBox(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_evalconti*(E: TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face): GeomAbs_Shape {.
    importcpp: "ChFi3d_evalconti(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_conexfaces*(E: TopoDS_Edge; F1: var TopoDS_Face; F2: var TopoDS_Face;
                       EFMap: ChFiDS_Map) {.importcpp: "ChFi3d_conexfaces(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_EdgeState*(E: ptr TopoDS_Edge; EFMap: ChFiDS_Map): ChFiDS_State {.
    importcpp: "ChFi3d_EdgeState(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_KParticular*(Spine: handle[ChFiDS_Spine]; IE: Standard_Integer;
                        S1: BRepAdaptor_Surface; S2: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "ChFi3d_KParticular(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_BoundFac*(S: var BRepAdaptor_Surface; umin: Standard_Real;
                     umax: Standard_Real; vmin: Standard_Real; vmax: Standard_Real;
                     checknaturalbounds: Standard_Boolean = Standard_True) {.
    importcpp: "ChFi3d_BoundFac(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_BoundSrf*(S: var GeomAdaptor_Surface; umin: Standard_Real;
                     umax: Standard_Real; vmin: Standard_Real; vmax: Standard_Real;
                     checknaturalbounds: Standard_Boolean = Standard_True) {.
    importcpp: "ChFi3d_BoundSrf(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_InterPlaneEdge*(Plan: handle[Adaptor3d_HSurface];
                           C: handle[Adaptor3d_HCurve]; W: var Standard_Real;
                           Sens: Standard_Boolean; tolc: Standard_Real): Standard_Boolean {.
    importcpp: "ChFi3d_InterPlaneEdge(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ExtrSpineCarac*(DStr: TopOpeBRepDS_DataStructure;
                           cd: handle[ChFiDS_Stripe]; i: Standard_Integer;
                           p: Standard_Real; jf: Standard_Integer;
                           sens: Standard_Integer; P: var gp_Pnt; V: var gp_Vec;
                           R: var Standard_Real) {.
    importcpp: "ChFi3d_ExtrSpineCarac(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_CircularSpine*(WFirst: var Standard_Real; WLast: var Standard_Real;
                          Pdeb: gp_Pnt; Vdeb: gp_Vec; Pfin: gp_Pnt; Vfin: gp_Vec;
                          rad: Standard_Real): handle[Geom_Circle] {.
    importcpp: "ChFi3d_CircularSpine(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_Spine*(pd: gp_Pnt; vd: var gp_Vec; pf: gp_Pnt; vf: var gp_Vec; R: Standard_Real): handle[
    Geom_BezierCurve] {.importcpp: "ChFi3d_Spine(@)",
                       header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_mkbound*(Fac: handle[Adaptor3d_HSurface];
                    curv: var handle[Geom2d_Curve]; sens1: Standard_Integer;
                    pfac1: gp_Pnt2d; vfac1: gp_Vec2d; sens2: Standard_Integer;
                    pfac2: gp_Pnt2d; vfac2: gp_Vec2d; t3d: Standard_Real;
                    ta: Standard_Real): handle[GeomFill_Boundary] {.
    importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_mkbound*(Surf: handle[Adaptor3d_HSurface];
                    curv: var handle[Geom2d_Curve]; sens1: Standard_Integer;
                    p1: gp_Pnt2d; v1: var gp_Vec; sens2: Standard_Integer;
                    p2: gp_Pnt2d; v2: var gp_Vec; t3d: Standard_Real; ta: Standard_Real): handle[
    GeomFill_Boundary] {.importcpp: "ChFi3d_mkbound(@)",
                        header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_mkbound*(s: handle[Geom_Surface]; p1: gp_Pnt2d; p2: gp_Pnt2d;
                    t3d: Standard_Real; ta: Standard_Real;
                    isfreeboundary: Standard_Boolean = Standard_False): handle[
    GeomFill_Boundary] {.importcpp: "ChFi3d_mkbound(@)",
                        header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_mkbound*(HS: handle[Adaptor3d_HSurface]; p1: gp_Pnt2d; p2: gp_Pnt2d;
                    t3d: Standard_Real; ta: Standard_Real;
                    isfreeboundary: Standard_Boolean = Standard_False): handle[
    GeomFill_Boundary] {.importcpp: "ChFi3d_mkbound(@)",
                        header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_mkbound*(HS: handle[Adaptor3d_HSurface]; curv: handle[Geom2d_Curve];
                    t3d: Standard_Real; ta: Standard_Real;
                    isfreeboundary: Standard_Boolean = Standard_False): handle[
    GeomFill_Boundary] {.importcpp: "ChFi3d_mkbound(@)",
                        header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_mkbound*(Fac: handle[Adaptor3d_HSurface];
                    curv: var handle[Geom2d_Curve]; p1: gp_Pnt2d; p2: gp_Pnt2d;
                    t3d: Standard_Real; ta: Standard_Real;
                    isfreeboundary: Standard_Boolean = Standard_False): handle[
    GeomFill_Boundary] {.importcpp: "ChFi3d_mkbound(@)",
                        header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_Coefficient*(V3d: gp_Vec; D1u: gp_Vec; D1v: gp_Vec; DU: var Standard_Real;
                        DV: var Standard_Real) {.
    importcpp: "ChFi3d_Coefficient(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_BuildPCurve*(p1: gp_Pnt2d; d1: var gp_Dir2d; p2: gp_Pnt2d; d2: var gp_Dir2d;
                        redresse: Standard_Boolean = Standard_True): handle[
    Geom2d_Curve] {.importcpp: "ChFi3d_BuildPCurve(@)",
                   header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_BuildPCurve*(Surf: handle[Adaptor3d_HSurface]; p1: gp_Pnt2d; v1: gp_Vec;
                        p2: gp_Pnt2d; v2: gp_Vec;
                        redresse: Standard_Boolean = Standard_False): handle[
    Geom2d_Curve] {.importcpp: "ChFi3d_BuildPCurve(@)",
                   header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_BuildPCurve*(Surf: handle[Adaptor3d_HSurface]; p1: gp_Pnt2d;
                        v1: gp_Vec2d; p2: gp_Pnt2d; v2: gp_Vec2d;
                        redresse: Standard_Boolean = Standard_False): handle[
    Geom2d_Curve] {.importcpp: "ChFi3d_BuildPCurve(@)",
                   header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_CheckSameParameter*(C3d: handle[Adaptor3d_HCurve];
                               Pcurv: var handle[Geom2d_Curve];
                               S: handle[Adaptor3d_HSurface];
                               tol3d: Standard_Real; tolreached: var Standard_Real): Standard_Boolean {.
    importcpp: "ChFi3d_CheckSameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_SameParameter*(C3d: handle[Adaptor3d_HCurve];
                          Pcurv: var handle[Geom2d_Curve];
                          S: handle[Adaptor3d_HSurface]; tol3d: Standard_Real;
                          tolreached: var Standard_Real): Standard_Boolean {.
    importcpp: "ChFi3d_SameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_SameParameter*(C3d: handle[Geom_Curve];
                          Pcurv: var handle[Geom2d_Curve]; S: handle[Geom_Surface];
                          Pardeb: Standard_Real; Parfin: Standard_Real;
                          tol3d: Standard_Real; tolreached: var Standard_Real): Standard_Boolean {.
    importcpp: "ChFi3d_SameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ComputePCurv*(C3d: handle[Geom_Curve]; UV1: gp_Pnt2d; UV2: gp_Pnt2d;
                         Pcurv: var handle[Geom2d_Curve]; S: handle[Geom_Surface];
                         Pardeb: Standard_Real; Parfin: Standard_Real;
                         tol3d: Standard_Real; tolreached: var Standard_Real;
                         reverse: Standard_Boolean = Standard_False) {.
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ComputePCurv*(C3d: handle[Adaptor3d_HCurve]; UV1: gp_Pnt2d;
                         UV2: gp_Pnt2d; Pcurv: var handle[Geom2d_Curve];
                         S: handle[Adaptor3d_HSurface]; Pardeb: Standard_Real;
                         Parfin: Standard_Real; tol3d: Standard_Real;
                         tolreached: var Standard_Real;
                         reverse: Standard_Boolean = Standard_False) {.
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ComputePCurv*(UV1: gp_Pnt2d; UV2: gp_Pnt2d;
                         Pcurv: var handle[Geom2d_Curve]; Pardeb: Standard_Real;
                         Parfin: Standard_Real;
                         reverse: Standard_Boolean = Standard_False) {.
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_IntTraces*(fd1: handle[ChFiDS_SurfData]; pref1: Standard_Real;
                      p1: var Standard_Real; jf1: Standard_Integer;
                      sens1: Standard_Integer; fd2: handle[ChFiDS_SurfData];
                      pref2: Standard_Real; p2: var Standard_Real;
                      jf2: Standard_Integer; sens2: Standard_Integer;
                      RefP2d: gp_Pnt2d;
                      Check2dDistance: Standard_Boolean = Standard_False;
                      enlarge: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ChFi3d_IntTraces(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_IsInFront*(DStr: var TopOpeBRepDS_DataStructure;
                      cd1: handle[ChFiDS_Stripe]; cd2: handle[ChFiDS_Stripe];
                      i1: Standard_Integer; i2: Standard_Integer;
                      sens1: Standard_Integer; sens2: Standard_Integer;
                      p1: var Standard_Real; p2: var Standard_Real;
                      face: var TopoDS_Face; sameside: var Standard_Boolean;
                      jf1: var Standard_Integer; jf2: var Standard_Integer;
                      visavis: var Standard_Boolean; Vtx: TopoDS_Vertex;
                      Check2dDistance: Standard_Boolean = Standard_False;
                      enlarge: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ChFi3d_IsInFront(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ProjectPCurv*(HCg: handle[Adaptor3d_HCurve];
                         HSg: handle[Adaptor3d_HSurface];
                         Pcurv: var handle[Geom2d_Curve]; tol3d: Standard_Real;
                         tolreached: var Standard_Real) {.
    importcpp: "ChFi3d_ProjectPCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ReparamPcurv*(Uf: Standard_Real; Ul: Standard_Real;
                         Pcurv: var handle[Geom2d_Curve]) {.
    importcpp: "ChFi3d_ReparamPcurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ComputeArete*(P1: ChFiDS_CommonPoint; UV1: gp_Pnt2d;
                         P2: ChFiDS_CommonPoint; UV2: gp_Pnt2d;
                         Surf: handle[Geom_Surface]; C3d: var handle[Geom_Curve];
                         Pcurv: var handle[Geom2d_Curve];
                         Pardeb: var Standard_Real; Parfin: var Standard_Real;
                         tol3d: Standard_Real; tol2d: Standard_Real;
                         tolreached: var Standard_Real; IFlag: Standard_Integer) {.
    importcpp: "ChFi3d_ComputeArete(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_FilCurveInDS*(Icurv: Standard_Integer; Isurf: Standard_Integer;
                         Pcurv: handle[Geom2d_Curve]; Et: TopAbs_Orientation): handle[
    TopOpeBRepDS_SurfaceCurveInterference] {.importcpp: "ChFi3d_FilCurveInDS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_TrsfTrans*(T1: IntSurf_TypeTrans): TopAbs_Orientation {.
    importcpp: "ChFi3d_TrsfTrans(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_FilCommonPoint*(SP: BRepBlend_Extremity; TransLine: IntSurf_TypeTrans;
                           Start: Standard_Boolean; CP: var ChFiDS_CommonPoint;
                           Tol: Standard_Real) {.
    importcpp: "ChFi3d_FilCommonPoint(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_SolidIndex*(sp: handle[ChFiDS_Spine];
                       DStr: var TopOpeBRepDS_DataStructure;
                       MapESo: var ChFiDS_Map; MapESh: var ChFiDS_Map): Standard_Integer {.
    importcpp: "ChFi3d_SolidIndex(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_IndexPointInDS*(P1: ChFiDS_CommonPoint;
                           DStr: var TopOpeBRepDS_DataStructure): Standard_Integer {.
    importcpp: "ChFi3d_IndexPointInDS(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_FilPointInDS*(Et: TopAbs_Orientation; Ic: Standard_Integer;
                         Ip: Standard_Integer; Par: Standard_Real;
                         IsVertex: Standard_Boolean = Standard_False): handle[
    TopOpeBRepDS_CurvePointInterference] {.importcpp: "ChFi3d_FilPointInDS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_FilVertexInDS*(Et: TopAbs_Orientation; Ic: Standard_Integer;
                          Ip: Standard_Integer; Par: Standard_Real): handle[
    TopOpeBRepDS_CurvePointInterference] {.importcpp: "ChFi3d_FilVertexInDS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_FilDS*(SolidIndex: Standard_Integer; CorDat: handle[ChFiDS_Stripe];
                  DStr: var TopOpeBRepDS_DataStructure;
                  reglist: var ChFiDS_Regularities; tol3d: Standard_Real;
                  tol2d: Standard_Real) {.importcpp: "ChFi3d_FilDS(@)",
                                        header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_StripeEdgeInter*(theStripe1: handle[ChFiDS_Stripe];
                            theStripe2: handle[ChFiDS_Stripe];
                            DStr: var TopOpeBRepDS_DataStructure;
                            tol2d: Standard_Real) {.
    importcpp: "ChFi3d_StripeEdgeInter(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_IndexOfSurfData*(V1: TopoDS_Vertex; CD: handle[ChFiDS_Stripe];
                            sens: var Standard_Integer): Standard_Integer {.
    importcpp: "ChFi3d_IndexOfSurfData(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_EdgeFromV1*(V1: TopoDS_Vertex; CD: handle[ChFiDS_Stripe];
                       sens: var Standard_Integer): TopoDS_Edge {.
    importcpp: "ChFi3d_EdgeFromV1(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ConvTol2dToTol3d*(S: handle[Adaptor3d_HSurface]; tol2d: Standard_Real): Standard_Real {.
    importcpp: "ChFi3d_ConvTol2dToTol3d(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ComputeCurves*(S1: handle[Adaptor3d_HSurface];
                          S2: handle[Adaptor3d_HSurface];
                          Pardeb: TColStd_Array1OfReal;
                          Parfin: TColStd_Array1OfReal;
                          C3d: var handle[Geom_Curve];
                          Pc1: var handle[Geom2d_Curve];
                          Pc2: var handle[Geom2d_Curve]; tol3d: Standard_Real;
                          tol2d: Standard_Real; tolreached: var Standard_Real;
                          wholeCurv: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ChFi3d_ComputeCurves(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_IntCS*(S: handle[Adaptor3d_HSurface]; C: handle[Adaptor3d_HCurve];
                  p2dS: var gp_Pnt2d; wc: var Standard_Real): Standard_Boolean {.
    importcpp: "ChFi3d_IntCS(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ComputesIntPC*(Fi1: ChFiDS_FaceInterference;
                          Fi2: ChFiDS_FaceInterference;
                          HS1: handle[GeomAdaptor_HSurface];
                          HS2: handle[GeomAdaptor_HSurface];
                          UInt1: var Standard_Real; UInt2: var Standard_Real) {.
    importcpp: "ChFi3d_ComputesIntPC(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ComputesIntPC*(Fi1: ChFiDS_FaceInterference;
                          Fi2: ChFiDS_FaceInterference;
                          HS1: handle[GeomAdaptor_HSurface];
                          HS2: handle[GeomAdaptor_HSurface];
                          UInt1: var Standard_Real; UInt2: var Standard_Real;
                          P: var gp_Pnt) {.importcpp: "ChFi3d_ComputesIntPC(@)",
                                        header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_BoundSurf*(DStr: var TopOpeBRepDS_DataStructure;
                      Fd1: handle[ChFiDS_SurfData]; IFaCo1: Standard_Integer;
                      IFaArc1: Standard_Integer): handle[GeomAdaptor_HSurface] {.
    importcpp: "ChFi3d_BoundSurf(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_SearchPivot*(s: ptr Standard_Integer;
                        u: array[3, array[3, Standard_Real]]; t: Standard_Real): Standard_Integer {.
    importcpp: "ChFi3d_SearchPivot(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_SearchFD*(DStr: var TopOpeBRepDS_DataStructure;
                     cd1: handle[ChFiDS_Stripe]; cd2: handle[ChFiDS_Stripe];
                     sens1: Standard_Integer; sens2: Standard_Integer;
                     i1: var Standard_Integer; i2: var Standard_Integer;
                     p1: var Standard_Real; p2: var Standard_Real;
                     ind1: Standard_Integer; ind2: Standard_Integer;
                     face: var TopoDS_Face; sameside: var Standard_Boolean;
                     jf1: var Standard_Integer; jf2: var Standard_Integer): Standard_Boolean {.
    importcpp: "ChFi3d_SearchFD(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_Parameters*(S: handle[Geom_Surface]; p3d: gp_Pnt; u: var Standard_Real;
                       v: var Standard_Real) {.importcpp: "ChFi3d_Parameters(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_TrimCurve*(gc: handle[Geom_Curve]; FirstP: gp_Pnt; LastP: gp_Pnt;
                      gtc: var handle[Geom_TrimmedCurve]) {.
    importcpp: "ChFi3d_TrimCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_PerformElSpine*(HES: var handle[ChFiDS_HElSpine];
                           Spine: var handle[ChFiDS_Spine];
                           continuity: GeomAbs_Shape; tol: Standard_Real;
                           IsOffset: Standard_Boolean = Standard_False) {.
    importcpp: "ChFi3d_PerformElSpine(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_EnlargeFace*(Spine: handle[ChFiDS_Spine];
                        HS: handle[BRepAdaptor_HSurface]; Tol: Standard_Real): TopoDS_Face {.
    importcpp: "ChFi3d_EnlargeFace(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_cherche_face1*(map: TopTools_ListOfShape; F1: TopoDS_Face;
                          F: var TopoDS_Face) {.
    importcpp: "ChFi3d_cherche_face1(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_cherche_element*(V: TopoDS_Vertex; E1: TopoDS_Edge; F1: TopoDS_Face;
                            E: var TopoDS_Edge; Vtx: var TopoDS_Vertex) {.
    importcpp: "ChFi3d_cherche_element(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_EvalTolReached*(S1: handle[Adaptor3d_HSurface];
                           pc1: handle[Geom2d_Curve];
                           S2: handle[Adaptor3d_HSurface];
                           pc2: handle[Geom2d_Curve]; C: handle[Geom_Curve]): Standard_Real {.
    importcpp: "ChFi3d_EvalTolReached(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_cherche_edge*(V: TopoDS_Vertex; E1: TopTools_Array1OfShape;
                         F1: TopoDS_Face; E: var TopoDS_Edge; Vtx: var TopoDS_Vertex) {.
    importcpp: "ChFi3d_cherche_edge(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_nbface*(mapVF: TopTools_ListOfShape): Standard_Integer {.
    importcpp: "ChFi3d_nbface(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_edge_common_faces*(mapEF: TopTools_ListOfShape; F1: var TopoDS_Face;
                              F2: var TopoDS_Face) {.
    importcpp: "ChFi3d_edge_common_faces(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_AngleEdge*(Vtx: TopoDS_Vertex; E1: TopoDS_Edge; E2: TopoDS_Edge): Standard_Real {.
    importcpp: "ChFi3d_AngleEdge(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ChercheBordsLibres*(myVEMap: ChFiDS_Map; V1: TopoDS_Vertex;
                               bordlibre: var Standard_Boolean;
                               edgelibre1: var TopoDS_Edge;
                               edgelibre2: var TopoDS_Edge) {.
    importcpp: "ChFi3d_ChercheBordsLibres(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_NbNotDegeneratedEdges*(Vtx: TopoDS_Vertex; VEMap: ChFiDS_Map): Standard_Integer {.
    importcpp: "ChFi3d_NbNotDegeneratedEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_NumberOfEdges*(Vtx: TopoDS_Vertex; VEMap: ChFiDS_Map): Standard_Integer {.
    importcpp: "ChFi3d_NumberOfEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_NumberOfSharpEdges*(Vtx: TopoDS_Vertex; VEMap: ChFiDS_Map;
                               EFmap: ChFiDS_Map): Standard_Integer {.
    importcpp: "ChFi3d_NumberOfSharpEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_cherche_vertex*(E1: TopoDS_Edge; E2: TopoDS_Edge;
                           vertex: var TopoDS_Vertex; trouve: var Standard_Boolean) {.
    importcpp: "ChFi3d_cherche_vertex(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_Couture*(F: TopoDS_Face; couture: var Standard_Boolean;
                    edgecouture: var TopoDS_Edge) {.importcpp: "ChFi3d_Couture(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_CoutureOnVertex*(F: TopoDS_Face; V: TopoDS_Vertex;
                            couture: var Standard_Boolean;
                            edgecouture: var TopoDS_Edge) {.
    importcpp: "ChFi3d_CoutureOnVertex(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_IsPseudoSeam*(E: TopoDS_Edge; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "ChFi3d_IsPseudoSeam(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_ApproxByC2*(C: handle[Geom_Curve]): handle[Geom_BSplineCurve] {.
    importcpp: "ChFi3d_ApproxByC2(@)", header: "ChFi3d_Builder_0.hxx".}
proc ChFi3d_IsSmooth*(C: handle[Geom_Curve]): Standard_Boolean {.
    importcpp: "ChFi3d_IsSmooth(@)", header: "ChFi3d_Builder_0.hxx".}