##  Created on: 1998-11-26
##  Created by: Xuan PHAM PHU
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopOpeBRepTool_C2DF"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir2d"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Dir"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt"
type
  TopOpeBRepToolTOOL* {.importcpp: "TopOpeBRepTool_TOOL",
                       header: "TopOpeBRepTool_TOOL.hxx", bycopy.} = object


proc oriinSor*(sub: TopoDS_Shape; s: TopoDS_Shape; checkclo: bool = false): cint {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::OriinSor(@)", dynlib: tkbool.}
proc oriinSorclosed*(sub: TopoDS_Shape; s: TopoDS_Shape): cint {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::OriinSorclosed(@)", dynlib: tkbool.}
proc closedE*(e: TopoDS_Edge; vclo: var TopoDS_Vertex): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::ClosedE(@)", dynlib: tkbool.}
proc closedS*(f: TopoDS_Face): bool {.cdecl,
                                  importcpp: "TopOpeBRepTool_TOOL::ClosedS(@)",
                                  dynlib: tkbool.}
proc isClosingE*(e: TopoDS_Edge; f: TopoDS_Face): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::IsClosingE(@)", dynlib: tkbool.}
proc isClosingE*(e: TopoDS_Edge; w: TopoDS_Shape; f: TopoDS_Face): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::IsClosingE(@)", dynlib: tkbool.}
proc vertices*(e: TopoDS_Edge; vces: var TopToolsArray1OfShape) {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Vertices(@)", dynlib: tkbool.}
proc vertex*(iv: cint; e: TopoDS_Edge): TopoDS_Vertex {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Vertex(@)", dynlib: tkbool.}
proc parE*(iv: cint; e: TopoDS_Edge): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::ParE(@)", dynlib: tkbool.}
proc onBoundary*(par: cfloat; e: TopoDS_Edge): cint {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::OnBoundary(@)", dynlib: tkbool.}
proc uvf*(par: cfloat; c2df: TopOpeBRepToolC2DF): Pnt2d {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::UVF(@)", dynlib: tkbool.}
proc parISO*(p2d: Pnt2d; e: TopoDS_Edge; f: TopoDS_Face; pare: var cfloat): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::ParISO(@)", dynlib: tkbool.}
proc parE2d*(p2d: Pnt2d; e: TopoDS_Edge; f: TopoDS_Face; par: var cfloat; dist: var cfloat): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::ParE2d(@)", dynlib: tkbool.}
proc getduv*(f: TopoDS_Face; uv: Pnt2d; dir: Vec; factor: cfloat; duv: var Dir2d): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::Getduv(@)", dynlib: tkbool.}
proc uvApp*(f: TopoDS_Face; e: TopoDS_Edge; par: cfloat; eps: cfloat; uvapp: var Pnt2d): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::uvApp(@)", dynlib: tkbool.}
proc tolUV*(f: TopoDS_Face; tol3d: cfloat): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TolUV(@)", dynlib: tkbool.}
proc tolP*(e: TopoDS_Edge; f: TopoDS_Face): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TolP(@)", dynlib: tkbool.}
proc minDUV*(f: TopoDS_Face): cfloat {.cdecl,
                                   importcpp: "TopOpeBRepTool_TOOL::minDUV(@)",
                                   dynlib: tkbool.}
proc outUVbounds*(uv: Pnt2d; f: TopoDS_Face): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::outUVbounds(@)", dynlib: tkbool.}
proc stuvF*(uv: Pnt2d; f: TopoDS_Face; onU: var cint; onV: var cint) {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::stuvF(@)", dynlib: tkbool.}
proc tggeomE*(par: cfloat; bc: BRepAdaptorCurve; tg: var Vec): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TggeomE(@)", dynlib: tkbool.}
proc tggeomE*(par: cfloat; e: TopoDS_Edge; tg: var Vec): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TggeomE(@)", dynlib: tkbool.}
proc tgINSIDE*(v: TopoDS_Vertex; e: TopoDS_Edge; tg: var Vec; ovinE: var cint): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::TgINSIDE(@)", dynlib: tkbool.}
proc tg2d*(iv: cint; e: TopoDS_Edge; c2df: TopOpeBRepToolC2DF): Vec2d {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Tg2d(@)", dynlib: tkbool.}
proc tg2dApp*(iv: cint; e: TopoDS_Edge; c2df: TopOpeBRepToolC2DF; factor: cfloat): Vec2d {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::Tg2dApp(@)", dynlib: tkbool.}
proc tryTg2dApp*(iv: cint; e: TopoDS_Edge; c2df: TopOpeBRepToolC2DF; factor: cfloat): Vec2d {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::tryTg2dApp(@)", dynlib: tkbool.}
proc xx*(uv: Pnt2d; f: TopoDS_Face; par: cfloat; e: TopoDS_Edge; xx: var Dir): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::XX(@)", dynlib: tkbool.}
proc nt*(uv: Pnt2d; f: TopoDS_Face; normt: var Dir): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Nt(@)", dynlib: tkbool.}
proc nggeomF*(uv: Pnt2d; f: TopoDS_Face; ng: var Vec): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::NggeomF(@)", dynlib: tkbool.}
proc ngApp*(par: cfloat; e: TopoDS_Edge; f: TopoDS_Face; tola: cfloat; ngApp: var Dir): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::NgApp(@)", dynlib: tkbool.}
proc tryNgApp*(par: cfloat; e: TopoDS_Edge; f: TopoDS_Face; tola: cfloat; ng: var Dir): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::tryNgApp(@)", dynlib: tkbool.}
proc tryOriEinF*(par: cfloat; e: TopoDS_Edge; f: TopoDS_Face): cint {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::tryOriEinF(@)", dynlib: tkbool.}
proc isQuad*(e: TopoDS_Edge): bool {.cdecl,
                                 importcpp: "TopOpeBRepTool_TOOL::IsQuad(@)",
                                 dynlib: tkbool.}
proc isQuad*(f: TopoDS_Face): bool {.cdecl,
                                 importcpp: "TopOpeBRepTool_TOOL::IsQuad(@)",
                                 dynlib: tkbool.}
proc curvE*(e: TopoDS_Edge; par: cfloat; tg0: Dir; curv: var cfloat): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::CurvE(@)", dynlib: tkbool.}
proc curvF*(f: TopoDS_Face; uv: Pnt2d; tg0: Dir; curv: var cfloat; direct: var bool): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::CurvF(@)", dynlib: tkbool.}
proc uviso*(pc: Handle[Geom2dCurve]; isou: var bool; isov: var bool; d2d: var Dir2d;
           o2d: var Pnt2d): bool {.cdecl, importcpp: "TopOpeBRepTool_TOOL::UVISO(@)",
                               dynlib: tkbool.}
proc uviso*(c2df: TopOpeBRepToolC2DF; isou: var bool; isov: var bool; d2d: var Dir2d;
           o2d: var Pnt2d): bool {.cdecl, importcpp: "TopOpeBRepTool_TOOL::UVISO(@)",
                               dynlib: tkbool.}
proc uviso*(e: TopoDS_Edge; f: TopoDS_Face; isou: var bool; isov: var bool; d2d: var Dir2d;
           o2d: var Pnt2d): bool {.cdecl, importcpp: "TopOpeBRepTool_TOOL::UVISO(@)",
                               dynlib: tkbool.}
proc isonCLO*(pc: Handle[Geom2dCurve]; onU: bool; xfirst: cfloat; xperiod: cfloat;
             xtol: cfloat): bool {.cdecl,
                                importcpp: "TopOpeBRepTool_TOOL::IsonCLO(@)",
                                dynlib: tkbool.}
proc isonCLO*(c2df: TopOpeBRepToolC2DF; onU: bool; xfirst: cfloat; xperiod: cfloat;
             xtol: cfloat): bool {.cdecl,
                                importcpp: "TopOpeBRepTool_TOOL::IsonCLO(@)",
                                dynlib: tkbool.}
proc trslUV*(t2d: Vec2d; c2df: var TopOpeBRepToolC2DF) {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TrslUV(@)", dynlib: tkbool.}
proc trslUVModifE*(t2d: Vec2d; f: TopoDS_Face; e: var TopoDS_Edge): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TrslUVModifE(@)", dynlib: tkbool.}
proc matter*(d1: Vec; d2: Vec; `ref`: Vec): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", dynlib: tkbool.}
proc matter*(d1: Vec2d; d2: Vec2d): cfloat {.cdecl, importcpp: "TopOpeBRepTool_TOOL::Matter(@)",
                                       dynlib: tkbool.}
proc matter*(xx1: Dir; nt1: Dir; xx2: Dir; nt2: Dir; tola: cfloat; ang: var cfloat): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::Matter(@)", dynlib: tkbool.}
proc matter*(f1: TopoDS_Face; f2: TopoDS_Face; e: TopoDS_Edge; pare: cfloat;
            tola: cfloat; ang: var cfloat): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", dynlib: tkbool.}
proc matterKPtg*(f1: TopoDS_Face; f2: TopoDS_Face; e: TopoDS_Edge; ang: var cfloat): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::MatterKPtg(@)", dynlib: tkbool.}
proc getstp3dF*(p: Pnt; f: TopoDS_Face; uv: var Pnt2d; st: var TopAbsState): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Getstp3dF(@)", dynlib: tkbool.}
proc splitE*(eanc: TopoDS_Edge; splits: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::SplitE(@)", dynlib: tkbool.}
proc mkShell*(lF: TopToolsListOfShape; she: var TopoDS_Shape) {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::MkShell(@)", dynlib: tkbool.}
proc remove*(loS: var TopToolsListOfShape; toremove: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Remove(@)", dynlib: tkbool.}
proc wireToFace*(fref: TopoDS_Face; mapWlow: TopToolsDataMapOfShapeListOfShape;
                lFs: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::WireToFace(@)", dynlib: tkbool.}
proc edgeONFace*(par: cfloat; ed: TopoDS_Edge; uv: Pnt2d; fa: TopoDS_Face;
                isonfa: var bool): bool {.cdecl, importcpp: "TopOpeBRepTool_TOOL::EdgeONFace(@)",
                                      dynlib: tkbool.}