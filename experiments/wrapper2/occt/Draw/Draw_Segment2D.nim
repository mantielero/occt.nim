##  Created on: 1994-04-18
##  Created by: Modelistation
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt2d, Draw_Color,
  Draw_Drawable2D, ../Standard/Standard_OStream, Draw_Interpretor

discard "forward decl of gp_Pnt2d"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Segment2D"
discard "forward decl of Draw_Segment2D"
type
  Handle_Draw_Segment2D* = handle[Draw_Segment2D]
  Draw_Segment2D* {.importcpp: "Draw_Segment2D", header: "Draw_Segment2D.hxx", bycopy.} = object of Draw_Drawable2D


proc constructDraw_Segment2D*(p1: gp_Pnt2d; p2: gp_Pnt2d; col: Draw_Color): Draw_Segment2D {.
    constructor, importcpp: "Draw_Segment2D(@)", header: "Draw_Segment2D.hxx".}
proc DrawOn*(this: Draw_Segment2D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Segment2D.hxx".}
proc First*(this: Draw_Segment2D): gp_Pnt2d {.noSideEffect, importcpp: "First",
    header: "Draw_Segment2D.hxx".}
proc First*(this: var Draw_Segment2D; P: gp_Pnt2d) {.importcpp: "First",
    header: "Draw_Segment2D.hxx".}
proc Last*(this: Draw_Segment2D): gp_Pnt2d {.noSideEffect, importcpp: "Last",
    header: "Draw_Segment2D.hxx".}
proc Last*(this: var Draw_Segment2D; P: gp_Pnt2d) {.importcpp: "Last",
    header: "Draw_Segment2D.hxx".}
proc Dump*(this: Draw_Segment2D; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Draw_Segment2D.hxx".}
proc Whatis*(this: Draw_Segment2D; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "Draw_Segment2D.hxx".}
type
  Draw_Segment2Dbase_type* = Draw_Drawable2D

proc get_type_name*(): cstring {.importcpp: "Draw_Segment2D::get_type_name(@)",
                              header: "Draw_Segment2D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Segment2D::get_type_descriptor(@)",
    header: "Draw_Segment2D.hxx".}
proc DynamicType*(this: Draw_Segment2D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Segment2D.hxx".}