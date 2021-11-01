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
    importcpp: "FUN_tool_tolUV(@)", dynlib: tkbool.}
proc fUN_toolDirect*(f: TopoDS_Face; direct: var bool): bool {.cdecl,
    importcpp: "FUN_tool_direct(@)", dynlib: tkbool.}
## Standard_EXPORT Standard_Boolean FUN_tool_IsUViso(const TopoDS_Shape& E,const TopoDS_Shape& F,Standard_Boolean& isoU,Standard_Boolean& isoV,gp_Dir2d& d2d,gp_Pnt2d& o2d);

proc fUN_toolBounds*(f: TopoDS_Shape; u1: var cfloat; u2: var cfloat; v1: var cfloat;
                    v2: var cfloat): bool {.cdecl, importcpp: "FUN_tool_bounds(@)",
                                        dynlib: tkbool.}
proc fUN_toolGeombounds*(f: TopoDS_Face; u1: var cfloat; u2: var cfloat; v1: var cfloat;
                        v2: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_geombounds(@)", dynlib: tkbool.}
proc fUN_toolIsobounds*(f: TopoDS_Shape; u1: var cfloat; u2: var cfloat; v1: var cfloat;
                       v2: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_isobounds(@)", dynlib: tkbool.}
proc fUN_toolOutbounds*(sh: TopoDS_Shape; u1: var cfloat; u2: var cfloat; v1: var cfloat;
                       v2: var cfloat; outbounds: var bool): bool {.cdecl,
    importcpp: "FUN_tool_outbounds(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------
##   project point <P> on geometries (curve <C>,surface <S>)
##  ----------------------------------------------------------------------

proc fUN_toolPinC*(p: Pnt; bac: BRepAdaptorCurve; pmin: cfloat; pmax: cfloat; tol: cfloat): bool {.
    cdecl, importcpp: "FUN_tool_PinC(@)", dynlib: tkbool.}
proc fUN_toolPinC*(p: Pnt; bac: BRepAdaptorCurve; tol: cfloat): bool {.cdecl,
    importcpp: "FUN_tool_PinC(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------

proc fUN_toolValue*(par: cfloat; e: TopoDS_Edge; p: var Pnt): bool {.cdecl,
    importcpp: "FUN_tool_value(@)", dynlib: tkbool.}
proc fUN_toolValue*(uv: Pnt2d; f: TopoDS_Face; p: var Pnt): bool {.cdecl,
    importcpp: "FUN_tool_value(@)", dynlib: tkbool.}
proc fUN_toolStaPinE*(p: Pnt; e: TopoDS_Edge; tol: cfloat): TopAbsState {.cdecl,
    importcpp: "FUN_tool_staPinE(@)", dynlib: tkbool.}
proc fUN_toolStaPinE*(p: Pnt; e: TopoDS_Edge): TopAbsState {.cdecl,
    importcpp: "FUN_tool_staPinE(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------
##   subshape's orientation :
##   - orientVinE : vertex orientation in edge
##   - orientEinF : edge's orientation in face
##   - tool_orientEinFFORWARD : edge's orientation in face oriented FORWARD
##   - EboundF : true if vertex is oriented (FORWARD,REVERSED) in an edge
##  ----------------------------------------------------------------------

proc fUN_toolOrientVinE*(v: TopoDS_Vertex; e: TopoDS_Edge): cint {.cdecl,
    importcpp: "FUN_tool_orientVinE(@)", dynlib: tkbool.}
proc fUN_toolOrientEinF*(e: TopoDS_Edge; f: TopoDS_Face;
                        oriEinF: var TopAbsOrientation): bool {.cdecl,
    importcpp: "FUN_tool_orientEinF(@)", dynlib: tkbool.}
proc fUN_toolOrientEinFFORWARD*(e: TopoDS_Edge; f: TopoDS_Face;
                               oriEinF: var TopAbsOrientation): bool {.cdecl,
    importcpp: "FUN_tool_orientEinFFORWARD(@)", dynlib: tkbool.}
proc fUN_toolEboundF*(e: TopoDS_Edge; f: TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_EboundF(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------
##   derivatives :
##  ----------------------------------------------------------------------

proc fUN_toolNggeomF*(p2d: Pnt2d; f: TopoDS_Face): Vec {.cdecl,
    importcpp: "FUN_tool_nggeomF(@)", dynlib: tkbool.}
proc fUN_toolNggeomF*(paronE: cfloat; e: TopoDS_Edge; f: TopoDS_Face; nggeomF: var Vec): bool {.
    cdecl, importcpp: "FUN_tool_nggeomF(@)", dynlib: tkbool.}
proc fUN_toolNggeomF*(paronE: cfloat; e: TopoDS_Edge; f: TopoDS_Face; nggeomF: var Vec;
                     tol: cfloat): bool {.cdecl, importcpp: "FUN_tool_nggeomF(@)",
                                       dynlib: tkbool.}
proc fUN_toolEtgF*(paronE: cfloat; e: TopoDS_Edge; p2d: Pnt2d; f: TopoDS_Face;
                  tola: cfloat): bool {.cdecl, importcpp: "FUN_tool_EtgF(@)",
                                     dynlib: tkbool.}
proc fUN_toolEtgOOE*(paronE: cfloat; e: TopoDS_Edge; paronOOE: cfloat;
                    ooe: TopoDS_Edge; tola: cfloat): bool {.cdecl,
    importcpp: "FUN_tool_EtgOOE(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------
##  oriented vectors :
##  ----------------------------------------------------------------------

proc fUN_toolGetgeomxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: cfloat; ngFi: Dir): Vec {.
    cdecl, importcpp: "FUN_tool_getgeomxx(@)", dynlib: tkbool.}
proc fUN_toolGetgeomxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: cfloat): Vec {.cdecl,
    importcpp: "FUN_tool_getgeomxx(@)", dynlib: tkbool.}
proc fUN_nearestISO*(f: TopoDS_Face; xpar: cfloat; isoU: bool; xinf: var cfloat;
                    xsup: var cfloat): bool {.cdecl, importcpp: "FUN_nearestISO(@)",
    dynlib: tkbool.}
proc fUN_toolGetxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: cfloat; ngFi: Dir;
                   xx: var Dir): bool {.cdecl, importcpp: "FUN_tool_getxx(@)",
                                    dynlib: tkbool.}
proc fUN_toolGetxx*(fi: TopoDS_Face; ei: TopoDS_Edge; parOnEi: cfloat; xx: var Dir): bool {.
    cdecl, importcpp: "FUN_tool_getxx(@)", dynlib: tkbool.}
proc fUN_toolGetdxx*(f: TopoDS_Face; e: TopoDS_Edge; parE: cfloat; xx: var Vec2d): bool {.
    cdecl, importcpp: "FUN_tool_getdxx(@)", dynlib: tkbool.}
proc fUN_toolEitangenttoFe*(ngFe: Dir; ei: TopoDS_Edge; parOnEi: cfloat): bool {.cdecl,
    importcpp: "FUN_tool_EitangenttoFe(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------
##  curve type,surface type :
##  ----------------------------------------------------------------------

proc fUN_toolTyp*(e: TopoDS_Edge): GeomAbsCurveType {.cdecl,
    importcpp: "FUN_tool_typ(@)", dynlib: tkbool.}
proc fUN_toolLine*(e: TopoDS_Edge): bool {.cdecl, importcpp: "FUN_tool_line(@)",
                                       dynlib: tkbool.}
proc fUN_toolPlane*(f: TopoDS_Shape): bool {.cdecl, importcpp: "FUN_tool_plane(@)",
    dynlib: tkbool.}
proc fUN_toolCylinder*(f: TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_tool_cylinder(@)", dynlib: tkbool.}
proc fUN_toolClosedS*(f: TopoDS_Shape; uclosed: var bool; uperiod: var cfloat;
                     vclosed: var bool; vperiod: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_closedS(@)", dynlib: tkbool.}
proc fUN_toolClosedS*(f: TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_tool_closedS(@)", dynlib: tkbool.}
proc fUN_toolClosedS*(f: TopoDS_Shape; inU: var bool; xmin: var cfloat; xper: var cfloat): bool {.
    cdecl, importcpp: "FUN_tool_closedS(@)", dynlib: tkbool.}
proc fUN_toolMkBnd2d*(w: TopoDS_Shape; ff: TopoDS_Shape; b2d: var BndBox2d) {.cdecl,
    importcpp: "FUN_tool_mkBnd2d(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------
##   closing topologies :
##  ----------------------------------------------------------------------

proc fUN_toolIsClosingE*(e: TopoDS_Edge; s: TopoDS_Shape; f: TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_IsClosingE(@)", dynlib: tkbool.}
proc fUN_toolClosingE*(e: TopoDS_Edge; w: TopoDS_Wire; f: TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_ClosingE(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------
##   shared topologies :
##  ----------------------------------------------------------------------

proc fUN_toolInS*(subshape: TopoDS_Shape; shape: TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_tool_inS(@)", dynlib: tkbool.}
proc fUN_toolEshared*(v: TopoDS_Shape; f1: TopoDS_Shape; f2: TopoDS_Shape;
                     eshared: var TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_tool_Eshared(@)", dynlib: tkbool.}
proc fUN_toolParVonE*(v: TopoDS_Vertex; e: TopoDS_Edge; par: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_parVonE(@)", dynlib: tkbool.}
proc fUN_toolParE*(e0: TopoDS_Edge; par0: cfloat; e: TopoDS_Edge; par: var cfloat;
                  tol: cfloat): bool {.cdecl, importcpp: "FUN_tool_parE(@)",
                                    dynlib: tkbool.}
proc fUN_toolParE*(e0: TopoDS_Edge; par0: cfloat; e: TopoDS_Edge; par: var cfloat): bool {.
    cdecl, importcpp: "FUN_tool_parE(@)", dynlib: tkbool.}
proc fUN_toolParonEF*(e: TopoDS_Edge; par: cfloat; f: TopoDS_Face; uv: var Pnt2d;
                     tol: cfloat): bool {.cdecl, importcpp: "FUN_tool_paronEF(@)",
                                       dynlib: tkbool.}
proc fUN_toolParonEF*(e: TopoDS_Edge; par: cfloat; f: TopoDS_Face; uv: var Pnt2d): bool {.
    cdecl, importcpp: "FUN_tool_paronEF(@)", dynlib: tkbool.}
proc fUN_toolParF*(e: TopoDS_Edge; par: cfloat; f: TopoDS_Face; uv: var Pnt2d; tol: cfloat): bool {.
    cdecl, importcpp: "FUN_tool_parF(@)", dynlib: tkbool.}
proc fUN_toolParF*(e: TopoDS_Edge; par: cfloat; f: TopoDS_Face; uv: var Pnt2d): bool {.
    cdecl, importcpp: "FUN_tool_parF(@)", dynlib: tkbool.}
proc fUN_toolDirC*(par: cfloat; bac: BRepAdaptorCurve): Dir {.cdecl,
    importcpp: "FUN_tool_dirC(@)", dynlib: tkbool.}
proc fUN_toolTggeomE*(paronE: cfloat; e: TopoDS_Edge): Vec {.cdecl,
    importcpp: "FUN_tool_tggeomE(@)", dynlib: tkbool.}
proc fUN_toolLine*(bac: BRepAdaptorCurve): bool {.cdecl,
    importcpp: "FUN_tool_line(@)", dynlib: tkbool.}
proc fUN_toolQuad*(e: TopoDS_Edge): bool {.cdecl, importcpp: "FUN_tool_quad(@)",
                                       dynlib: tkbool.}
proc fUN_toolQuad*(bac: BRepAdaptorCurve): bool {.cdecl,
    importcpp: "FUN_tool_quad(@)", dynlib: tkbool.}
proc fUN_toolQuad*(f: TopoDS_Face): bool {.cdecl, importcpp: "FUN_tool_quad(@)",
                                       dynlib: tkbool.}
proc fUN_toolFindPinBAC*(bac: BRepAdaptorCurve; p: var Pnt; par: var cfloat): bool {.
    cdecl, importcpp: "FUN_tool_findPinBAC(@)", dynlib: tkbool.}
proc fUN_toolFindparinBAC*(bac: BRepAdaptorCurve; par: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_findparinBAC(@)", dynlib: tkbool.}
proc fUN_toolFindparinE*(e: TopoDS_Shape; par: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_findparinE(@)", dynlib: tkbool.}
proc fUN_toolFindPinE*(e: TopoDS_Shape; p: var Pnt; par: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_findPinE(@)", dynlib: tkbool.}
proc fUN_toolMaxtol*(s: TopoDS_Shape; typ: TopAbsShapeEnum; tol: var cfloat): bool {.
    cdecl, importcpp: "FUN_tool_maxtol(@)", dynlib: tkbool.}
proc fUN_toolMaxtol*(s: TopoDS_Shape): cfloat {.cdecl,
    importcpp: "FUN_tool_maxtol(@)", dynlib: tkbool.}
proc fUN_toolNbshapes*(s: TopoDS_Shape; typ: TopAbsShapeEnum): cint {.cdecl,
    importcpp: "FUN_tool_nbshapes(@)", dynlib: tkbool.}
proc fUN_toolShapes*(s: TopoDS_Shape; typ: TopAbsShapeEnum;
                    ltyp: var TopToolsListOfShape) {.cdecl,
    importcpp: "FUN_tool_shapes(@)", dynlib: tkbool.}
proc fUN_toolComparebndkole*(sh1: TopoDS_Shape; sh2: TopoDS_Shape): cint {.cdecl,
    importcpp: "FUN_tool_comparebndkole(@)", dynlib: tkbool.}
proc fUN_toolSameOri*(e1: TopoDS_Edge; e2: TopoDS_Edge): bool {.cdecl,
    importcpp: "FUN_tool_SameOri(@)", dynlib: tkbool.}
proc fUN_toolHaspc*(e: TopoDS_Edge; f: TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_haspc(@)", dynlib: tkbool.}
proc fUN_toolPcurveonF*(f: TopoDS_Face; e: var TopoDS_Edge): bool {.cdecl,
    importcpp: "FUN_tool_pcurveonF(@)", dynlib: tkbool.}
proc fUN_toolPcurveonF*(fF: TopoDS_Face; faultyE: var TopoDS_Edge;
                       c2d: Handle[Geom2dCurve]; newf: var TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_pcurveonF(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------
##   shared geometry :
##  ----------------------------------------------------------------------

proc fUN_toolCurvesSO*(e1: TopoDS_Edge; p1: cfloat; e2: TopoDS_Edge; p2: cfloat;
                      so: var bool): bool {.cdecl, importcpp: "FUN_tool_curvesSO(@)",
                                        dynlib: tkbool.}
proc fUN_toolCurvesSO*(e1: TopoDS_Edge; p1: cfloat; e2: TopoDS_Edge; so: var bool): bool {.
    cdecl, importcpp: "FUN_tool_curvesSO(@)", dynlib: tkbool.}
proc fUN_toolCurvesSO*(e1: TopoDS_Edge; e2: TopoDS_Edge; so: var bool): bool {.cdecl,
    importcpp: "FUN_tool_curvesSO(@)", dynlib: tkbool.}
proc fUN_toolFindAncestor*(lF: TopToolsListOfShape; e: TopoDS_Edge;
                          fanc: var TopoDS_Face): bool {.cdecl,
    importcpp: "FUN_tool_findAncestor(@)", dynlib: tkbool.}
##  ----------------------------------------------------------------------
##   new topologies :
##  ----------------------------------------------------------------------

proc fUN_dsCopyEdge*(ein: TopoDS_Shape; eou: var TopoDS_Shape) {.cdecl,
    importcpp: "FUN_ds_CopyEdge(@)", dynlib: tkbool.}
proc fUN_dsParameter*(e: TopoDS_Shape; v: TopoDS_Shape; p: cfloat) {.cdecl,
    importcpp: "FUN_ds_Parameter(@)", dynlib: tkbool.}
proc fUN_toolMakeWire*(loE: TopToolsListOfShape; newW: var TopoDS_Wire): bool {.cdecl,
    importcpp: "FUN_tool_MakeWire(@)", dynlib: tkbool.}