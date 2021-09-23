##  Created on: 1991-04-25
##  Created by: Arnaud BOUZY
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt, Draw_Color,
  Draw_Drawable3D

discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Segment3D"
discard "forward decl of Draw_Segment3D"
type
  Handle_Draw_Segment3D* = handle[Draw_Segment3D]
  Draw_Segment3D* {.importcpp: "Draw_Segment3D", header: "Draw_Segment3D.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDraw_Segment3D*(p1: gp_Pnt; p2: gp_Pnt; col: Draw_Color): Draw_Segment3D {.
    constructor, importcpp: "Draw_Segment3D(@)", header: "Draw_Segment3D.hxx".}
proc DrawOn*(this: Draw_Segment3D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Segment3D.hxx".}
proc First*(this: Draw_Segment3D): gp_Pnt {.noSideEffect, importcpp: "First",
                                        header: "Draw_Segment3D.hxx".}
proc First*(this: var Draw_Segment3D; P: gp_Pnt) {.importcpp: "First",
    header: "Draw_Segment3D.hxx".}
proc Last*(this: Draw_Segment3D): gp_Pnt {.noSideEffect, importcpp: "Last",
                                       header: "Draw_Segment3D.hxx".}
proc Last*(this: var Draw_Segment3D; P: gp_Pnt) {.importcpp: "Last",
    header: "Draw_Segment3D.hxx".}
type
  Draw_Segment3Dbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "Draw_Segment3D::get_type_name(@)",
                              header: "Draw_Segment3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Segment3D::get_type_descriptor(@)",
    header: "Draw_Segment3D.hxx".}
proc DynamicType*(this: Draw_Segment3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Segment3D.hxx".}