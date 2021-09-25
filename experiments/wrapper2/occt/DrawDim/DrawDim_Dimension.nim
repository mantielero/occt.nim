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

discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_Dimension"
discard "forward decl of DrawDim_Dimension"
type
  HandleDrawDimDimension* = Handle[DrawDimDimension]

## ! Dimension between planes and cylinder

type
  DrawDimDimension* {.importcpp: "DrawDim_Dimension",
                     header: "DrawDim_Dimension.hxx", bycopy.} = object of DrawDrawable3D


proc setValue*(this: var DrawDimDimension; avalue: float) {.importcpp: "SetValue",
    header: "DrawDim_Dimension.hxx".}
proc getValue*(this: DrawDimDimension): float {.noSideEffect, importcpp: "GetValue",
    header: "DrawDim_Dimension.hxx".}
proc isValued*(this: DrawDimDimension): bool {.noSideEffect, importcpp: "IsValued",
    header: "DrawDim_Dimension.hxx".}
proc textColor*(this: var DrawDimDimension; c: DrawColor) {.importcpp: "TextColor",
    header: "DrawDim_Dimension.hxx".}
proc textColor*(this: DrawDimDimension): DrawColor {.noSideEffect,
    importcpp: "TextColor", header: "DrawDim_Dimension.hxx".}
proc drawText*(this: DrawDimDimension; pos: Pnt; d: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawText", header: "DrawDim_Dimension.hxx".}
type
  DrawDimDimensionbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "DrawDim_Dimension::get_type_name(@)",
                            header: "DrawDim_Dimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawDim_Dimension::get_type_descriptor(@)",
    header: "DrawDim_Dimension.hxx".}
proc dynamicType*(this: DrawDimDimension): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_Dimension.hxx".}
