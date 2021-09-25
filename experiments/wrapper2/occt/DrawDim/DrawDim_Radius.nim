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

discard "forward decl of TopoDS_Face"
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_Radius"
discard "forward decl of DrawDim_Radius"
type
  HandleDrawDimRadius* = Handle[DrawDimRadius]
  DrawDimRadius* {.importcpp: "DrawDim_Radius", header: "DrawDim_Radius.hxx", bycopy.} = object of DrawDimDimension


proc constructDrawDimRadius*(cylinder: TopoDS_Face): DrawDimRadius {.constructor,
    importcpp: "DrawDim_Radius(@)", header: "DrawDim_Radius.hxx".}
proc cylinder*(this: DrawDimRadius): TopoDS_Face {.noSideEffect,
    importcpp: "Cylinder", header: "DrawDim_Radius.hxx".}
proc cylinder*(this: var DrawDimRadius; face: TopoDS_Face) {.importcpp: "Cylinder",
    header: "DrawDim_Radius.hxx".}
proc drawOn*(this: DrawDimRadius; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_Radius.hxx".}
type
  DrawDimRadiusbaseType* = DrawDimDimension

proc getTypeName*(): cstring {.importcpp: "DrawDim_Radius::get_type_name(@)",
                            header: "DrawDim_Radius.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawDim_Radius::get_type_descriptor(@)",
    header: "DrawDim_Radius.hxx".}
proc dynamicType*(this: DrawDimRadius): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_Radius.hxx".}
