##  Created on: 1996-01-12
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  DrawDim_PlanarDimension

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_PlanarRadius"
discard "forward decl of DrawDim_PlanarRadius"
type
  Handle_DrawDim_PlanarRadius* = handle[DrawDim_PlanarRadius]
  DrawDim_PlanarRadius* {.importcpp: "DrawDim_PlanarRadius",
                         header: "DrawDim_PlanarRadius.hxx", bycopy.} = object of DrawDim_PlanarDimension


proc constructDrawDim_PlanarRadius*(plane: TopoDS_Face; circle: TopoDS_Shape): DrawDim_PlanarRadius {.
    constructor, importcpp: "DrawDim_PlanarRadius(@)",
    header: "DrawDim_PlanarRadius.hxx".}
proc constructDrawDim_PlanarRadius*(circle: TopoDS_Shape): DrawDim_PlanarRadius {.
    constructor, importcpp: "DrawDim_PlanarRadius(@)",
    header: "DrawDim_PlanarRadius.hxx".}
proc DrawOn*(this: DrawDim_PlanarRadius; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_PlanarRadius.hxx".}
type
  DrawDim_PlanarRadiusbase_type* = DrawDim_PlanarDimension

proc get_type_name*(): cstring {.importcpp: "DrawDim_PlanarRadius::get_type_name(@)",
                              header: "DrawDim_PlanarRadius.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawDim_PlanarRadius::get_type_descriptor(@)",
    header: "DrawDim_PlanarRadius.hxx".}
proc DynamicType*(this: DrawDim_PlanarRadius): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_PlanarRadius.hxx".}