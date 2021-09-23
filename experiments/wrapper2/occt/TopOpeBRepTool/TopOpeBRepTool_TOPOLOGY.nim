##  Created on: 1998-10-06
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1998-1999 Matra Datavision
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
  TopOpeBRepTool_define, ../GeomAbs/GeomAbs_CurveType, ../Geom2d/Geom2d_Curve,
  ../Geom/Geom_Curve, ../Geom/Geom_Surface, ../gp/gp_Pnt2d, ../gp/gp_Pnt,
  ../gp/gp_Dir, ../gp/gp_Dir2d, ../gp/gp_Vec, ../Bnd/Bnd_Box2d,
  ../TopoDS/TopoDS_Wire, ../BRepAdaptor/BRepAdaptor_Curve

## #include <BRepAdaptor_Curve2d.hxx>

proc FUN_tool_tolUV*(F: TopoDS_Face; tolu: var Standard_Real; tolv: var Standard_Real) {.
    importcpp: "FUN_tool_tolUV(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_direct*(F: TopoDS_Face; direct: var Standard_Boolean): Standard_Boolean {.
    importcpp: "FUN_tool_direct(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
## Standard_EXPORT Standard_Boolean FUN_tool_IsUViso(const TopoDS_Shape& E,const TopoDS_Shape& F,Standard_Boolean& isoU,Standard_Boolean& isoV,gp_Dir2d& d2d,gp_Pnt2d& o2d);

proc FUN_tool_bounds*(F: TopoDS_Shape; u1: var Standard_Real; u2: var Standard_Real;
                     v1: var Standard_Real; v2: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_bounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_geombounds*(F: TopoDS_Face; u1: var Standard_Real;
                         u2: var Standard_Real; v1: var Standard_Real;
                         v2: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_geombounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_isobounds*(F: TopoDS_Shape; u1: var Standard_Real;
                        u2: var Standard_Real; v1: var Standard_Real;
                        v2: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_isobounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_outbounds*(Sh: TopoDS_Shape; u1: var Standard_Real;
                        u2: var Standard_Real; v1: var Standard_Real;
                        v2: var Standard_Real; outbounds: var Standard_Boolean): Standard_Boolean {.
    importcpp: "FUN_tool_outbounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   project point <P> on geometries (curve <C>,surface <S>)
##  ----------------------------------------------------------------------

proc FUN_tool_PinC*(P: gp_Pnt; BAC: BRepAdaptor_Curve; pmin: Standard_Real;
                   pmax: Standard_Real; tol: Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_PinC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_PinC*(P: gp_Pnt; BAC: BRepAdaptor_Curve; tol: Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_PinC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------

proc FUN_tool_value*(par: Standard_Real; E: TopoDS_Edge; P: var gp_Pnt): Standard_Boolean {.
    importcpp: "FUN_tool_value(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_value*(UV: gp_Pnt2d; F: TopoDS_Face; P: var gp_Pnt): Standard_Boolean {.
    importcpp: "FUN_tool_value(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_staPinE*(P: gp_Pnt; E: TopoDS_Edge; tol: Standard_Real): TopAbs_State {.
    importcpp: "FUN_tool_staPinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_staPinE*(P: gp_Pnt; E: TopoDS_Edge): TopAbs_State {.
    importcpp: "FUN_tool_staPinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   subshape's orientation :
##   - orientVinE : vertex orientation in edge
##   - orientEinF : edge's orientation in face
##   - tool_orientEinFFORWARD : edge's orientation in face oriented FORWARD
##   - EboundF : true if vertex is oriented (FORWARD,REVERSED) in an edge
##  ----------------------------------------------------------------------

proc FUN_tool_orientVinE*(v: TopoDS_Vertex; e: TopoDS_Edge): Standard_Integer {.
    importcpp: "FUN_tool_orientVinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_orientEinF*(E: TopoDS_Edge; F: TopoDS_Face;
                         oriEinF: var TopAbs_Orientation): Standard_Boolean {.
    importcpp: "FUN_tool_orientEinF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_orientEinFFORWARD*(E: TopoDS_Edge; F: TopoDS_Face;
                                oriEinF: var TopAbs_Orientation): Standard_Boolean {.
    importcpp: "FUN_tool_orientEinFFORWARD(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_EboundF*(E: TopoDS_Edge; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "FUN_tool_EboundF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   derivatives :
##  ----------------------------------------------------------------------

proc FUN_tool_nggeomF*(p2d: gp_Pnt2d; F: TopoDS_Face): gp_Vec {.
    importcpp: "FUN_tool_nggeomF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_nggeomF*(paronE: Standard_Real; E: TopoDS_Edge; F: TopoDS_Face;
                      nggeomF: var gp_Vec): Standard_Boolean {.
    importcpp: "FUN_tool_nggeomF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_nggeomF*(paronE: Standard_Real; E: TopoDS_Edge; F: TopoDS_Face;
                      nggeomF: var gp_Vec; tol: Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_nggeomF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_EtgF*(paronE: Standard_Real; E: TopoDS_Edge; p2d: gp_Pnt2d;
                   F: TopoDS_Face; tola: Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_EtgF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_EtgOOE*(paronE: Standard_Real; E: TopoDS_Edge; paronOOE: Standard_Real;
                     OOE: TopoDS_Edge; tola: Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_EtgOOE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##  oriented vectors :
##  ----------------------------------------------------------------------

proc FUN_tool_getgeomxx*(Fi: TopoDS_Face; Ei: TopoDS_Edge; parOnEi: Standard_Real;
                        ngFi: gp_Dir): gp_Vec {.importcpp: "FUN_tool_getgeomxx(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_getgeomxx*(Fi: TopoDS_Face; Ei: TopoDS_Edge; parOnEi: Standard_Real): gp_Vec {.
    importcpp: "FUN_tool_getgeomxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_nearestISO*(F: TopoDS_Face; xpar: Standard_Real; isoU: Standard_Boolean;
                    xinf: var Standard_Real; xsup: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_nearestISO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_getxx*(Fi: TopoDS_Face; Ei: TopoDS_Edge; parOnEi: Standard_Real;
                    ngFi: gp_Dir; XX: var gp_Dir): Standard_Boolean {.
    importcpp: "FUN_tool_getxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_getxx*(Fi: TopoDS_Face; Ei: TopoDS_Edge; parOnEi: Standard_Real;
                    XX: var gp_Dir): Standard_Boolean {.
    importcpp: "FUN_tool_getxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_getdxx*(F: TopoDS_Face; E: TopoDS_Edge; parE: Standard_Real;
                     XX: var gp_Vec2d): Standard_Boolean {.
    importcpp: "FUN_tool_getdxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_EitangenttoFe*(ngFe: gp_Dir; Ei: TopoDS_Edge; parOnEi: Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_EitangenttoFe(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##  curve type,surface type :
##  ----------------------------------------------------------------------

proc FUN_tool_typ*(E: TopoDS_Edge): GeomAbs_CurveType {.
    importcpp: "FUN_tool_typ(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_line*(E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "FUN_tool_line(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_plane*(F: TopoDS_Shape): Standard_Boolean {.
    importcpp: "FUN_tool_plane(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_cylinder*(F: TopoDS_Shape): Standard_Boolean {.
    importcpp: "FUN_tool_cylinder(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_closedS*(F: TopoDS_Shape; uclosed: var Standard_Boolean;
                      uperiod: var Standard_Real; vclosed: var Standard_Boolean;
                      vperiod: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_closedS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_closedS*(F: TopoDS_Shape): Standard_Boolean {.
    importcpp: "FUN_tool_closedS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_closedS*(F: TopoDS_Shape; inU: var Standard_Boolean;
                      xmin: var Standard_Real; xper: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_closedS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_mkBnd2d*(W: TopoDS_Shape; FF: TopoDS_Shape; B2d: var Bnd_Box2d) {.
    importcpp: "FUN_tool_mkBnd2d(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   closing topologies :
##  ----------------------------------------------------------------------

proc FUN_tool_IsClosingE*(E: TopoDS_Edge; S: TopoDS_Shape; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "FUN_tool_IsClosingE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_ClosingE*(E: TopoDS_Edge; W: TopoDS_Wire; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "FUN_tool_ClosingE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   shared topologies :
##  ----------------------------------------------------------------------

proc FUN_tool_inS*(subshape: TopoDS_Shape; shape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "FUN_tool_inS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_Eshared*(v: TopoDS_Shape; F1: TopoDS_Shape; F2: TopoDS_Shape;
                      Eshared: var TopoDS_Shape): Standard_Boolean {.
    importcpp: "FUN_tool_Eshared(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_parVonE*(v: TopoDS_Vertex; E: TopoDS_Edge; par: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_parVonE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_parE*(E0: TopoDS_Edge; par0: Standard_Real; E: TopoDS_Edge;
                   par: var Standard_Real; tol: Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_parE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_parE*(E0: TopoDS_Edge; par0: Standard_Real; E: TopoDS_Edge;
                   par: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_parE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_paronEF*(E: TopoDS_Edge; par: Standard_Real; F: TopoDS_Face;
                      UV: var gp_Pnt2d; tol: Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_paronEF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_paronEF*(E: TopoDS_Edge; par: Standard_Real; F: TopoDS_Face;
                      UV: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "FUN_tool_paronEF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_parF*(E: TopoDS_Edge; par: Standard_Real; F: TopoDS_Face;
                   UV: var gp_Pnt2d; tol: Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_parF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_parF*(E: TopoDS_Edge; par: Standard_Real; F: TopoDS_Face;
                   UV: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "FUN_tool_parF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_dirC*(par: Standard_Real; BAC: BRepAdaptor_Curve): gp_Dir {.
    importcpp: "FUN_tool_dirC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_tggeomE*(paronE: Standard_Real; E: TopoDS_Edge): gp_Vec {.
    importcpp: "FUN_tool_tggeomE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_line*(BAC: BRepAdaptor_Curve): Standard_Boolean {.
    importcpp: "FUN_tool_line(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_quad*(E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_quad*(BAC: BRepAdaptor_Curve): Standard_Boolean {.
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_quad*(F: TopoDS_Face): Standard_Boolean {.
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_findPinBAC*(BAC: BRepAdaptor_Curve; P: var gp_Pnt;
                         par: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_findPinBAC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_findparinBAC*(BAC: BRepAdaptor_Curve; par: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_findparinBAC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_findparinE*(E: TopoDS_Shape; par: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_findparinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_findPinE*(E: TopoDS_Shape; P: var gp_Pnt; par: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_findPinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_maxtol*(S: TopoDS_Shape; typ: TopAbs_ShapeEnum; tol: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_maxtol(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_maxtol*(S: TopoDS_Shape): Standard_Real {.
    importcpp: "FUN_tool_maxtol(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_nbshapes*(S: TopoDS_Shape; typ: TopAbs_ShapeEnum): Standard_Integer {.
    importcpp: "FUN_tool_nbshapes(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_shapes*(S: TopoDS_Shape; typ: TopAbs_ShapeEnum;
                     ltyp: var TopTools_ListOfShape) {.
    importcpp: "FUN_tool_shapes(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_comparebndkole*(sh1: TopoDS_Shape; sh2: TopoDS_Shape): Standard_Integer {.
    importcpp: "FUN_tool_comparebndkole(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_SameOri*(E1: TopoDS_Edge; E2: TopoDS_Edge): Standard_Boolean {.
    importcpp: "FUN_tool_SameOri(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_haspc*(E: TopoDS_Edge; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "FUN_tool_haspc(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_pcurveonF*(F: TopoDS_Face; E: var TopoDS_Edge): Standard_Boolean {.
    importcpp: "FUN_tool_pcurveonF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_pcurveonF*(fF: TopoDS_Face; faultyE: var TopoDS_Edge;
                        C2d: handle[Geom2d_Curve]; newf: var TopoDS_Face): Standard_Boolean {.
    importcpp: "FUN_tool_pcurveonF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   shared geometry :
##  ----------------------------------------------------------------------

proc FUN_tool_curvesSO*(E1: TopoDS_Edge; p1: Standard_Real; E2: TopoDS_Edge;
                       p2: Standard_Real; so: var Standard_Boolean): Standard_Boolean {.
    importcpp: "FUN_tool_curvesSO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_curvesSO*(E1: TopoDS_Edge; p1: Standard_Real; E2: TopoDS_Edge;
                       so: var Standard_Boolean): Standard_Boolean {.
    importcpp: "FUN_tool_curvesSO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_curvesSO*(E1: TopoDS_Edge; E2: TopoDS_Edge; so: var Standard_Boolean): Standard_Boolean {.
    importcpp: "FUN_tool_curvesSO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_findAncestor*(lF: TopTools_ListOfShape; E: TopoDS_Edge;
                           Fanc: var TopoDS_Face): Standard_Boolean {.
    importcpp: "FUN_tool_findAncestor(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   new topologies :
##  ----------------------------------------------------------------------

proc FUN_ds_CopyEdge*(Ein: TopoDS_Shape; Eou: var TopoDS_Shape) {.
    importcpp: "FUN_ds_CopyEdge(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_ds_Parameter*(E: TopoDS_Shape; V: TopoDS_Shape; P: Standard_Real) {.
    importcpp: "FUN_ds_Parameter(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc FUN_tool_MakeWire*(loE: TopTools_ListOfShape; newW: var TopoDS_Wire): Standard_Boolean {.
    importcpp: "FUN_tool_MakeWire(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}