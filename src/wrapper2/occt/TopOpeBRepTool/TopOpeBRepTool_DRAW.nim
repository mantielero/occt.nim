##  Created on: 1994-10-24
##  Created by: Jean Yves LEBEY
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

when defined(DRAW):
  import
    ../gp/gp_Pnt, ../gp/gp_Pnt2d, ../gp/gp_Lin, ../Draw/Draw_ColorKind,
    ../Draw/Draw_MarkerShape, TopOpeBRepTool_define, ../Geom/Geom_Curve,
    ../Geom2d/Geom2d_Curve, TopOpeBRepTool_define

  proc TopOpeBRepTool_DrawPoint*(P: gp_Pnt; T: Draw_MarkerShape; C: Draw_ColorKind) {.
      importcpp: "TopOpeBRepTool_DrawPoint(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc TopOpeBRepTool_DrawSegment*(P1: gp_Pnt; P2: gp_Pnt; C: Draw_ColorKind) {.
      importcpp: "TopOpeBRepTool_DrawSegment(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc TopOpeBRepTool_DrawSegment*(P1: gp_Pnt; P2: gp_Pnt) {.
      importcpp: "TopOpeBRepTool_DrawSegment(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc TopOpeBRepTool_DrawSegment*(P: gp_Pnt; a2: gp_Lin; Par: Standard_Real;
                                  C: Draw_ColorKind) {.
      importcpp: "TopOpeBRepTool_DrawSegment(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc TopOpeBRepTool_ColorOnState*(S: TopAbs_State): Draw_ColorKind {.
      importcpp: "TopOpeBRepTool_ColorOnState(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc TopOpeBRepTool_DrawSegment*(P: gp_Pnt; L: gp_Lin; Par: Standard_Real;
                                  S: TopAbs_State) {.
      importcpp: "TopOpeBRepTool_DrawSegment(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc FDRAW_DINS*(pref: TCollection_AsciiString; SS: TopoDS_Shape;
                  Snam: TCollection_AsciiString;
                  suff: TCollection_AsciiString = "") {.importcpp: "FDRAW_DINS(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc FDRAW_DINE*(pref: TCollection_AsciiString; EE: TopoDS_Edge;
                  Enam: TCollection_AsciiString;
                  suff: TCollection_AsciiString = "") {.importcpp: "FDRAW_DINE(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc FDRAW_DINLOE*(pref: TCollection_AsciiString; LOE: TopTools_ListOfShape;
                    str1: TCollection_AsciiString; str2: TCollection_AsciiString) {.
      importcpp: "FDRAW_DINLOE(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; p: gp_Pnt; d: gp_Dir) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; p: gp_Pnt2d; d: gp_Dir2d;
                     i: Standard_Integer) {.importcpp: "FUN_tool_draw(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; p2d: gp_Pnt2d) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; p: gp_Pnt) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; c2d: handle[Geom2d_Curve]) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; c2d: handle[Geom2d_Curve];
                     f: Standard_Real; l: Standard_Real) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; C: handle[Geom_Curve]) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; c: handle[Geom_Curve];
                     f: Standard_Real; l: Standard_Real) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; s: TopoDS_Shape) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; S: TopoDS_Shape;
                     `is`: Standard_Integer) {.importcpp: "FUN_tool_draw(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; E: TopoDS_Edge; F: TopoDS_Face;
                     ie: Standard_Integer) {.importcpp: "FUN_tool_draw(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_draw*(aa: TCollection_AsciiString; E: TopoDS_Edge; F: TopoDS_Face;
                     ie: Standard_Integer) {.importcpp: "FUN_tool_draw(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_PRODINS*(): var TCollection_AsciiString {.
      importcpp: "FUN_tool_PRODINS(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc FUN_tool_PRODINP*(): var TCollection_AsciiString {.
      importcpp: "FUN_tool_PRODINP(@)", header: "TopOpeBRepTool_DRAW.hxx".}