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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  DrawDim_Dimension

discard "forward decl of TopoDS_Face"
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_Distance"
discard "forward decl of DrawDim_Distance"
type
  Handle_DrawDim_Distance* = handle[DrawDim_Distance]
  DrawDim_Distance* {.importcpp: "DrawDim_Distance",
                     header: "DrawDim_Distance.hxx", bycopy.} = object of DrawDim_Dimension


proc constructDrawDim_Distance*(plane1: TopoDS_Face; plane2: TopoDS_Face): DrawDim_Distance {.
    constructor, importcpp: "DrawDim_Distance(@)", header: "DrawDim_Distance.hxx".}
proc constructDrawDim_Distance*(plane1: TopoDS_Face): DrawDim_Distance {.
    constructor, importcpp: "DrawDim_Distance(@)", header: "DrawDim_Distance.hxx".}
proc Plane1*(this: DrawDim_Distance): TopoDS_Face {.noSideEffect,
    importcpp: "Plane1", header: "DrawDim_Distance.hxx".}
proc Plane1*(this: var DrawDim_Distance; face: TopoDS_Face) {.importcpp: "Plane1",
    header: "DrawDim_Distance.hxx".}
proc Plane2*(this: DrawDim_Distance): TopoDS_Face {.noSideEffect,
    importcpp: "Plane2", header: "DrawDim_Distance.hxx".}
proc Plane2*(this: var DrawDim_Distance; face: TopoDS_Face) {.importcpp: "Plane2",
    header: "DrawDim_Distance.hxx".}
proc DrawOn*(this: DrawDim_Distance; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_Distance.hxx".}
type
  DrawDim_Distancebase_type* = DrawDim_Dimension

proc get_type_name*(): cstring {.importcpp: "DrawDim_Distance::get_type_name(@)",
                              header: "DrawDim_Distance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawDim_Distance::get_type_descriptor(@)",
    header: "DrawDim_Distance.hxx".}
proc DynamicType*(this: DrawDim_Distance): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_Distance.hxx".}