##  Created on: 1999-05-21
##  Created by: Pavel DURANDIN
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ShapeUpgrade_SplitSurface

discard "forward decl of ShapeExtend_CompositeSurface"
discard "forward decl of ShapeUpgrade_ConvertSurfaceToBezierBasis"
discard "forward decl of ShapeUpgrade_ConvertSurfaceToBezierBasis"
type
  Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis* = handle[
      ShapeUpgrade_ConvertSurfaceToBezierBasis]

## ! Converts a plane, bspline surface, surface of revolution, surface
## ! of extrusion, offset surface to grid of bezier basis surface (
## ! bezier surface,
## ! surface of revolution based on bezier curve,
## ! offset surface based on any previous type).

type
  ShapeUpgrade_ConvertSurfaceToBezierBasis* {.
      importcpp: "ShapeUpgrade_ConvertSurfaceToBezierBasis",
      header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx", bycopy.} = object of ShapeUpgrade_SplitSurface ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor.


proc constructShapeUpgrade_ConvertSurfaceToBezierBasis*(): ShapeUpgrade_ConvertSurfaceToBezierBasis {.
    constructor, importcpp: "ShapeUpgrade_ConvertSurfaceToBezierBasis(@)",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc Build*(this: var ShapeUpgrade_ConvertSurfaceToBezierBasis;
           Segment: Standard_Boolean) {.importcpp: "Build", header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc Compute*(this: var ShapeUpgrade_ConvertSurfaceToBezierBasis;
             Segment: Standard_Boolean) {.importcpp: "Compute", header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc Segments*(this: ShapeUpgrade_ConvertSurfaceToBezierBasis): handle[
    ShapeExtend_CompositeSurface] {.noSideEffect, importcpp: "Segments", header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc SetPlaneMode*(this: var ShapeUpgrade_ConvertSurfaceToBezierBasis;
                  mode: Standard_Boolean) {.importcpp: "SetPlaneMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc GetPlaneMode*(this: ShapeUpgrade_ConvertSurfaceToBezierBasis): Standard_Boolean {.
    noSideEffect, importcpp: "GetPlaneMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc SetRevolutionMode*(this: var ShapeUpgrade_ConvertSurfaceToBezierBasis;
                       mode: Standard_Boolean) {.importcpp: "SetRevolutionMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc GetRevolutionMode*(this: ShapeUpgrade_ConvertSurfaceToBezierBasis): Standard_Boolean {.
    noSideEffect, importcpp: "GetRevolutionMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc SetExtrusionMode*(this: var ShapeUpgrade_ConvertSurfaceToBezierBasis;
                      mode: Standard_Boolean) {.importcpp: "SetExtrusionMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc GetExtrusionMode*(this: ShapeUpgrade_ConvertSurfaceToBezierBasis): Standard_Boolean {.
    noSideEffect, importcpp: "GetExtrusionMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc SetBSplineMode*(this: var ShapeUpgrade_ConvertSurfaceToBezierBasis;
                    mode: Standard_Boolean) {.importcpp: "SetBSplineMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc GetBSplineMode*(this: ShapeUpgrade_ConvertSurfaceToBezierBasis): Standard_Boolean {.
    noSideEffect, importcpp: "GetBSplineMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
type
  ShapeUpgrade_ConvertSurfaceToBezierBasisbase_type* = ShapeUpgrade_SplitSurface

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_ConvertSurfaceToBezierBasis::get_type_name(@)", header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "ShapeUpgrade_ConvertSurfaceToBezierBasis::get_type_descriptor(@)",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc DynamicType*(this: ShapeUpgrade_ConvertSurfaceToBezierBasis): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}