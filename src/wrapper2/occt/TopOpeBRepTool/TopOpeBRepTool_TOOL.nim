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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_Array1OfShape,
  ../Standard/Standard_Real, ../TopAbs/TopAbs_State,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape

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
  TopOpeBRepTool_TOOL* {.importcpp: "TopOpeBRepTool_TOOL",
                        header: "TopOpeBRepTool_TOOL.hxx", bycopy.} = object


proc OriinSor*(sub: TopoDS_Shape; S: TopoDS_Shape;
              checkclo: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "TopOpeBRepTool_TOOL::OriinSor(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc OriinSorclosed*(sub: TopoDS_Shape; S: TopoDS_Shape): Standard_Integer {.
    importcpp: "TopOpeBRepTool_TOOL::OriinSorclosed(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc ClosedE*(E: TopoDS_Edge; vclo: var TopoDS_Vertex): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::ClosedE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc ClosedS*(F: TopoDS_Face): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::ClosedS(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc IsClosingE*(E: TopoDS_Edge; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsClosingE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc IsClosingE*(E: TopoDS_Edge; W: TopoDS_Shape; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsClosingE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc Vertices*(E: TopoDS_Edge; Vces: var TopTools_Array1OfShape) {.
    importcpp: "TopOpeBRepTool_TOOL::Vertices(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc Vertex*(Iv: Standard_Integer; E: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "TopOpeBRepTool_TOOL::Vertex(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc ParE*(Iv: Standard_Integer; E: TopoDS_Edge): Standard_Real {.
    importcpp: "TopOpeBRepTool_TOOL::ParE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc OnBoundary*(par: Standard_Real; E: TopoDS_Edge): Standard_Integer {.
    importcpp: "TopOpeBRepTool_TOOL::OnBoundary(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc UVF*(par: Standard_Real; C2DF: TopOpeBRepTool_C2DF): gp_Pnt2d {.
    importcpp: "TopOpeBRepTool_TOOL::UVF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc ParISO*(p2d: gp_Pnt2d; e: TopoDS_Edge; f: TopoDS_Face; pare: var Standard_Real): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::ParISO(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc ParE2d*(p2d: gp_Pnt2d; e: TopoDS_Edge; f: TopoDS_Face; par: var Standard_Real;
            dist: var Standard_Real): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::ParE2d(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc Getduv*(f: TopoDS_Face; uv: gp_Pnt2d; dir: gp_Vec; factor: Standard_Real;
            duv: var gp_Dir2d): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::Getduv(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc uvApp*(f: TopoDS_Face; e: TopoDS_Edge; par: Standard_Real; eps: Standard_Real;
           uvapp: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::uvApp(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc TolUV*(F: TopoDS_Face; tol3d: Standard_Real): Standard_Real {.
    importcpp: "TopOpeBRepTool_TOOL::TolUV(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc TolP*(E: TopoDS_Edge; F: TopoDS_Face): Standard_Real {.
    importcpp: "TopOpeBRepTool_TOOL::TolP(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc minDUV*(F: TopoDS_Face): Standard_Real {.
    importcpp: "TopOpeBRepTool_TOOL::minDUV(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc outUVbounds*(uv: gp_Pnt2d; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::outUVbounds(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc stuvF*(uv: gp_Pnt2d; F: TopoDS_Face; onU: var Standard_Integer;
           onV: var Standard_Integer) {.importcpp: "TopOpeBRepTool_TOOL::stuvF(@)",
                                     header: "TopOpeBRepTool_TOOL.hxx".}
proc TggeomE*(par: Standard_Real; BC: BRepAdaptor_Curve; Tg: var gp_Vec): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::TggeomE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc TggeomE*(par: Standard_Real; E: TopoDS_Edge; Tg: var gp_Vec): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::TggeomE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc TgINSIDE*(v: TopoDS_Vertex; E: TopoDS_Edge; Tg: var gp_Vec;
              OvinE: var Standard_Integer): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::TgINSIDE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc Tg2d*(iv: Standard_Integer; E: TopoDS_Edge; C2DF: TopOpeBRepTool_C2DF): gp_Vec2d {.
    importcpp: "TopOpeBRepTool_TOOL::Tg2d(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc Tg2dApp*(iv: Standard_Integer; E: TopoDS_Edge; C2DF: TopOpeBRepTool_C2DF;
             factor: Standard_Real): gp_Vec2d {.
    importcpp: "TopOpeBRepTool_TOOL::Tg2dApp(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc tryTg2dApp*(iv: Standard_Integer; E: TopoDS_Edge; C2DF: TopOpeBRepTool_C2DF;
                factor: Standard_Real): gp_Vec2d {.
    importcpp: "TopOpeBRepTool_TOOL::tryTg2dApp(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc XX*(uv: gp_Pnt2d; f: TopoDS_Face; par: Standard_Real; e: TopoDS_Edge; xx: var gp_Dir): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::XX(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc Nt*(uv: gp_Pnt2d; f: TopoDS_Face; normt: var gp_Dir): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::Nt(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc NggeomF*(uv: gp_Pnt2d; F: TopoDS_Face; ng: var gp_Vec): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::NggeomF(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc NgApp*(par: Standard_Real; E: TopoDS_Edge; F: TopoDS_Face; tola: Standard_Real;
           ngApp: var gp_Dir): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::NgApp(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc tryNgApp*(par: Standard_Real; E: TopoDS_Edge; F: TopoDS_Face; tola: Standard_Real;
              ng: var gp_Dir): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::tryNgApp(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc tryOriEinF*(par: Standard_Real; E: TopoDS_Edge; F: TopoDS_Face): Standard_Integer {.
    importcpp: "TopOpeBRepTool_TOOL::tryOriEinF(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc IsQuad*(E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsQuad(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc IsQuad*(F: TopoDS_Face): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsQuad(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc CurvE*(E: TopoDS_Edge; par: Standard_Real; tg0: gp_Dir; Curv: var Standard_Real): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::CurvE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc CurvF*(F: TopoDS_Face; uv: gp_Pnt2d; tg0: gp_Dir; Curv: var Standard_Real;
           direct: var Standard_Boolean): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::CurvF(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc UVISO*(PC: handle[Geom2d_Curve]; isou: var Standard_Boolean;
           isov: var Standard_Boolean; d2d: var gp_Dir2d; o2d: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::UVISO(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc UVISO*(C2DF: TopOpeBRepTool_C2DF; isou: var Standard_Boolean;
           isov: var Standard_Boolean; d2d: var gp_Dir2d; o2d: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::UVISO(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc UVISO*(E: TopoDS_Edge; F: TopoDS_Face; isou: var Standard_Boolean;
           isov: var Standard_Boolean; d2d: var gp_Dir2d; o2d: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::UVISO(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc IsonCLO*(PC: handle[Geom2d_Curve]; onU: Standard_Boolean; xfirst: Standard_Real;
             xperiod: Standard_Real; xtol: Standard_Real): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsonCLO(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc IsonCLO*(C2DF: TopOpeBRepTool_C2DF; onU: Standard_Boolean;
             xfirst: Standard_Real; xperiod: Standard_Real; xtol: Standard_Real): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::IsonCLO(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc TrslUV*(t2d: gp_Vec2d; C2DF: var TopOpeBRepTool_C2DF) {.
    importcpp: "TopOpeBRepTool_TOOL::TrslUV(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc TrslUVModifE*(t2d: gp_Vec2d; F: TopoDS_Face; E: var TopoDS_Edge): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::TrslUVModifE(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc Matter*(d1: gp_Vec; d2: gp_Vec; `ref`: gp_Vec): Standard_Real {.
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc Matter*(d1: gp_Vec2d; d2: gp_Vec2d): Standard_Real {.
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc Matter*(xx1: gp_Dir; nt1: gp_Dir; xx2: gp_Dir; nt2: gp_Dir; tola: Standard_Real;
            Ang: var Standard_Real): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc Matter*(f1: TopoDS_Face; f2: TopoDS_Face; e: TopoDS_Edge; pare: Standard_Real;
            tola: Standard_Real; Ang: var Standard_Real): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::Matter(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc MatterKPtg*(f1: TopoDS_Face; f2: TopoDS_Face; e: TopoDS_Edge;
                Ang: var Standard_Real): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::MatterKPtg(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc Getstp3dF*(p: gp_Pnt; f: TopoDS_Face; uv: var gp_Pnt2d; st: var TopAbs_State): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::Getstp3dF(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc SplitE*(Eanc: TopoDS_Edge; Splits: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::SplitE(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc MkShell*(lF: TopTools_ListOfShape; She: var TopoDS_Shape) {.
    importcpp: "TopOpeBRepTool_TOOL::MkShell(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc Remove*(loS: var TopTools_ListOfShape; toremove: TopoDS_Shape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::Remove(@)", header: "TopOpeBRepTool_TOOL.hxx".}
proc WireToFace*(Fref: TopoDS_Face; mapWlow: TopTools_DataMapOfShapeListOfShape;
                lFs: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::WireToFace(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}
proc EdgeONFace*(par: Standard_Real; ed: TopoDS_Edge; uv: gp_Pnt2d; fa: TopoDS_Face;
                isonfa: var Standard_Boolean): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_TOOL::EdgeONFace(@)",
    header: "TopOpeBRepTool_TOOL.hxx".}