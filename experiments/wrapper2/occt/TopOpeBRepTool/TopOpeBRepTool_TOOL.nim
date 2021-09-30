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


proc `new`*(this: var TopOpeBRepToolTOOL; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_TOOL::operator new",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc `delete`*(this: var TopOpeBRepToolTOOL; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_TOOL::operator delete",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc `new[]`*(this: var TopOpeBRepToolTOOL; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_TOOL::operator new[]",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolTOOL; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_TOOL::operator delete[]",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc `new`*(this: var TopOpeBRepToolTOOL; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_TOOL::operator new",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc `delete`*(this: var TopOpeBRepToolTOOL; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_TOOL::operator delete",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc oriinSor*(sub: TopoDS_Shape; s: TopoDS_Shape; checkclo: StandardBoolean = false): int {.
    importcpp: "TopOpeBRepTool_TOOL::OriinSor(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc oriinSorclosed*(sub: TopoDS_Shape; s: TopoDS_Shape): int {.
    importcpp: "TopOpeBRepTool_TOOL::OriinSorclosed(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc closedE*(e: TopoDS_Edge; vclo: var TopoDS_Vertex): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::ClosedE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc closedS*(f: TopoDS_Face): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::ClosedS(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc isClosingE*(e: TopoDS_Edge; f: TopoDS_Face): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsClosingE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc isClosingE*(e: TopoDS_Edge; w: TopoDS_Shape; f: TopoDS_Face): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsClosingE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc vertices*(e: TopoDS_Edge; vces: var TopToolsArray1OfShape) {.
    importcpp: "TopOpeBRepTool_TOOL::Vertices(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc vertex*(iv: int; e: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "TopOpeBRepTool_TOOL::Vertex(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc parE*(iv: int; e: TopoDS_Edge): StandardReal {.
    importcpp: "TopOpeBRepTool_TOOL::ParE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc onBoundary*(par: StandardReal; e: TopoDS_Edge): int {.
    importcpp: "TopOpeBRepTool_TOOL::OnBoundary(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc uvf*(par: StandardReal; c2df: TopOpeBRepToolC2DF): Pnt2d {.
    importcpp: "TopOpeBRepTool_TOOL::UVF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc parISO*(p2d: Pnt2d; e: TopoDS_Edge; f: TopoDS_Face; pare: var StandardReal): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::ParISO(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc parE2d*(p2d: Pnt2d; e: TopoDS_Edge; f: TopoDS_Face; par: var StandardReal;
            dist: var StandardReal): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::ParE2d(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc getduv*(f: TopoDS_Face; uv: Pnt2d; dir: Vec; factor: StandardReal; duv: var Dir2d): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::Getduv(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc uvApp*(f: TopoDS_Face; e: TopoDS_Edge; par: StandardReal; eps: StandardReal;
           uvapp: var Pnt2d): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::uvApp(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tolUV*(f: TopoDS_Face; tol3d: StandardReal): StandardReal {.
    importcpp: "TopOpeBRepTool_TOOL::TolUV(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tolP*(e: TopoDS_Edge; f: TopoDS_Face): StandardReal {.
    importcpp: "TopOpeBRepTool_TOOL::TolP(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc minDUV*(f: TopoDS_Face): StandardReal {.
    importcpp: "TopOpeBRepTool_TOOL::minDUV(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc outUVbounds*(uv: Pnt2d; f: TopoDS_Face): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::outUVbounds(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc stuvF*(uv: Pnt2d; f: TopoDS_Face; onU: var int; onV: var int) {.
    importcpp: "TopOpeBRepTool_TOOL::stuvF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tggeomE*(par: StandardReal; bc: BRepAdaptorCurve; tg: var Vec): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::TggeomE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc tggeomE*(par: StandardReal; e: TopoDS_Edge; tg: var Vec): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::TggeomE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc tgINSIDE*(v: TopoDS_Vertex; e: TopoDS_Edge; tg: var Vec; ovinE: var int): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::TgINSIDE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc tg2d*(iv: int; e: TopoDS_Edge; c2df: TopOpeBRepToolC2DF): Vec2d {.
    importcpp: "TopOpeBRepTool_TOOL::Tg2d(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tg2dApp*(iv: int; e: TopoDS_Edge; c2df: TopOpeBRepToolC2DF; factor: StandardReal): Vec2d {.
    importcpp: "TopOpeBRepTool_TOOL::Tg2dApp(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc tryTg2dApp*(iv: int; e: TopoDS_Edge; c2df: TopOpeBRepToolC2DF;
                factor: StandardReal): Vec2d {.
    importcpp: "TopOpeBRepTool_TOOL::tryTg2dApp(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc xx*(uv: Pnt2d; f: TopoDS_Face; par: StandardReal; e: TopoDS_Edge; xx: var Dir): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::XX(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc nt*(uv: Pnt2d; f: TopoDS_Face; normt: var Dir): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::Nt(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc nggeomF*(uv: Pnt2d; f: TopoDS_Face; ng: var Vec): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::NggeomF(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc ngApp*(par: StandardReal; e: TopoDS_Edge; f: TopoDS_Face; tola: StandardReal;
           ngApp: var Dir): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::NgApp(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tryNgApp*(par: StandardReal; e: TopoDS_Edge; f: TopoDS_Face; tola: StandardReal;
              ng: var Dir): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::tryNgApp(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc tryOriEinF*(par: StandardReal; e: TopoDS_Edge; f: TopoDS_Face): int {.
    importcpp: "TopOpeBRepTool_TOOL::tryOriEinF(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc isQuad*(e: TopoDS_Edge): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsQuad(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc isQuad*(f: TopoDS_Face): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsQuad(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc curvE*(e: TopoDS_Edge; par: StandardReal; tg0: Dir; curv: var StandardReal): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::CurvE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc curvF*(f: TopoDS_Face; uv: Pnt2d; tg0: Dir; curv: var StandardReal;
           direct: var StandardBoolean): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::CurvF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc uviso*(pc: Handle[Geom2dCurve]; isou: var StandardBoolean;
           isov: var StandardBoolean; d2d: var Dir2d; o2d: var Pnt2d): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::UVISO(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc uviso*(c2df: TopOpeBRepToolC2DF; isou: var StandardBoolean;
           isov: var StandardBoolean; d2d: var Dir2d; o2d: var Pnt2d): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::UVISO(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc uviso*(e: TopoDS_Edge; f: TopoDS_Face; isou: var StandardBoolean;
           isov: var StandardBoolean; d2d: var Dir2d; o2d: var Pnt2d): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::UVISO(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc isonCLO*(pc: Handle[Geom2dCurve]; onU: StandardBoolean; xfirst: StandardReal;
             xperiod: StandardReal; xtol: StandardReal): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsonCLO(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc isonCLO*(c2df: TopOpeBRepToolC2DF; onU: StandardBoolean; xfirst: StandardReal;
             xperiod: StandardReal; xtol: StandardReal): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsonCLO(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc trslUV*(t2d: Vec2d; c2df: var TopOpeBRepToolC2DF) {.
    importcpp: "TopOpeBRepTool_TOOL::TrslUV(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc trslUVModifE*(t2d: Vec2d; f: TopoDS_Face; e: var TopoDS_Edge): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::TrslUVModifE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc matter*(d1: Vec; d2: Vec; `ref`: Vec): StandardReal {.
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc matter*(d1: Vec2d; d2: Vec2d): StandardReal {.
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc matter*(xx1: Dir; nt1: Dir; xx2: Dir; nt2: Dir; tola: StandardReal;
            ang: var StandardReal): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc matter*(f1: TopoDS_Face; f2: TopoDS_Face; e: TopoDS_Edge; pare: StandardReal;
            tola: StandardReal; ang: var StandardReal): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc matterKPtg*(f1: TopoDS_Face; f2: TopoDS_Face; e: TopoDS_Edge;
                ang: var StandardReal): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::MatterKPtg(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc getstp3dF*(p: Pnt; f: TopoDS_Face; uv: var Pnt2d; st: var TopAbsState): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::Getstp3dF(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc splitE*(eanc: TopoDS_Edge; splits: var TopToolsListOfShape): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::SplitE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc mkShell*(lF: TopToolsListOfShape; she: var TopoDS_Shape) {.
    importcpp: "TopOpeBRepTool_TOOL::MkShell(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc remove*(loS: var TopToolsListOfShape; toremove: TopoDS_Shape): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::Remove(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc wireToFace*(fref: TopoDS_Face; mapWlow: TopToolsDataMapOfShapeListOfShape;
                lFs: var TopToolsListOfShape): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::WireToFace(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc edgeONFace*(par: StandardReal; ed: TopoDS_Edge; uv: Pnt2d; fa: TopoDS_Face;
                isonfa: var StandardBoolean): StandardBoolean {.
    importcpp: "TopOpeBRepTool_TOOL::EdgeONFace(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}