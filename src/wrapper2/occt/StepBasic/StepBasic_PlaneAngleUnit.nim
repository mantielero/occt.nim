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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_NamedUnit

discard "forward decl of StepBasic_PlaneAngleUnit"
discard "forward decl of StepBasic_PlaneAngleUnit"
type
  Handle_StepBasic_PlaneAngleUnit* = handle[StepBasic_PlaneAngleUnit]
  StepBasic_PlaneAngleUnit* {.importcpp: "StepBasic_PlaneAngleUnit",
                             header: "StepBasic_PlaneAngleUnit.hxx", bycopy.} = object of StepBasic_NamedUnit ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## PlaneAngleUnit


proc constructStepBasic_PlaneAngleUnit*(): StepBasic_PlaneAngleUnit {.constructor,
    importcpp: "StepBasic_PlaneAngleUnit(@)",
    header: "StepBasic_PlaneAngleUnit.hxx".}
type
  StepBasic_PlaneAngleUnitbase_type* = StepBasic_NamedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_PlaneAngleUnit::get_type_name(@)",
                              header: "StepBasic_PlaneAngleUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_PlaneAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_PlaneAngleUnit.hxx".}
proc DynamicType*(this: StepBasic_PlaneAngleUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_PlaneAngleUnit.hxx".}