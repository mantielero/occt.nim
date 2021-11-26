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
  proc topOpeBRepToolDrawPoint*(p: Pnt; t: DrawMarkerShape; c: DrawColorKind) {.
      importcpp: "TopOpeBRepTool_DrawPoint(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc topOpeBRepToolDrawSegment*(p1: Pnt; p2: Pnt; c: DrawColorKind) {.
      importcpp: "TopOpeBRepTool_DrawSegment(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc topOpeBRepToolDrawSegment*(p1: Pnt; p2: Pnt) {.
      importcpp: "TopOpeBRepTool_DrawSegment(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc topOpeBRepToolDrawSegment*(p: Pnt; a2: Lin; par: StandardReal; c: DrawColorKind) {.
      importcpp: "TopOpeBRepTool_DrawSegment(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc topOpeBRepToolColorOnState*(s: TopAbsState): DrawColorKind {.
      importcpp: "TopOpeBRepTool_ColorOnState(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc topOpeBRepToolDrawSegment*(p: Pnt; L: Lin; par: StandardReal; s: TopAbsState) {.
      importcpp: "TopOpeBRepTool_DrawSegment(@)",
      header: "TopOpeBRepTool_DRAW.hxx".}
  proc fdraw_Dins*(pref: TCollectionAsciiString; ss: TopoDS_Shape;
                  snam: TCollectionAsciiString; suff: TCollectionAsciiString = "") {.
      importcpp: "FDRAW_DINS(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fdraw_Dine*(pref: TCollectionAsciiString; ee: TopoDS_Edge;
                  enam: TCollectionAsciiString; suff: TCollectionAsciiString = "") {.
      importcpp: "FDRAW_DINE(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fdraw_Dinloe*(pref: TCollectionAsciiString; loe: TopToolsListOfShape;
                    str1: TCollectionAsciiString; str2: TCollectionAsciiString) {.
      importcpp: "FDRAW_DINLOE(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; p: Pnt; d: Dir) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; p: Pnt2d; d: Dir2d; i: int) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; p2d: Pnt2d) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; p: Pnt) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; c2d: Handle[Geom2dCurve]) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; c2d: Handle[Geom2dCurve];
                    f: StandardReal; l: StandardReal) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; c: Handle[GeomCurve]) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; c: Handle[GeomCurve];
                    f: StandardReal; l: StandardReal) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; s: TopoDS_Shape) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; s: TopoDS_Shape; `is`: int) {.
      importcpp: "FUN_tool_draw(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; e: TopoDS_Edge; f: TopoDS_Face;
                    ie: int) {.importcpp: "FUN_tool_draw(@)",
                             header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; e: TopoDS_Edge; f: TopoDS_Face;
                    ie: int) {.importcpp: "FUN_tool_draw(@)",
                             header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolPRODINS*(): var TCollectionAsciiString {.
      importcpp: "FUN_tool_PRODINS(@)", header: "TopOpeBRepTool_DRAW.hxx".}
  proc fUN_toolPRODINP*(): var TCollectionAsciiString {.
      importcpp: "FUN_tool_PRODINP(@)", header: "TopOpeBRepTool_DRAW.hxx".}