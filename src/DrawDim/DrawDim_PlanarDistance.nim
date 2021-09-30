##  Created on: 1996-01-10
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
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
discard "forward decl of DrawDim_PlanarDistance"
discard "forward decl of DrawDim_PlanarDistance"
type
  HandleC1C1* = Handle[DrawDimPlanarDistance]

## ! PlanarDistance point/point
## ! PlanarDistance point/line
## ! PlanarDistance line/line

type
  DrawDimPlanarDistance* {.importcpp: "DrawDim_PlanarDistance",
                          header: "DrawDim_PlanarDistance.hxx", bycopy.} = object of DrawDimPlanarDimension


proc constructDrawDimPlanarDistance*(plane: TopoDS_Face; point1: TopoDS_Shape;
                                    point2: TopoDS_Shape): DrawDimPlanarDistance {.
    constructor, importcpp: "DrawDim_PlanarDistance(@)",
    header: "DrawDim_PlanarDistance.hxx".}
proc constructDrawDimPlanarDistance*(geom1: TopoDS_Shape; geom2: TopoDS_Shape): DrawDimPlanarDistance {.
    constructor, importcpp: "DrawDim_PlanarDistance(@)",
    header: "DrawDim_PlanarDistance.hxx".}
proc drawOn*(this: DrawDimPlanarDistance; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawDim_PlanarDistance.hxx".}
type
  DrawDimPlanarDistancebaseType* = DrawDimPlanarDimension

proc getTypeName*(): cstring {.importcpp: "DrawDim_PlanarDistance::get_type_name(@)",
                            header: "DrawDim_PlanarDistance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawDim_PlanarDistance::get_type_descriptor(@)",
    header: "DrawDim_PlanarDistance.hxx".}
proc dynamicType*(this: DrawDimPlanarDistance): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawDim_PlanarDistance.hxx".}

























