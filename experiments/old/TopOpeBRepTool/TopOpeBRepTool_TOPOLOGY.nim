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

## #include <BRepAdaptor_Curve2d.hxx>

proc fUN_toolTolUV*(f: TopoDS_Face; tolu: var StandardReal; tolv: var StandardReal) {.
    importcpp: "FUN_tool_tolUV(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolDirect*(f: TopoDS_Face; direct: var StandardBoolean): StandardBoolean {.
    importcpp: "FUN_tool_direct(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
## Standard_EXPORT Standard_Boolean FUN_tool_IsUViso(const TopoDS_Shape& E,const TopoDS_Shape& F,Standard_Boolean& isoU,Standard_Boolean& isoV,gp_Dir2d& d2d,gp_Pnt2d& o2d);

proc fUN_toolBounds*(f: TopoDS_Shape; u1: var StandardReal; u2: var StandardReal;
                    v1: var StandardReal; v2: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_bounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGeombounds*(f: TopoDS_Face; u1: var StandardReal; u2: var StandardReal;
                        v1: var StandardReal; v2: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_geombounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolIsobounds*(f: TopoDS_Shape; u1: var StandardReal; u2: var StandardReal;
                       v1: var StandardReal; v2: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_isobounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolOutbounds*(sh: TopoDS_Shape; u1: var StandardReal; u2: var StandardReal;
                       v1: var StandardReal; v2: var StandardReal;
                       outbounds: var StandardBoolean): StandardBoolean {.
    importcpp: "FUN_tool_outbounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   project point <P> on geometries (curve <C>,surface <S>)
##  ----------------------------------------------------------------------

proc fUN_toolPinC*(p: Pnt; bac: BRepAdaptorCurve; pmin: StandardReal;
                  pmax: StandardReal; tol: StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_PinC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolPinC*(p: Pnt; bac: BRepAdaptorCurve; tol: StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_PinC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------

proc fUN_toolValue*(par: StandardReal; e: TopoDS_Edge; p: var Pnt): StandardBoolean {.
    importcpp: "FUN_tool_value(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolValue*(uv: Pnt2d; f: TopoDS_Face; p: var Pnt): StandardBoolean {.
    importcpp: "FUN_tool_value(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolStaPinE*(p: Pnt; e: TopoDS_Edge; tol: StandardReal): TopAbsState {.
    importcpp: "FUN_tool_staPinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolStaPinE*(p: Pnt; e: TopoDS_Edge): TopAbsState {.
    importcpp: "FUN_tool_staPinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   subshape's orientation :
##   - orientVinE : vertex orientation in edge
##   - orientEinF : edge's orientation in face
##   - tool_orientEinFFORWARD : edge's orientation in face oriented FORWARD
##   - EboundF : true if vertex is oriented (FORWARD,REVERSED) in an edge
##  ----------------------------------------------------------------------

proc fUN_toolOrientVinE*(v: TopoDS_Vertex; e: TopoDS_Edge): int {.
    importcpp: "FUN_tool_orientVinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolOrientEinF*(e: TopoDS_Edge; f: TopoDS_Face;
                        oriEinF: var TopAbsOrientation): StandardBoolean {.
    importcpp: "FUN_tool_orientEinF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolOrientEinFFORWARD*(e: TopoDS_Edge; f: TopoDS_Face;
                               oriEinF: var TopAbsOrientation): StandardBoolean {.
    importcpp: "FUN_tool_orientEinFFORWARD(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEboundF*(e: TopoDS_Edge; f: TopoDS_Face): StandardBoolean {.
    importcpp: "FUN_tool_EboundF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   derivatives :
##  ----------------------------------------------------------------------

proc fUN_toolNggeomF*(p2d: Pnt2d; f: TopoDS_Face): Vec {.
    importcpp: "FUN_tool_nggeomF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolNggeomF*(paronE: StandardReal; e: TopoDS_Edge; f: TopoDS_Face;
                     nggeomF: var Vec): StandardBoolean {.
    importcpp: "FUN_tool_nggeomF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolNggeomF*(paronE: StandardReal; e: TopoDS_Edge; f: TopoDS_Face;
                     nggeomF: var Vec; tol: StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_nggeomF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEtgF*(paronE: StandardReal; e: TopoDS_Edge; p2d: Pnt2d; f: TopoDS_Face;
                  tola: StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_EtgF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEtgOOE*(paronE: StandardReal; e: TopoDS_Edge; paronOOE: StandardReal;
                    ooe: TopoDS_Edge; tola: StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_EtgOOE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##  oriented vectors :
##  ----------------------------------------------------------------------

proc fUN_toolGetgeomxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: StandardReal;
                       ngFi: Dir): Vec {.importcpp: "FUN_tool_getgeomxx(@)",
                                      header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGetgeomxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: StandardReal): Vec {.
    importcpp: "FUN_tool_getgeomxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_nearestISO*(f: TopoDS_Face; xpar: StandardReal; isoU: StandardBoolean;
                    xinf: var StandardReal; xsup: var StandardReal): StandardBoolean {.
    importcpp: "FUN_nearestISO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGetxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: StandardReal; ngFi: Dir;
                   xx: var Dir): StandardBoolean {.importcpp: "FUN_tool_getxx(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGetxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: StandardReal;
                   xx: var Dir): StandardBoolean {.importcpp: "FUN_tool_getxx(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGetdxx*(f: TopoDS_Face; e: TopoDS_Edge; parE: StandardReal; xx: var Vec2d): StandardBoolean {.
    importcpp: "FUN_tool_getdxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEitangenttoFe*(ngFe: Dir; ei: TopoDS_Edge; parOnEi: StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_EitangenttoFe(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##  curve type,surface type :
##  ----------------------------------------------------------------------

proc fUN_toolTyp*(e: TopoDS_Edge): GeomAbsCurveType {.importcpp: "FUN_tool_typ(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolLine*(e: TopoDS_Edge): StandardBoolean {.importcpp: "FUN_tool_line(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolPlane*(f: TopoDS_Shape): StandardBoolean {.
    importcpp: "FUN_tool_plane(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolCylinder*(f: TopoDS_Shape): StandardBoolean {.
    importcpp: "FUN_tool_cylinder(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolClosedS*(f: TopoDS_Shape; uclosed: var StandardBoolean;
                     uperiod: var StandardReal; vclosed: var StandardBoolean;
                     vperiod: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_closedS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolClosedS*(f: TopoDS_Shape): StandardBoolean {.
    importcpp: "FUN_tool_closedS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolClosedS*(f: TopoDS_Shape; inU: var StandardBoolean;
                     xmin: var StandardReal; xper: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_closedS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolMkBnd2d*(w: TopoDS_Shape; ff: TopoDS_Shape; b2d: var BndBox2d) {.
    importcpp: "FUN_tool_mkBnd2d(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   closing topologies :
##  ----------------------------------------------------------------------

proc fUN_toolIsClosingE*(e: TopoDS_Edge; s: TopoDS_Shape; f: TopoDS_Face): StandardBoolean {.
    importcpp: "FUN_tool_IsClosingE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolClosingE*(e: TopoDS_Edge; w: TopoDS_Wire; f: TopoDS_Face): StandardBoolean {.
    importcpp: "FUN_tool_ClosingE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   shared topologies :
##  ----------------------------------------------------------------------

proc fUN_toolInS*(subshape: TopoDS_Shape; shape: TopoDS_Shape): StandardBoolean {.
    importcpp: "FUN_tool_inS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEshared*(v: TopoDS_Shape; f1: TopoDS_Shape; f2: TopoDS_Shape;
                     eshared: var TopoDS_Shape): StandardBoolean {.
    importcpp: "FUN_tool_Eshared(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParVonE*(v: TopoDS_Vertex; e: TopoDS_Edge; par: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_parVonE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParE*(e0: TopoDS_Edge; par0: StandardReal; e: TopoDS_Edge;
                  par: var StandardReal; tol: StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_parE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParE*(e0: TopoDS_Edge; par0: StandardReal; e: TopoDS_Edge;
                  par: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_parE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParonEF*(e: TopoDS_Edge; par: StandardReal; f: TopoDS_Face; uv: var Pnt2d;
                     tol: StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_paronEF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParonEF*(e: TopoDS_Edge; par: StandardReal; f: TopoDS_Face; uv: var Pnt2d): StandardBoolean {.
    importcpp: "FUN_tool_paronEF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParF*(e: TopoDS_Edge; par: StandardReal; f: TopoDS_Face; uv: var Pnt2d;
                  tol: StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_parF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParF*(e: TopoDS_Edge; par: StandardReal; f: TopoDS_Face; uv: var Pnt2d): StandardBoolean {.
    importcpp: "FUN_tool_parF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolDirC*(par: StandardReal; bac: BRepAdaptorCurve): Dir {.
    importcpp: "FUN_tool_dirC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolTggeomE*(paronE: StandardReal; e: TopoDS_Edge): Vec {.
    importcpp: "FUN_tool_tggeomE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolLine*(bac: BRepAdaptorCurve): StandardBoolean {.
    importcpp: "FUN_tool_line(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolQuad*(e: TopoDS_Edge): StandardBoolean {.importcpp: "FUN_tool_quad(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolQuad*(bac: BRepAdaptorCurve): StandardBoolean {.
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolQuad*(f: TopoDS_Face): StandardBoolean {.importcpp: "FUN_tool_quad(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindPinBAC*(bac: BRepAdaptorCurve; p: var Pnt; par: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_findPinBAC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindparinBAC*(bac: BRepAdaptorCurve; par: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_findparinBAC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindparinE*(e: TopoDS_Shape; par: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_findparinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindPinE*(e: TopoDS_Shape; p: var Pnt; par: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_findPinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolMaxtol*(s: TopoDS_Shape; typ: TopAbsShapeEnum; tol: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_maxtol(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolMaxtol*(s: TopoDS_Shape): StandardReal {.
    importcpp: "FUN_tool_maxtol(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolNbshapes*(s: TopoDS_Shape; typ: TopAbsShapeEnum): int {.
    importcpp: "FUN_tool_nbshapes(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolShapes*(s: TopoDS_Shape; typ: TopAbsShapeEnum;
                    ltyp: var TopToolsListOfShape) {.
    importcpp: "FUN_tool_shapes(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolComparebndkole*(sh1: TopoDS_Shape; sh2: TopoDS_Shape): int {.
    importcpp: "FUN_tool_comparebndkole(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolSameOri*(e1: TopoDS_Edge; e2: TopoDS_Edge): StandardBoolean {.
    importcpp: "FUN_tool_SameOri(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolHaspc*(e: TopoDS_Edge; f: TopoDS_Face): StandardBoolean {.
    importcpp: "FUN_tool_haspc(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolPcurveonF*(f: TopoDS_Face; e: var TopoDS_Edge): StandardBoolean {.
    importcpp: "FUN_tool_pcurveonF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolPcurveonF*(fF: TopoDS_Face; faultyE: var TopoDS_Edge;
                       c2d: Handle[Geom2dCurve]; newf: var TopoDS_Face): StandardBoolean {.
    importcpp: "FUN_tool_pcurveonF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   shared geometry :
##  ----------------------------------------------------------------------

proc fUN_toolCurvesSO*(e1: TopoDS_Edge; p1: StandardReal; e2: TopoDS_Edge;
                      p2: StandardReal; so: var StandardBoolean): StandardBoolean {.
    importcpp: "FUN_tool_curvesSO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolCurvesSO*(e1: TopoDS_Edge; p1: StandardReal; e2: TopoDS_Edge;
                      so: var StandardBoolean): StandardBoolean {.
    importcpp: "FUN_tool_curvesSO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolCurvesSO*(e1: TopoDS_Edge; e2: TopoDS_Edge; so: var StandardBoolean): StandardBoolean {.
    importcpp: "FUN_tool_curvesSO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindAncestor*(lF: TopToolsListOfShape; e: TopoDS_Edge;
                          fanc: var TopoDS_Face): StandardBoolean {.
    importcpp: "FUN_tool_findAncestor(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   new topologies :
##  ----------------------------------------------------------------------

proc fUN_dsCopyEdge*(ein: TopoDS_Shape; eou: var TopoDS_Shape) {.
    importcpp: "FUN_ds_CopyEdge(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_dsParameter*(e: TopoDS_Shape; v: TopoDS_Shape; p: StandardReal) {.
    importcpp: "FUN_ds_Parameter(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolMakeWire*(loE: TopToolsListOfShape; newW: var TopoDS_Wire): StandardBoolean {.
    importcpp: "FUN_tool_MakeWire(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}