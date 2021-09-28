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
discard "forward decl of DrawDim_Distance"
discard "forward decl of DrawDim_Distance"
type
  HandleC1C1* = Handle[DrawDimDistance]
  DrawDimDistance* {.importcpp: "DrawDim_Distance", header: "DrawDim_Distance.hxx",
                    bycopy.} = object of DrawDimDimension


proc constructDrawDimDistance*(plane1: TopoDS_Face; plane2: TopoDS_Face): DrawDimDistance {.
    constructor, importcpp: "DrawDim_Distance(@)", header: "DrawDim_Distance.hxx".}
proc constructDrawDimDistance*(plane1: TopoDS_Face): DrawDimDistance {.constructor,
    importcpp: "DrawDim_Distance(@)", header: "DrawDim_Distance.hxx".}
proc plane1*(this: DrawDimDistance): TopoDS_Face {.noSideEffect, importcpp: "Plane1",
    header: "DrawDim_Distance.hxx".}
proc plane1*(this: var DrawDimDistance; face: TopoDS_Face) {.importcpp: "Plane1",
    header: "DrawDim_Distance.hxx".}
proc plane2*(this: DrawDimDistance): TopoDS_Face {.noSideEffect, importcpp: "Plane2",
    header: "DrawDim_Distance.hxx".}
proc plane2*(this: var DrawDimDistance; face: TopoDS_Face) {.importcpp: "Plane2",
    header: "DrawDim_Distance.hxx".}
proc drawOn*(this: DrawDimDistance; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_Distance.hxx".}
type
  DrawDimDistancebaseType* = DrawDimDimension

proc getTypeName*(): cstring {.importcpp: "DrawDim_Distance::get_type_name(@)",
                            header: "DrawDim_Distance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawDim_Distance::get_type_descriptor(@)",
    header: "DrawDim_Distance.hxx".}
proc dynamicType*(this: DrawDimDistance): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_Distance.hxx".}

























