##  Created on: 1996-01-09
##  Created by: Denis PASCAL
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  DrawDim_Dimension

discard "forward decl of TopoDS_Face"
discard "forward decl of DrawDim_PlanarDimension"
discard "forward decl of DrawDim_PlanarDimension"
type
  Handle_DrawDim_PlanarDimension* = handle[DrawDim_PlanarDimension]

## ! Dimensions between point, line and circle ON a plane

type
  DrawDim_PlanarDimension* {.importcpp: "DrawDim_PlanarDimension",
                            header: "DrawDim_PlanarDimension.hxx", bycopy.} = object of DrawDim_Dimension


proc SetPlane*(this: var DrawDim_PlanarDimension; plane: TopoDS_Face) {.
    importcpp: "SetPlane", header: "DrawDim_PlanarDimension.hxx".}
proc GetPlane*(this: DrawDim_PlanarDimension): TopoDS_Face {.noSideEffect,
    importcpp: "GetPlane", header: "DrawDim_PlanarDimension.hxx".}
type
  DrawDim_PlanarDimensionbase_type* = DrawDim_Dimension

proc get_type_name*(): cstring {.importcpp: "DrawDim_PlanarDimension::get_type_name(@)",
                              header: "DrawDim_PlanarDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawDim_PlanarDimension::get_type_descriptor(@)",
    header: "DrawDim_PlanarDimension.hxx".}
proc DynamicType*(this: DrawDim_PlanarDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawDim_PlanarDimension.hxx".}