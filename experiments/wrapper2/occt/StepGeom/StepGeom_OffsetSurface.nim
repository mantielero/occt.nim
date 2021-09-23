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
  ../StepData/StepData_Logical, StepGeom_Surface

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_OffsetSurface"
discard "forward decl of StepGeom_OffsetSurface"
type
  Handle_StepGeom_OffsetSurface* = handle[StepGeom_OffsetSurface]
  StepGeom_OffsetSurface* {.importcpp: "StepGeom_OffsetSurface",
                           header: "StepGeom_OffsetSurface.hxx", bycopy.} = object of StepGeom_Surface ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## OffsetSurface


proc constructStepGeom_OffsetSurface*(): StepGeom_OffsetSurface {.constructor,
    importcpp: "StepGeom_OffsetSurface(@)", header: "StepGeom_OffsetSurface.hxx".}
proc Init*(this: var StepGeom_OffsetSurface;
          aName: handle[TCollection_HAsciiString];
          aBasisSurface: handle[StepGeom_Surface]; aDistance: Standard_Real;
          aSelfIntersect: StepData_Logical) {.importcpp: "Init",
    header: "StepGeom_OffsetSurface.hxx".}
proc SetBasisSurface*(this: var StepGeom_OffsetSurface;
                     aBasisSurface: handle[StepGeom_Surface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_OffsetSurface.hxx".}
proc BasisSurface*(this: StepGeom_OffsetSurface): handle[StepGeom_Surface] {.
    noSideEffect, importcpp: "BasisSurface", header: "StepGeom_OffsetSurface.hxx".}
proc SetDistance*(this: var StepGeom_OffsetSurface; aDistance: Standard_Real) {.
    importcpp: "SetDistance", header: "StepGeom_OffsetSurface.hxx".}
proc Distance*(this: StepGeom_OffsetSurface): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "StepGeom_OffsetSurface.hxx".}
proc SetSelfIntersect*(this: var StepGeom_OffsetSurface;
                      aSelfIntersect: StepData_Logical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_OffsetSurface.hxx".}
proc SelfIntersect*(this: StepGeom_OffsetSurface): StepData_Logical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_OffsetSurface.hxx".}
type
  StepGeom_OffsetSurfacebase_type* = StepGeom_Surface

proc get_type_name*(): cstring {.importcpp: "StepGeom_OffsetSurface::get_type_name(@)",
                              header: "StepGeom_OffsetSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_OffsetSurface::get_type_descriptor(@)",
    header: "StepGeom_OffsetSurface.hxx".}
proc DynamicType*(this: StepGeom_OffsetSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_OffsetSurface.hxx".}