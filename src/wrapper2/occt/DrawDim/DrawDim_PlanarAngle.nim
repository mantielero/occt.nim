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
  ../Standard/Standard_Boolean, ../Standard/Standard_Real, DrawDim_PlanarDimension

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_PlanarAngle"
discard "forward decl of DrawDim_PlanarAngle"
type
  Handle_DrawDim_PlanarAngle* = handle[DrawDim_PlanarAngle]
  DrawDim_PlanarAngle* {.importcpp: "DrawDim_PlanarAngle",
                        header: "DrawDim_PlanarAngle.hxx", bycopy.} = object of DrawDim_PlanarDimension


proc constructDrawDim_PlanarAngle*(plane: TopoDS_Face; line1: TopoDS_Shape;
                                  line2: TopoDS_Shape): DrawDim_PlanarAngle {.
    constructor, importcpp: "DrawDim_PlanarAngle(@)",
    header: "DrawDim_PlanarAngle.hxx".}
proc constructDrawDim_PlanarAngle*(line1: TopoDS_Shape; line2: TopoDS_Shape): DrawDim_PlanarAngle {.
    constructor, importcpp: "DrawDim_PlanarAngle(@)",
    header: "DrawDim_PlanarAngle.hxx".}
proc Sector*(this: var DrawDim_PlanarAngle; inverted: Standard_Boolean;
            reversed: Standard_Boolean) {.importcpp: "Sector",
                                        header: "DrawDim_PlanarAngle.hxx".}
proc Position*(this: var DrawDim_PlanarAngle; value: Standard_Real) {.
    importcpp: "Position", header: "DrawDim_PlanarAngle.hxx".}
proc DrawOn*(this: DrawDim_PlanarAngle; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_PlanarAngle.hxx".}
type
  DrawDim_PlanarAnglebase_type* = DrawDim_PlanarDimension

proc get_type_name*(): cstring {.importcpp: "DrawDim_PlanarAngle::get_type_name(@)",
                              header: "DrawDim_PlanarAngle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawDim_PlanarAngle::get_type_descriptor(@)",
    header: "DrawDim_PlanarAngle.hxx".}
proc DynamicType*(this: DrawDim_PlanarAngle): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_PlanarAngle.hxx".}