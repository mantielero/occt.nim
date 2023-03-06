



##  Created on: 1997-11-26
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1997-1999 Matra Datavision
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
  proc fUN_draw*(s: TopoDS_Shape) {.cdecl, importcpp: "FUN_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_draw*(p: gp_Pnt) {.cdecl, importcpp: "FUN_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_draw*(p: Pnt2dObj) {.cdecl, importcpp: "FUN_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_draw*(c: Handle[Geom2dCurve]; dpar: cfloat) {.cdecl,
      importcpp: "FUN_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_draw*(p: gp_Pnt; v: DirObj) {.cdecl, importcpp: "FUN_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_draw*(p: gp_Pnt; v: VecObj) {.cdecl, importcpp: "FUN_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_brepDraw*(aa: TCollectionAsciiString; p: gp_Pnt) {.cdecl,
      importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_brepDraw*(aa: TCollectionAsciiString; p: gp_Pnt; d: DirObj) {.cdecl,
      importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_brepDraw*(aa: TCollectionAsciiString; s: TopoDS_Shape) {.cdecl,
      importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_brepDraw*(aa: TCollectionAsciiString; c: Handle[GeomCurve]; f: cfloat;
                    l: cfloat) {.cdecl, importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_brepDraw*(aa: TCollectionAsciiString; c: Handle[GeomCurve]) {.cdecl,
      importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_DrawMap*(dataforDegenEd: TopToolsDataMapOfShapeListOfShape) {.cdecl,
      importcpp: "FUN_DrawMap(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_draw2de*(ed: TopoDS_Shape; fa: TopoDS_Shape) {.cdecl,
      importcpp: "FUN_draw2de(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc fUN_draw2d*(par: cfloat; e: TopoDS_Edge; eref: TopoDS_Edge; fref: TopoDS_Face) {.
      cdecl, importcpp: "FUN_draw2d(@)", header: "TopOpeBRepDS_DRAW.hxx".}
##  DRAW


