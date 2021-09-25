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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Draw_Display"
discard "forward decl of DrawDim_PlanarAngle"
discard "forward decl of DrawDim_PlanarAngle"
type
  HandleDrawDimPlanarAngle* = Handle[DrawDimPlanarAngle]
  DrawDimPlanarAngle* {.importcpp: "DrawDim_PlanarAngle",
                       header: "DrawDim_PlanarAngle.hxx", bycopy.} = object of DrawDimPlanarDimension


proc constructDrawDimPlanarAngle*(plane: TopoDS_Face; line1: TopoDS_Shape;
                                 line2: TopoDS_Shape): DrawDimPlanarAngle {.
    constructor, importcpp: "DrawDim_PlanarAngle(@)",
    header: "DrawDim_PlanarAngle.hxx".}
proc constructDrawDimPlanarAngle*(line1: TopoDS_Shape; line2: TopoDS_Shape): DrawDimPlanarAngle {.
    constructor, importcpp: "DrawDim_PlanarAngle(@)",
    header: "DrawDim_PlanarAngle.hxx".}
proc sector*(this: var DrawDimPlanarAngle; inverted: bool; reversed: bool) {.
    importcpp: "Sector", header: "DrawDim_PlanarAngle.hxx".}
proc position*(this: var DrawDimPlanarAngle; value: float) {.importcpp: "Position",
    header: "DrawDim_PlanarAngle.hxx".}
proc drawOn*(this: DrawDimPlanarAngle; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_PlanarAngle.hxx".}
type
  DrawDimPlanarAnglebaseType* = DrawDimPlanarDimension

proc getTypeName*(): cstring {.importcpp: "DrawDim_PlanarAngle::get_type_name(@)",
                            header: "DrawDim_PlanarAngle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawDim_PlanarAngle::get_type_descriptor(@)",
    header: "DrawDim_PlanarAngle.hxx".}
proc dynamicType*(this: DrawDimPlanarAngle): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_PlanarAngle.hxx".}
