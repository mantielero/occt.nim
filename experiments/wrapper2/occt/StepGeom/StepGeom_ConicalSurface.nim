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
discard "forward decl of StepGeom_ConicalSurface"
discard "forward decl of StepGeom_ConicalSurface"
type
  HandleStepGeomConicalSurface* = Handle[StepGeomConicalSurface]
  StepGeomConicalSurface* {.importcpp: "StepGeom_ConicalSurface",
                           header: "StepGeom_ConicalSurface.hxx", bycopy.} = object of StepGeomElementarySurface ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## ConicalSurface


proc constructStepGeomConicalSurface*(): StepGeomConicalSurface {.constructor,
    importcpp: "StepGeom_ConicalSurface(@)", header: "StepGeom_ConicalSurface.hxx".}
proc init*(this: var StepGeomConicalSurface; aName: Handle[TCollectionHAsciiString];
          aPosition: Handle[StepGeomAxis2Placement3d]; aRadius: float;
          aSemiAngle: float) {.importcpp: "Init",
                             header: "StepGeom_ConicalSurface.hxx".}
proc setRadius*(this: var StepGeomConicalSurface; aRadius: float) {.
    importcpp: "SetRadius", header: "StepGeom_ConicalSurface.hxx".}
proc radius*(this: StepGeomConicalSurface): float {.noSideEffect,
    importcpp: "Radius", header: "StepGeom_ConicalSurface.hxx".}
proc setSemiAngle*(this: var StepGeomConicalSurface; aSemiAngle: float) {.
    importcpp: "SetSemiAngle", header: "StepGeom_ConicalSurface.hxx".}
proc semiAngle*(this: StepGeomConicalSurface): float {.noSideEffect,
    importcpp: "SemiAngle", header: "StepGeom_ConicalSurface.hxx".}
type
  StepGeomConicalSurfacebaseType* = StepGeomElementarySurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_ConicalSurface::get_type_name(@)",
                            header: "StepGeom_ConicalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_ConicalSurface::get_type_descriptor(@)",
    header: "StepGeom_ConicalSurface.hxx".}
proc dynamicType*(this: StepGeomConicalSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_ConicalSurface.hxx".}
