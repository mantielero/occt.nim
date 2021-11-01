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
  proc topOpeBRepToolDrawPoint*(p: Pnt; t: DrawMarkerShape; c: DrawColorKind) {.cdecl,
      importcpp: "TopOpeBRepTool_DrawPoint(@)", dynlib: tkbool.}
  proc topOpeBRepToolDrawSegment*(p1: Pnt; p2: Pnt; c: DrawColorKind) {.cdecl,
      importcpp: "TopOpeBRepTool_DrawSegment(@)", dynlib: tkbool.}
  proc topOpeBRepToolDrawSegment*(p1: Pnt; p2: Pnt) {.cdecl,
      importcpp: "TopOpeBRepTool_DrawSegment(@)", dynlib: tkbool.}
  proc topOpeBRepToolDrawSegment*(p: Pnt; a2: Lin; par: cfloat; c: DrawColorKind) {.
      cdecl, importcpp: "TopOpeBRepTool_DrawSegment(@)", dynlib: tkbool.}
  proc topOpeBRepToolColorOnState*(s: TopAbsState): DrawColorKind {.cdecl,
      importcpp: "TopOpeBRepTool_ColorOnState(@)", dynlib: tkbool.}
  proc topOpeBRepToolDrawSegment*(p: Pnt; L: Lin; par: cfloat; s: TopAbsState) {.cdecl,
      importcpp: "TopOpeBRepTool_DrawSegment(@)", dynlib: tkbool.}
  proc fdraw_Dins*(pref: TCollectionAsciiString; ss: TopoDS_Shape;
                  snam: TCollectionAsciiString; suff: TCollectionAsciiString = "") {.
      cdecl, importcpp: "FDRAW_DINS(@)", dynlib: tkbool.}
  proc fdraw_Dine*(pref: TCollectionAsciiString; ee: TopoDS_Edge;
                  enam: TCollectionAsciiString; suff: TCollectionAsciiString = "") {.
      cdecl, importcpp: "FDRAW_DINE(@)", dynlib: tkbool.}
  proc fdraw_Dinloe*(pref: TCollectionAsciiString; loe: TopToolsListOfShape;
                    str1: TCollectionAsciiString; str2: TCollectionAsciiString) {.
      cdecl, importcpp: "FDRAW_DINLOE(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; p: Pnt; d: Dir) {.cdecl,
      importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; p: Pnt2d; d: Dir2d; i: cint) {.cdecl,
      importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; p2d: Pnt2d) {.cdecl,
      importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; p: Pnt) {.cdecl,
      importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; c2d: Handle[Geom2dCurve]) {.cdecl,
      importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; c2d: Handle[Geom2dCurve]; f: cfloat;
                    l: cfloat) {.cdecl, importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; c: Handle[GeomCurve]) {.cdecl,
      importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; c: Handle[GeomCurve]; f: cfloat;
                    l: cfloat) {.cdecl, importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; s: TopoDS_Shape) {.cdecl,
      importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; s: TopoDS_Shape; `is`: cint) {.cdecl,
      importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; e: TopoDS_Edge; f: TopoDS_Face;
                    ie: cint) {.cdecl, importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolDraw*(aa: TCollectionAsciiString; e: TopoDS_Edge; f: TopoDS_Face;
                    ie: cint) {.cdecl, importcpp: "FUN_tool_draw(@)", dynlib: tkbool.}
  proc fUN_toolPRODINS*(): var TCollectionAsciiString {.cdecl,
      importcpp: "FUN_tool_PRODINS(@)", dynlib: tkbool.}
  proc fUN_toolPRODINP*(): var TCollectionAsciiString {.cdecl,
      importcpp: "FUN_tool_PRODINP(@)", dynlib: tkbool.}