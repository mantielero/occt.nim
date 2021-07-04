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
  import
    TopOpeBRepDS_define, ../DBRep/DBRep, ../DrawTrSurf/DrawTrSurf, ../gp/gp_Pnt2d,
    ../Geom2d/Geom2d_Curve, ../gp/gp_Pnt, ../gp/gp_Vec, ../Geom/Geom_Curve,
    ../gp/gp_Dir

  proc FUN_draw*(s: TopoDS_Shape) {.importcpp: "FUN_draw(@)",
                                 header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_draw*(p: gp_Pnt) {.importcpp: "FUN_draw(@)",
                           header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_draw*(p: gp_Pnt2d) {.importcpp: "FUN_draw(@)",
                             header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_draw*(c: handle[Geom2d_Curve]; dpar: Standard_Real) {.
      importcpp: "FUN_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_draw*(p: gp_Pnt; v: gp_Dir) {.importcpp: "FUN_draw(@)",
                                    header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_draw*(p: gp_Pnt; v: gp_Vec) {.importcpp: "FUN_draw(@)",
                                    header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_brep_draw*(aa: TCollection_AsciiString; p: gp_Pnt) {.
      importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_brep_draw*(aa: TCollection_AsciiString; p: gp_Pnt; d: gp_Dir) {.
      importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_brep_draw*(aa: TCollection_AsciiString; s: TopoDS_Shape) {.
      importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_brep_draw*(aa: TCollection_AsciiString; C: handle[Geom_Curve];
                     f: Standard_Real; l: Standard_Real) {.
      importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_brep_draw*(aa: TCollection_AsciiString; C: handle[Geom_Curve]) {.
      importcpp: "FUN_brep_draw(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_DrawMap*(DataforDegenEd: TopTools_DataMapOfShapeListOfShape) {.
      importcpp: "FUN_DrawMap(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_draw2de*(ed: TopoDS_Shape; fa: TopoDS_Shape) {.
      importcpp: "FUN_draw2de(@)", header: "TopOpeBRepDS_DRAW.hxx".}
  proc FUN_draw2d*(par: Standard_Real; E: TopoDS_Edge; Eref: TopoDS_Edge;
                  Fref: TopoDS_Face) {.importcpp: "FUN_draw2d(@)",
                                     header: "TopOpeBRepDS_DRAW.hxx".}
##  DRAW
