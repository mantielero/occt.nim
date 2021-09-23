##  Created on: 1994-06-17
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of StepBasic_SolidAngleUnit"
discard "forward decl of StepBasic_SolidAngleUnit"
type
  Handle_StepBasic_SolidAngleUnit* = handle[StepBasic_SolidAngleUnit]
  StepBasic_SolidAngleUnit* {.importcpp: "StepBasic_SolidAngleUnit",
                             header: "StepBasic_SolidAngleUnit.hxx", bycopy.} = object of StepBasic_NamedUnit ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## SolidAngleUnit


proc constructStepBasic_SolidAngleUnit*(): StepBasic_SolidAngleUnit {.constructor,
    importcpp: "StepBasic_SolidAngleUnit(@)",
    header: "StepBasic_SolidAngleUnit.hxx".}
type
  StepBasic_SolidAngleUnitbase_type* = StepBasic_NamedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_SolidAngleUnit::get_type_name(@)",
                              header: "StepBasic_SolidAngleUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SolidAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_SolidAngleUnit.hxx".}
proc DynamicType*(this: StepBasic_SolidAngleUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_SolidAngleUnit.hxx".}