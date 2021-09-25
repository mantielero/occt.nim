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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepGeom_SphericalSurface"
discard "forward decl of StepGeom_SphericalSurface"
type
  HandleStepGeomSphericalSurface* = Handle[StepGeomSphericalSurface]
  StepGeomSphericalSurface* {.importcpp: "StepGeom_SphericalSurface",
                             header: "StepGeom_SphericalSurface.hxx", bycopy.} = object of StepGeomElementarySurface ##
                                                                                                              ## !
                                                                                                              ## Returns
                                                                                                              ## a
                                                                                                              ## SphericalSurface


proc constructStepGeomSphericalSurface*(): StepGeomSphericalSurface {.constructor,
    importcpp: "StepGeom_SphericalSurface(@)",
    header: "StepGeom_SphericalSurface.hxx".}
proc init*(this: var StepGeomSphericalSurface;
          aName: Handle[TCollectionHAsciiString];
          aPosition: Handle[StepGeomAxis2Placement3d]; aRadius: float) {.
    importcpp: "Init", header: "StepGeom_SphericalSurface.hxx".}
proc setRadius*(this: var StepGeomSphericalSurface; aRadius: float) {.
    importcpp: "SetRadius", header: "StepGeom_SphericalSurface.hxx".}
proc radius*(this: StepGeomSphericalSurface): float {.noSideEffect,
    importcpp: "Radius", header: "StepGeom_SphericalSurface.hxx".}
type
  StepGeomSphericalSurfacebaseType* = StepGeomElementarySurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_SphericalSurface::get_type_name(@)",
                            header: "StepGeom_SphericalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_SphericalSurface::get_type_descriptor(@)",
    header: "StepGeom_SphericalSurface.hxx".}
proc dynamicType*(this: StepGeomSphericalSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_SphericalSurface.hxx".}
