##  Created on: 1996-05-28
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
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_Angle"
discard "forward decl of DrawDim_Angle"
type
  Handle_DrawDim_Angle* = handle[DrawDim_Angle]
  DrawDim_Angle* {.importcpp: "DrawDim_Angle", header: "DrawDim_Angle.hxx", bycopy.} = object of DrawDim_Dimension


proc constructDrawDim_Angle*(plane1: TopoDS_Face; plane2: TopoDS_Face): DrawDim_Angle {.
    constructor, importcpp: "DrawDim_Angle(@)", header: "DrawDim_Angle.hxx".}
proc Plane1*(this: DrawDim_Angle): TopoDS_Face {.noSideEffect, importcpp: "Plane1",
    header: "DrawDim_Angle.hxx".}
proc Plane1*(this: var DrawDim_Angle; plane: TopoDS_Face) {.importcpp: "Plane1",
    header: "DrawDim_Angle.hxx".}
proc Plane2*(this: DrawDim_Angle): TopoDS_Face {.noSideEffect, importcpp: "Plane2",
    header: "DrawDim_Angle.hxx".}
proc Plane2*(this: var DrawDim_Angle; plane: TopoDS_Face) {.importcpp: "Plane2",
    header: "DrawDim_Angle.hxx".}
proc DrawOn*(this: DrawDim_Angle; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_Angle.hxx".}
type
  DrawDim_Anglebase_type* = DrawDim_Dimension

proc get_type_name*(): cstring {.importcpp: "DrawDim_Angle::get_type_name(@)",
                              header: "DrawDim_Angle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawDim_Angle::get_type_descriptor(@)",
    header: "DrawDim_Angle.hxx".}
proc DynamicType*(this: DrawDim_Angle): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_Angle.hxx".}