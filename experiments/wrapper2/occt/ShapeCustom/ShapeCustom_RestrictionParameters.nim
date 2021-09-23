##  Created on: 2000-05-22
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient

discard "forward decl of ShapeCustom_RestrictionParameters"
discard "forward decl of ShapeCustom_RestrictionParameters"
type
  Handle_ShapeCustom_RestrictionParameters* = handle[
      ShapeCustom_RestrictionParameters]

## ! This class is axuluary tool which contains parameters for
## ! BSplineRestriction class.

type
  ShapeCustom_RestrictionParameters* {.importcpp: "ShapeCustom_RestrictionParameters", header: "ShapeCustom_RestrictionParameters.hxx",
                                      bycopy.} = object of Standard_Transient ## ! Sets default
                                                                         ## parameters.


proc constructShapeCustom_RestrictionParameters*(): ShapeCustom_RestrictionParameters {.
    constructor, importcpp: "ShapeCustom_RestrictionParameters(@)",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc GMaxDegree*(this: var ShapeCustom_RestrictionParameters): var Standard_Integer {.
    importcpp: "GMaxDegree", header: "ShapeCustom_RestrictionParameters.hxx".}
proc GMaxSeg*(this: var ShapeCustom_RestrictionParameters): var Standard_Integer {.
    importcpp: "GMaxSeg", header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertPlane*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertPlane", header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertBezierSurf*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertBezierSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertRevolutionSurf*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertRevolutionSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertExtrusionSurf*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertExtrusionSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertOffsetSurf*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertOffsetSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertCylindricalSurf*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertCylindricalSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertConicalSurf*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertConicalSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertToroidalSurf*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertToroidalSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertSphericalSurf*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertSphericalSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc SegmentSurfaceMode*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "SegmentSurfaceMode",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertCurve3d*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertCurve3d", header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertOffsetCurv3d*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertOffsetCurv3d",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertCurve2d*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertCurve2d", header: "ShapeCustom_RestrictionParameters.hxx".}
proc ConvertOffsetCurv2d*(this: var ShapeCustom_RestrictionParameters): var Standard_Boolean {.
    importcpp: "ConvertOffsetCurv2d",
    header: "ShapeCustom_RestrictionParameters.hxx".}
type
  ShapeCustom_RestrictionParametersbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeCustom_RestrictionParameters::get_type_name(@)",
                              header: "ShapeCustom_RestrictionParameters.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeCustom_RestrictionParameters::get_type_descriptor(@)",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc DynamicType*(this: ShapeCustom_RestrictionParameters): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_RestrictionParameters.hxx".}