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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepGeom_ElementarySurface

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepGeom_SphericalSurface"
discard "forward decl of StepGeom_SphericalSurface"
type
  Handle_StepGeom_SphericalSurface* = handle[StepGeom_SphericalSurface]
  StepGeom_SphericalSurface* {.importcpp: "StepGeom_SphericalSurface",
                              header: "StepGeom_SphericalSurface.hxx", bycopy.} = object of StepGeom_ElementarySurface ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## SphericalSurface


proc constructStepGeom_SphericalSurface*(): StepGeom_SphericalSurface {.
    constructor, importcpp: "StepGeom_SphericalSurface(@)",
    header: "StepGeom_SphericalSurface.hxx".}
proc Init*(this: var StepGeom_SphericalSurface;
          aName: handle[TCollection_HAsciiString];
          aPosition: handle[StepGeom_Axis2Placement3d]; aRadius: Standard_Real) {.
    importcpp: "Init", header: "StepGeom_SphericalSurface.hxx".}
proc SetRadius*(this: var StepGeom_SphericalSurface; aRadius: Standard_Real) {.
    importcpp: "SetRadius", header: "StepGeom_SphericalSurface.hxx".}
proc Radius*(this: StepGeom_SphericalSurface): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "StepGeom_SphericalSurface.hxx".}
type
  StepGeom_SphericalSurfacebase_type* = StepGeom_ElementarySurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_SphericalSurface::get_type_name(@)",
                              header: "StepGeom_SphericalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_SphericalSurface::get_type_descriptor(@)",
    header: "StepGeom_SphericalSurface.hxx".}
proc DynamicType*(this: StepGeom_SphericalSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_SphericalSurface.hxx".}