##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepGeom_CompositeCurveOnSurface"
discard "forward decl of StepGeom_CompositeCurveOnSurface"
type
  HandleStepGeomCompositeCurveOnSurface* = Handle[StepGeomCompositeCurveOnSurface]
  StepGeomCompositeCurveOnSurface* {.importcpp: "StepGeom_CompositeCurveOnSurface", header: "StepGeom_CompositeCurveOnSurface.hxx",
                                    bycopy.} = object of StepGeomCompositeCurve ## !
                                                                           ## Returns a
                                                                           ## CompositeCurveOnSurface


proc constructStepGeomCompositeCurveOnSurface*(): StepGeomCompositeCurveOnSurface {.
    constructor, importcpp: "StepGeom_CompositeCurveOnSurface(@)",
    header: "StepGeom_CompositeCurveOnSurface.hxx".}
type
  StepGeomCompositeCurveOnSurfacebaseType* = StepGeomCompositeCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_CompositeCurveOnSurface::get_type_name(@)",
                            header: "StepGeom_CompositeCurveOnSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_CompositeCurveOnSurface::get_type_descriptor(@)",
    header: "StepGeom_CompositeCurveOnSurface.hxx".}
proc dynamicType*(this: StepGeomCompositeCurveOnSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_CompositeCurveOnSurface.hxx".}
