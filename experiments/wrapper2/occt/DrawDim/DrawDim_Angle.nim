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

discard "forward decl of TopoDS_Face"
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_Angle"
discard "forward decl of DrawDim_Angle"
type
  HandleC1C1* = Handle[DrawDimAngle]
  DrawDimAngle* {.importcpp: "DrawDim_Angle", header: "DrawDim_Angle.hxx", bycopy.} = object of DrawDimDimension


proc constructDrawDimAngle*(plane1: TopoDS_Face; plane2: TopoDS_Face): DrawDimAngle {.
    constructor, importcpp: "DrawDim_Angle(@)", header: "DrawDim_Angle.hxx".}
proc plane1*(this: DrawDimAngle): TopoDS_Face {.noSideEffect, importcpp: "Plane1",
    header: "DrawDim_Angle.hxx".}
proc plane1*(this: var DrawDimAngle; plane: TopoDS_Face) {.importcpp: "Plane1",
    header: "DrawDim_Angle.hxx".}
proc plane2*(this: DrawDimAngle): TopoDS_Face {.noSideEffect, importcpp: "Plane2",
    header: "DrawDim_Angle.hxx".}
proc plane2*(this: var DrawDimAngle; plane: TopoDS_Face) {.importcpp: "Plane2",
    header: "DrawDim_Angle.hxx".}
proc drawOn*(this: DrawDimAngle; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_Angle.hxx".}
type
  DrawDimAnglebaseType* = DrawDimDimension

proc getTypeName*(): cstring {.importcpp: "DrawDim_Angle::get_type_name(@)",
                            header: "DrawDim_Angle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawDim_Angle::get_type_descriptor(@)",
    header: "DrawDim_Angle.hxx".}
proc dynamicType*(this: DrawDimAngle): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_Angle.hxx".}

























