##  Created on: 1997-04-21
##  Created by: Denis PASCAL
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Draw/Draw_Color, ../Draw/Draw_Drawable3D

discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_Dimension"
discard "forward decl of DrawDim_Dimension"
type
  Handle_DrawDim_Dimension* = handle[DrawDim_Dimension]

## ! Dimension between planes and cylinder

type
  DrawDim_Dimension* {.importcpp: "DrawDim_Dimension",
                      header: "DrawDim_Dimension.hxx", bycopy.} = object of Draw_Drawable3D


proc SetValue*(this: var DrawDim_Dimension; avalue: Standard_Real) {.
    importcpp: "SetValue", header: "DrawDim_Dimension.hxx".}
proc GetValue*(this: DrawDim_Dimension): Standard_Real {.noSideEffect,
    importcpp: "GetValue", header: "DrawDim_Dimension.hxx".}
proc IsValued*(this: DrawDim_Dimension): Standard_Boolean {.noSideEffect,
    importcpp: "IsValued", header: "DrawDim_Dimension.hxx".}
proc TextColor*(this: var DrawDim_Dimension; C: Draw_Color) {.importcpp: "TextColor",
    header: "DrawDim_Dimension.hxx".}
proc TextColor*(this: DrawDim_Dimension): Draw_Color {.noSideEffect,
    importcpp: "TextColor", header: "DrawDim_Dimension.hxx".}
proc DrawText*(this: DrawDim_Dimension; Pos: gp_Pnt; D: var Draw_Display) {.
    noSideEffect, importcpp: "DrawText", header: "DrawDim_Dimension.hxx".}
type
  DrawDim_Dimensionbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "DrawDim_Dimension::get_type_name(@)",
                              header: "DrawDim_Dimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawDim_Dimension::get_type_descriptor(@)",
    header: "DrawDim_Dimension.hxx".}
proc DynamicType*(this: DrawDim_Dimension): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_Dimension.hxx".}