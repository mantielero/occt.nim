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

discard "forward decl of ShapeExtend_CompositeSurface"
discard "forward decl of ShapeUpgrade_ConvertSurfaceToBezierBasis"
discard "forward decl of ShapeUpgrade_ConvertSurfaceToBezierBasis"
type
  HandleShapeUpgradeConvertSurfaceToBezierBasis* = Handle[
      ShapeUpgradeConvertSurfaceToBezierBasis]

## ! Converts a plane, bspline surface, surface of revolution, surface
## ! of extrusion, offset surface to grid of bezier basis surface (
## ! bezier surface,
## ! surface of revolution based on bezier curve,
## ! offset surface based on any previous type).

type
  ShapeUpgradeConvertSurfaceToBezierBasis* {.
      importcpp: "ShapeUpgrade_ConvertSurfaceToBezierBasis",
      header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx", bycopy.} = object of ShapeUpgradeSplitSurface ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor.


proc constructShapeUpgradeConvertSurfaceToBezierBasis*(): ShapeUpgradeConvertSurfaceToBezierBasis {.
    constructor, importcpp: "ShapeUpgrade_ConvertSurfaceToBezierBasis(@)",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc build*(this: var ShapeUpgradeConvertSurfaceToBezierBasis; segment: bool) {.
    importcpp: "Build", header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc compute*(this: var ShapeUpgradeConvertSurfaceToBezierBasis; segment: bool) {.
    importcpp: "Compute", header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc segments*(this: ShapeUpgradeConvertSurfaceToBezierBasis): Handle[
    ShapeExtendCompositeSurface] {.noSideEffect, importcpp: "Segments", header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc setPlaneMode*(this: var ShapeUpgradeConvertSurfaceToBezierBasis; mode: bool) {.
    importcpp: "SetPlaneMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc getPlaneMode*(this: ShapeUpgradeConvertSurfaceToBezierBasis): bool {.
    noSideEffect, importcpp: "GetPlaneMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc setRevolutionMode*(this: var ShapeUpgradeConvertSurfaceToBezierBasis;
                       mode: bool) {.importcpp: "SetRevolutionMode", header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc getRevolutionMode*(this: ShapeUpgradeConvertSurfaceToBezierBasis): bool {.
    noSideEffect, importcpp: "GetRevolutionMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc setExtrusionMode*(this: var ShapeUpgradeConvertSurfaceToBezierBasis; mode: bool) {.
    importcpp: "SetExtrusionMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc getExtrusionMode*(this: ShapeUpgradeConvertSurfaceToBezierBasis): bool {.
    noSideEffect, importcpp: "GetExtrusionMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc setBSplineMode*(this: var ShapeUpgradeConvertSurfaceToBezierBasis; mode: bool) {.
    importcpp: "SetBSplineMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc getBSplineMode*(this: ShapeUpgradeConvertSurfaceToBezierBasis): bool {.
    noSideEffect, importcpp: "GetBSplineMode",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
type
  ShapeUpgradeConvertSurfaceToBezierBasisbaseType* = ShapeUpgradeSplitSurface

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_ConvertSurfaceToBezierBasis::get_type_name(@)", header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "ShapeUpgrade_ConvertSurfaceToBezierBasis::get_type_descriptor(@)",
    header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
proc dynamicType*(this: ShapeUpgradeConvertSurfaceToBezierBasis): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "ShapeUpgrade_ConvertSurfaceToBezierBasis.hxx".}
