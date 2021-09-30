##  Created on: 1999-02-15
##  Created by: Andrey BETENEV
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

discard "forward decl of StepGeom_BoundedCurve"
discard "forward decl of StepGeom_SurfaceCurveAndBoundedCurve"
discard "forward decl of StepGeom_SurfaceCurveAndBoundedCurve"
type
  HandleC1C1* = Handle[StepGeomSurfaceCurveAndBoundedCurve]

## ! complex type: bounded_curve + surface_curve
## ! needed for curve_bounded_surfaces (S4132)

type
  StepGeomSurfaceCurveAndBoundedCurve* {.importcpp: "StepGeom_SurfaceCurveAndBoundedCurve", header: "StepGeom_SurfaceCurveAndBoundedCurve.hxx",
                                        bycopy.} = object of StepGeomSurfaceCurve ## !
                                                                             ## creates
                                                                             ## empty
                                                                             ## object


proc constructStepGeomSurfaceCurveAndBoundedCurve*(): StepGeomSurfaceCurveAndBoundedCurve {.
    constructor, importcpp: "StepGeom_SurfaceCurveAndBoundedCurve(@)",
    header: "StepGeom_SurfaceCurveAndBoundedCurve.hxx".}
proc boundedCurve*(this: var StepGeomSurfaceCurveAndBoundedCurve): var Handle[
    StepGeomBoundedCurve] {.importcpp: "BoundedCurve",
                           header: "StepGeom_SurfaceCurveAndBoundedCurve.hxx".}
type
  StepGeomSurfaceCurveAndBoundedCurvebaseType* = StepGeomSurfaceCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_SurfaceCurveAndBoundedCurve::get_type_name(@)",
                            header: "StepGeom_SurfaceCurveAndBoundedCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_SurfaceCurveAndBoundedCurve::get_type_descriptor(@)",
    header: "StepGeom_SurfaceCurveAndBoundedCurve.hxx".}
proc dynamicType*(this: StepGeomSurfaceCurveAndBoundedCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_SurfaceCurveAndBoundedCurve.hxx".}

























