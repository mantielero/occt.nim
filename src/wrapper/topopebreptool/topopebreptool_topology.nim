import ../gp/gp_types
import ../topabs/topabs_types
import ../standard/standard_types
import ../brepadaptor/brepadaptor_types
import ../toptools/toptools_types
import ../topods/topods_types
import ../bnd/bnd_types
import ../geomabs/geomabs_types
import ../geom2d/geom2d_types




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

proc fUN_toolTolUV*(f: TopoDS_Face; tolu: var cfloat; tolv: var cfloat) {.cdecl,
    importcpp: "FUN_tool_tolUV(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolDirect*(f: TopoDS_Face; direct: var bool): bool {.cdecl,
    importcpp: "FUN_tool_direct(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
## Standard_EXPORT Standard_Boolean FUN_tool_IsUViso(const TopoDS_Shape& E,const TopoDS_Shape& F,Standard_Boolean& isoU,Standard_Boolean& isoV,gp_Dir2d& d2d,gp_Pnt2d& o2d);

proc fUN_toolBounds*(f: TopoDS_Shape; u1: var cfloat; u2: var cfloat; v1: var cfloat;
                    v2: var cfloat): bool {.cdecl, importcpp: "FUN_tool_bounds(@)",
                                        header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGeombounds*(f: TopoDS_Face; u1: var cfloat; u2: var cfloat; v1: var cfloat;
                        v2: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_geombounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolIsobounds*(f: TopoDS_Shape; u1: var cfloat; u2: var cfloat; v1: var cfloat;
                       v2: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_isobounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolOutbounds*(sh: TopoDS_Shape; u1: var cfloat; u2: var cfloat; v1: var cfloat;
                       v2: var cfloat; outbounds: var bool): bool {.cdecl,
    importcpp: "FUN_tool_outbounds(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   project point <P> on geometries (curve <C>,surface <S>)
##  ----------------------------------------------------------------------

proc fUN_toolPinC*(p: gp_Pnt; bac: BRepAdaptorCurve; pmin: cfloat; pmax: cfloat; tol: cfloat): bool {.
    cdecl, importcpp: "FUN_tool_PinC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolPinC*(p: gp_Pnt; bac: BRepAdaptorCurve; tol: cfloat): bool {.cdecl,
    importcpp: "FUN_tool_PinC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------

proc fUN_toolValue*(par: cfloat; e: TopoDS_Edge; p: var gp_Pnt): bool {.cdecl,
    importcpp: "FUN_tool_value(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolValue*(uv: Pnt2dObj; f: TopoDS_Face; p: var gp_Pnt): bool {.cdecl,
    importcpp: "FUN_tool_value(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolStaPinE*(p: gp_Pnt; e: TopoDS_Edge; tol: cfloat): TopAbsState {.cdecl,
    importcpp: "FUN_tool_staPinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolStaPinE*(p: gp_Pnt; e: TopoDS_Edge): TopAbsState {.cdecl,
    importcpp: "FUN_tool_staPinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   subshape's orientation :
##   - orientVinE : vertex orientation in edge
##   - orientEinF : edge's orientation in face
##   - tool_orientEinFFORWARD : edge's orientation in face oriented FORWARD
##   - EboundF : true if vertex is oriented (FORWARD,REVERSED) in an edge
##  ----------------------------------------------------------------------

proc fUN_toolOrientVinE*(v: TopoDS_Vertex; e: TopoDS_Edge): cint {.cdecl,
    importcpp: "FUN_tool_orientVinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolOrientEinF*(e: TopoDS_Edge; f: TopoDS_Face;
                        oriEinF: var TopAbsOrientation): bool {.cdecl,
    importcpp: "FUN_tool_orientEinF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolOrientEinFFORWARD*(e: TopoDS_Edge; f: TopoDS_Face;
                               oriEinF: var TopAbsOrientation): bool {.cdecl,
    importcpp: "FUN_tool_orientEinFFORWARD(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEboundF*(e: TopoDS_Edge; f: TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_EboundF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   derivatives :
##  ----------------------------------------------------------------------

proc fUN_toolNggeomF*(p2d: Pnt2dObj; f: TopoDS_Face): VecObj {.cdecl,
    importcpp: "FUN_tool_nggeomF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolNggeomF*(paronE: cfloat; e: TopoDS_Edge; f: TopoDS_Face; nggeomF: var VecObj): bool {.
    cdecl, importcpp: "FUN_tool_nggeomF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolNggeomF*(paronE: cfloat; e: TopoDS_Edge; f: TopoDS_Face; nggeomF: var VecObj;
                     tol: cfloat): bool {.cdecl, importcpp: "FUN_tool_nggeomF(@)",
                                       header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEtgF*(paronE: cfloat; e: TopoDS_Edge; p2d: Pnt2dObj; f: TopoDS_Face;
                  tola: cfloat): bool {.cdecl, importcpp: "FUN_tool_EtgF(@)",
                                     header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEtgOOE*(paronE: cfloat; e: TopoDS_Edge; paronOOE: cfloat;
                    ooe: TopoDS_Edge; tola: cfloat): bool {.cdecl,
    importcpp: "FUN_tool_EtgOOE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##  oriented vectors :
##  ----------------------------------------------------------------------

proc fUN_toolGetgeomxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: cfloat; ngFi: DirObj): VecObj {.
    cdecl, importcpp: "FUN_tool_getgeomxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGetgeomxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: cfloat): VecObj {.cdecl,
    importcpp: "FUN_tool_getgeomxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_nearestISO*(f: TopoDS_Face; xpar: cfloat; isoU: bool; xinf: var cfloat;
                    xsup: var cfloat): bool {.cdecl, importcpp: "FUN_nearestISO(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGetxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: cfloat; ngFi: DirObj;
                   xx: var DirObj): bool {.cdecl, importcpp: "FUN_tool_getxx(@)",
                                    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGetxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: cfloat; xx: var DirObj): bool {.
    cdecl, importcpp: "FUN_tool_getxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolGetdxx*(f: TopoDS_Face; e: TopoDS_Edge; parE: cfloat; xx: var Vec2dObj): bool {.
    cdecl, importcpp: "FUN_tool_getdxx(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEitangenttoFe*(ngFe: DirObj; ei: TopoDS_Edge; parOnEi: cfloat): bool {.cdecl,
    importcpp: "FUN_tool_EitangenttoFe(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##  curve type,surface type :
##  ----------------------------------------------------------------------

proc fUN_toolTyp*(e: TopoDS_Edge): GeomAbsCurveType {.cdecl,
    importcpp: "FUN_tool_typ(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolLine*(e: TopoDS_Edge): bool {.cdecl, importcpp: "FUN_tool_line(@)",
                                       header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolPlane*(f: TopoDS_Shape): bool {.cdecl, importcpp: "FUN_tool_plane(@)",
    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolCylinder*(f: TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_tool_cylinder(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolClosedS*(f: TopoDS_Shape; uclosed: var bool; uperiod: var cfloat;
                     vclosed: var bool; vperiod: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_closedS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolClosedS*(f: TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_tool_closedS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolClosedS*(f: TopoDS_Shape; inU: var bool; xmin: var cfloat; xper: var cfloat): bool {.
    cdecl, importcpp: "FUN_tool_closedS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolMkBnd2d*(w: TopoDS_Shape; ff: TopoDS_Shape; b2d: var BndBox2d) {.cdecl,
    importcpp: "FUN_tool_mkBnd2d(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   closing topologies :
##  ----------------------------------------------------------------------

proc fUN_toolIsClosingE*(e: TopoDS_Edge; s: TopoDS_Shape; f: TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_IsClosingE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolClosingE*(e: TopoDS_Edge; w: TopoDS_Wire; f: TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_ClosingE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   shared topologies :
##  ----------------------------------------------------------------------

proc fUN_toolInS*(subshape: TopoDS_Shape; shape: TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_tool_inS(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolEshared*(v: TopoDS_Shape; f1: TopoDS_Shape; f2: TopoDS_Shape;
                     eshared: var TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_tool_Eshared(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParVonE*(v: TopoDS_Vertex; e: TopoDS_Edge; par: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_parVonE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParE*(e0: TopoDS_Edge; par0: cfloat; e: TopoDS_Edge; par: var cfloat;
                  tol: cfloat): bool {.cdecl, importcpp: "FUN_tool_parE(@)",
                                    header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParE*(e0: TopoDS_Edge; par0: cfloat; e: TopoDS_Edge; par: var cfloat): bool {.
    cdecl, importcpp: "FUN_tool_parE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParonEF*(e: TopoDS_Edge; par: cfloat; f: TopoDS_Face; uv: var Pnt2dObj;
                     tol: cfloat): bool {.cdecl, importcpp: "FUN_tool_paronEF(@)",
                                       header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParonEF*(e: TopoDS_Edge; par: cfloat; f: TopoDS_Face; uv: var Pnt2dObj): bool {.
    cdecl, importcpp: "FUN_tool_paronEF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParF*(e: TopoDS_Edge; par: cfloat; f: TopoDS_Face; uv: var Pnt2dObj; tol: cfloat): bool {.
    cdecl, importcpp: "FUN_tool_parF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolParF*(e: TopoDS_Edge; par: cfloat; f: TopoDS_Face; uv: var Pnt2dObj): bool {.
    cdecl, importcpp: "FUN_tool_parF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolDirC*(par: cfloat; bac: BRepAdaptorCurve): DirObj {.cdecl,
    importcpp: "FUN_tool_dirC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolTggeomE*(paronE: cfloat; e: TopoDS_Edge): VecObj {.cdecl,
    importcpp: "FUN_tool_tggeomE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolLine*(bac: BRepAdaptorCurve): bool {.cdecl,
    importcpp: "FUN_tool_line(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolQuad*(e: TopoDS_Edge): bool {.cdecl, importcpp: "FUN_tool_quad(@)",
                                       header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolQuad*(bac: BRepAdaptorCurve): bool {.cdecl,
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolQuad*(f: TopoDS_Face): bool {.cdecl, importcpp: "FUN_tool_quad(@)",
                                       header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindPinBAC*(bac: BRepAdaptorCurve; p: var gp_Pnt; par: var cfloat): bool {.
    cdecl, importcpp: "FUN_tool_findPinBAC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindparinBAC*(bac: BRepAdaptorCurve; par: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_findparinBAC(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindparinE*(e: TopoDS_Shape; par: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_findparinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindPinE*(e: TopoDS_Shape; p: var gp_Pnt; par: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_findPinE(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolMaxtol*(s: TopoDS_Shape; typ: TopAbsShapeEnum; tol: var cfloat): bool {.
    cdecl, importcpp: "FUN_tool_maxtol(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolMaxtol*(s: TopoDS_Shape): cfloat {.cdecl,
    importcpp: "FUN_tool_maxtol(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolNbshapes*(s: TopoDS_Shape; typ: TopAbsShapeEnum): cint {.cdecl,
    importcpp: "FUN_tool_nbshapes(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolShapes*(s: TopoDS_Shape; typ: TopAbsShapeEnum;
                    ltyp: var TopToolsListOfShape) {.cdecl,
    importcpp: "FUN_tool_shapes(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolComparebndkole*(sh1: TopoDS_Shape; sh2: TopoDS_Shape): cint {.cdecl,
    importcpp: "FUN_tool_comparebndkole(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolSameOri*(e1: TopoDS_Edge; e2: TopoDS_Edge): bool {.cdecl,
    importcpp: "FUN_tool_SameOri(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolHaspc*(e: TopoDS_Edge; f: TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_haspc(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolPcurveonF*(f: TopoDS_Face; e: var TopoDS_Edge): bool {.cdecl,
    importcpp: "FUN_tool_pcurveonF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolPcurveonF*(fF: TopoDS_Face; faultyE: var TopoDS_Edge;
                       c2d: Handle[Geom2dCurve]; newf: var TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_pcurveonF(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   shared geometry :
##  ----------------------------------------------------------------------

proc fUN_toolCurvesSO*(e1: TopoDS_Edge; p1: cfloat; e2: TopoDS_Edge; p2: cfloat;
                      so: var bool): bool {.cdecl, importcpp: "FUN_tool_curvesSO(@)",
                                        header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolCurvesSO*(e1: TopoDS_Edge; p1: cfloat; e2: TopoDS_Edge; so: var bool): bool {.
    cdecl, importcpp: "FUN_tool_curvesSO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolCurvesSO*(e1: TopoDS_Edge; e2: TopoDS_Edge; so: var bool): bool {.cdecl,
    importcpp: "FUN_tool_curvesSO(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolFindAncestor*(lF: TopToolsListOfShape; e: TopoDS_Edge;
                          fanc: var TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_findAncestor(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
##  ----------------------------------------------------------------------
##   new topologies :
##  ----------------------------------------------------------------------

proc fUN_dsCopyEdge*(ein: TopoDS_Shape; eou: var TopoDS_Shape) {.cdecl,
    importcpp: "FUN_ds_CopyEdge(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_dsParameter*(e: TopoDS_Shape; v: TopoDS_Shape; p: cfloat) {.cdecl,
    importcpp: "FUN_ds_Parameter(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}
proc fUN_toolMakeWire*(loE: TopToolsListOfShape; newW: var TopoDS_Wire): bool {.cdecl,
    importcpp: "FUN_tool_MakeWire(@)", header: "TopOpeBRepTool_TOPOLOGY.hxx".}

