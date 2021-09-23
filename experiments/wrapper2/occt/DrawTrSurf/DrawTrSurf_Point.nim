##  Created on: 1994-03-28
##  Created by: Remi LEQUETTE
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  ../Standard/Standard_Boolean, ../Draw/Draw_MarkerShape, ../Draw/Draw_Color,
  ../Draw/Draw_Drawable3D, ../Standard/Standard_OStream, ../Draw/Draw_Interpretor

discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Point"
discard "forward decl of DrawTrSurf_Point"
type
  Handle_DrawTrSurf_Point* = handle[DrawTrSurf_Point]

## ! A drawable point.

type
  DrawTrSurf_Point* {.importcpp: "DrawTrSurf_Point",
                     header: "DrawTrSurf_Point.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDrawTrSurf_Point*(P: gp_Pnt; Shape: Draw_MarkerShape; Col: Draw_Color): DrawTrSurf_Point {.
    constructor, importcpp: "DrawTrSurf_Point(@)", header: "DrawTrSurf_Point.hxx".}
proc constructDrawTrSurf_Point*(P: gp_Pnt2d; Shape: Draw_MarkerShape; Col: Draw_Color): DrawTrSurf_Point {.
    constructor, importcpp: "DrawTrSurf_Point(@)", header: "DrawTrSurf_Point.hxx".}
proc DrawOn*(this: DrawTrSurf_Point; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Point.hxx".}
proc Is3D*(this: DrawTrSurf_Point): Standard_Boolean {.noSideEffect,
    importcpp: "Is3D", header: "DrawTrSurf_Point.hxx".}
proc Point*(this: DrawTrSurf_Point): gp_Pnt {.noSideEffect, importcpp: "Point",
    header: "DrawTrSurf_Point.hxx".}
proc Point*(this: var DrawTrSurf_Point; P: gp_Pnt) {.importcpp: "Point",
    header: "DrawTrSurf_Point.hxx".}
proc Point2d*(this: DrawTrSurf_Point): gp_Pnt2d {.noSideEffect, importcpp: "Point2d",
    header: "DrawTrSurf_Point.hxx".}
proc Point2d*(this: var DrawTrSurf_Point; P: gp_Pnt2d) {.importcpp: "Point2d",
    header: "DrawTrSurf_Point.hxx".}
proc Color*(this: var DrawTrSurf_Point; aColor: Draw_Color) {.importcpp: "Color",
    header: "DrawTrSurf_Point.hxx".}
proc Color*(this: DrawTrSurf_Point): Draw_Color {.noSideEffect, importcpp: "Color",
    header: "DrawTrSurf_Point.hxx".}
proc Shape*(this: var DrawTrSurf_Point; S: Draw_MarkerShape) {.importcpp: "Shape",
    header: "DrawTrSurf_Point.hxx".}
proc Shape*(this: DrawTrSurf_Point): Draw_MarkerShape {.noSideEffect,
    importcpp: "Shape", header: "DrawTrSurf_Point.hxx".}
proc Copy*(this: DrawTrSurf_Point): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Point.hxx".}
proc Dump*(this: DrawTrSurf_Point; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Point.hxx".}
proc Whatis*(this: DrawTrSurf_Point; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Point.hxx".}
type
  DrawTrSurf_Pointbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_Point::get_type_name(@)",
                              header: "DrawTrSurf_Point.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_Point::get_type_descriptor(@)",
    header: "DrawTrSurf_Point.hxx".}
proc DynamicType*(this: DrawTrSurf_Point): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Point.hxx".}