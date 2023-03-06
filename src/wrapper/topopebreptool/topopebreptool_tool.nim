import ../gp/gp_types
import ../topabs/topabs_types
import topopebreptool_types
import ../standard/standard_types
import ../brepadaptor/brepadaptor_types
import ../toptools/toptools_types
import ../topods/topods_types
import ../geom2d/geom2d_types





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



proc oriinSor*(sub: TopoDS_Shape; s: TopoDS_Shape; checkclo: bool = false): cint {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::OriinSor(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc oriinSorclosed*(sub: TopoDS_Shape; s: TopoDS_Shape): cint {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::OriinSorclosed(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc closedE*(e: TopoDS_Edge; vclo: var TopoDS_Vertex): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::ClosedE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc closedS*(f: TopoDS_Face): bool {.cdecl,
                                  importcpp: "TopOpeBRepTool_TOOL::ClosedS(@)",
                                  header: "TopOpeBRepTool_TOOL.hxx".}
proc isClosingE*(e: TopoDS_Edge; f: TopoDS_Face): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::IsClosingE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc isClosingE*(e: TopoDS_Edge; w: TopoDS_Shape; f: TopoDS_Face): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::IsClosingE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc vertices*(e: TopoDS_Edge; vces: var TopToolsArray1OfShape) {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Vertices(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc vertex*(iv: cint; e: TopoDS_Edge): TopoDS_Vertex {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Vertex(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc parE*(iv: cint; e: TopoDS_Edge): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::ParE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc onBoundary*(par: cfloat; e: TopoDS_Edge): cint {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::OnBoundary(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc uvf*(par: cfloat; c2df: TopOpeBRepToolC2DF): Pnt2dObj {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::UVF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc parISO*(p2d: Pnt2dObj; e: TopoDS_Edge; f: TopoDS_Face; pare: var cfloat): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::ParISO(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc parE2d*(p2d: Pnt2dObj; e: TopoDS_Edge; f: TopoDS_Face; par: var cfloat; dist: var cfloat): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::ParE2d(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc getduv*(f: TopoDS_Face; uv: Pnt2dObj; dir: gp_Vec; factor: cfloat; duv: var Dir2dObj): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::Getduv(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc uvApp*(f: TopoDS_Face; e: TopoDS_Edge; par: cfloat; eps: cfloat; uvapp: var Pnt2dObj): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::uvApp(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tolUV*(f: TopoDS_Face; tol3d: cfloat): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TolUV(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tolP*(e: TopoDS_Edge; f: TopoDS_Face): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TolP(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc minDUV*(f: TopoDS_Face): cfloat {.cdecl,
                                   importcpp: "TopOpeBRepTool_TOOL::minDUV(@)",
                                   header: "TopOpeBRepTool_TOOL.hxx".}
proc outUVbounds*(uv: Pnt2dObj; f: TopoDS_Face): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::outUVbounds(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc stuvF*(uv: Pnt2dObj; f: TopoDS_Face; onU: var cint; onV: var cint) {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::stuvF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tggeomE*(par: cfloat; bc: BRepAdaptorCurve; tg: var gp_Vec): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TggeomE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tggeomE*(par: cfloat; e: TopoDS_Edge; tg: var gp_Vec): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TggeomE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tgINSIDE*(v: TopoDS_Vertex; e: TopoDS_Edge; tg: var gp_Vec; ovinE: var cint): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::TgINSIDE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tg2d*(iv: cint; e: TopoDS_Edge; c2df: TopOpeBRepToolC2DF): Vec2dObj {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Tg2d(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tg2dApp*(iv: cint; e: TopoDS_Edge; c2df: TopOpeBRepToolC2DF; factor: cfloat): Vec2dObj {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::Tg2dApp(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tryTg2dApp*(iv: cint; e: TopoDS_Edge; c2df: TopOpeBRepToolC2DF; factor: cfloat): Vec2dObj {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::tryTg2dApp(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc xx*(uv: Pnt2dObj; f: TopoDS_Face; par: cfloat; e: TopoDS_Edge; xx: var DirObj): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::XX(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc nt*(uv: Pnt2dObj; f: TopoDS_Face; normt: var DirObj): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Nt(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc nggeomF*(uv: Pnt2dObj; f: TopoDS_Face; ng: var gp_Vec): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::NggeomF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc ngApp*(par: cfloat; e: TopoDS_Edge; f: TopoDS_Face; tola: cfloat; ngApp: var DirObj): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::NgApp(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tryNgApp*(par: cfloat; e: TopoDS_Edge; f: TopoDS_Face; tola: cfloat; ng: var DirObj): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::tryNgApp(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tryOriEinF*(par: cfloat; e: TopoDS_Edge; f: TopoDS_Face): cint {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::tryOriEinF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc isQuad*(e: TopoDS_Edge): bool {.cdecl,
                                 importcpp: "TopOpeBRepTool_TOOL::IsQuad(@)",
                                 header: "TopOpeBRepTool_TOOL.hxx".}
proc isQuad*(f: TopoDS_Face): bool {.cdecl,
                                 importcpp: "TopOpeBRepTool_TOOL::IsQuad(@)",
                                 header: "TopOpeBRepTool_TOOL.hxx".}
proc curvE*(e: TopoDS_Edge; par: cfloat; tg0: DirObj; curv: var cfloat): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::CurvE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc curvF*(f: TopoDS_Face; uv: Pnt2dObj; tg0: DirObj; curv: var cfloat; direct: var bool): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::CurvF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc uviso*(pc: Handle[Geom2dCurve]; isou: var bool; isov: var bool; d2d: var Dir2dObj;
           o2d: var Pnt2dObj): bool {.cdecl, importcpp: "TopOpeBRepTool_TOOL::UVISO(@)",
                               header: "TopOpeBRepTool_TOOL.hxx".}
proc uviso*(c2df: TopOpeBRepToolC2DF; isou: var bool; isov: var bool; d2d: var Dir2dObj;
           o2d: var Pnt2dObj): bool {.cdecl, importcpp: "TopOpeBRepTool_TOOL::UVISO(@)",
                               header: "TopOpeBRepTool_TOOL.hxx".}
proc uviso*(e: TopoDS_Edge; f: TopoDS_Face; isou: var bool; isov: var bool; d2d: var Dir2dObj;
           o2d: var Pnt2dObj): bool {.cdecl, importcpp: "TopOpeBRepTool_TOOL::UVISO(@)",
                               header: "TopOpeBRepTool_TOOL.hxx".}
proc isonCLO*(pc: Handle[Geom2dCurve]; onU: bool; xfirst: cfloat; xperiod: cfloat;
             xtol: cfloat): bool {.cdecl,
                                importcpp: "TopOpeBRepTool_TOOL::IsonCLO(@)",
                                header: "TopOpeBRepTool_TOOL.hxx".}
proc isonCLO*(c2df: TopOpeBRepToolC2DF; onU: bool; xfirst: cfloat; xperiod: cfloat;
             xtol: cfloat): bool {.cdecl,
                                importcpp: "TopOpeBRepTool_TOOL::IsonCLO(@)",
                                header: "TopOpeBRepTool_TOOL.hxx".}
proc trslUV*(t2d: Vec2dObj; c2df: var TopOpeBRepToolC2DF) {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TrslUV(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc trslUVModifE*(t2d: Vec2dObj; f: TopoDS_Face; e: var TopoDS_Edge): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::TrslUVModifE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc matter*(d1: gp_Vec; d2: gp_Vec; `ref`: gp_Vec): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc matter*(d1: Vec2dObj; d2: Vec2dObj): cfloat {.cdecl, importcpp: "TopOpeBRepTool_TOOL::Matter(@)",
                                       header: "TopOpeBRepTool_TOOL.hxx".}
proc matter*(xx1: DirObj; nt1: DirObj; xx2: DirObj; nt2: DirObj; tola: cfloat; ang: var cfloat): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc matter*(f1: TopoDS_Face; f2: TopoDS_Face; e: TopoDS_Edge; pare: cfloat;
            tola: cfloat; ang: var cfloat): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc matterKPtg*(f1: TopoDS_Face; f2: TopoDS_Face; e: TopoDS_Edge; ang: var cfloat): bool {.
    cdecl, importcpp: "TopOpeBRepTool_TOOL::MatterKPtg(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc getstp3dF*(p: gp_Pnt; f: TopoDS_Face; uv: var Pnt2dObj; st: var TopAbsState): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Getstp3dF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc splitE*(eanc: TopoDS_Edge; splits: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::SplitE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc mkShell*(lF: TopToolsListOfShape; she: var TopoDS_Shape) {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::MkShell(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc remove*(loS: var TopToolsListOfShape; toremove: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::Remove(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc wireToFace*(fref: TopoDS_Face; mapWlow: TopToolsDataMapOfShapeListOfShape;
                lFs: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_TOOL::WireToFace(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc edgeONFace*(par: cfloat; ed: TopoDS_Edge; uv: Pnt2dObj; fa: TopoDS_Face;
                isonfa: var bool): bool {.cdecl, importcpp: "TopOpeBRepTool_TOOL::EdgeONFace(@)",
                                      header: "TopOpeBRepTool_TOOL.hxx".}


