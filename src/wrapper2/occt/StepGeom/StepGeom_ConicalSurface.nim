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
discard "forward decl of StepGeom_ConicalSurface"
discard "forward decl of StepGeom_ConicalSurface"
type
  Handle_StepGeom_ConicalSurface* = handle[StepGeom_ConicalSurface]
  StepGeom_ConicalSurface* {.importcpp: "StepGeom_ConicalSurface",
                            header: "StepGeom_ConicalSurface.hxx", bycopy.} = object of StepGeom_ElementarySurface ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## ConicalSurface


proc constructStepGeom_ConicalSurface*(): StepGeom_ConicalSurface {.constructor,
    importcpp: "StepGeom_ConicalSurface(@)", header: "StepGeom_ConicalSurface.hxx".}
proc Init*(this: var StepGeom_ConicalSurface;
          aName: handle[TCollection_HAsciiString];
          aPosition: handle[StepGeom_Axis2Placement3d]; aRadius: Standard_Real;
          aSemiAngle: Standard_Real) {.importcpp: "Init",
                                     header: "StepGeom_ConicalSurface.hxx".}
proc SetRadius*(this: var StepGeom_ConicalSurface; aRadius: Standard_Real) {.
    importcpp: "SetRadius", header: "StepGeom_ConicalSurface.hxx".}
proc Radius*(this: StepGeom_ConicalSurface): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "StepGeom_ConicalSurface.hxx".}
proc SetSemiAngle*(this: var StepGeom_ConicalSurface; aSemiAngle: Standard_Real) {.
    importcpp: "SetSemiAngle", header: "StepGeom_ConicalSurface.hxx".}
proc SemiAngle*(this: StepGeom_ConicalSurface): Standard_Real {.noSideEffect,
    importcpp: "SemiAngle", header: "StepGeom_ConicalSurface.hxx".}
type
  StepGeom_ConicalSurfacebase_type* = StepGeom_ElementarySurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_ConicalSurface::get_type_name(@)",
                              header: "StepGeom_ConicalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_ConicalSurface::get_type_descriptor(@)",
    header: "StepGeom_ConicalSurface.hxx".}
proc DynamicType*(this: StepGeom_ConicalSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_ConicalSurface.hxx".}