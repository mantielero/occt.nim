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

discard "forward decl of StepBasic_RatioUnit"
discard "forward decl of StepBasic_RatioUnit"
type
  Handle_StepBasic_RatioUnit* = handle[StepBasic_RatioUnit]
  StepBasic_RatioUnit* {.importcpp: "StepBasic_RatioUnit",
                        header: "StepBasic_RatioUnit.hxx", bycopy.} = object of StepBasic_NamedUnit ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## a
                                                                                             ## RatioUnit


proc constructStepBasic_RatioUnit*(): StepBasic_RatioUnit {.constructor,
    importcpp: "StepBasic_RatioUnit(@)", header: "StepBasic_RatioUnit.hxx".}
type
  StepBasic_RatioUnitbase_type* = StepBasic_NamedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_RatioUnit::get_type_name(@)",
                              header: "StepBasic_RatioUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_RatioUnit::get_type_descriptor(@)",
    header: "StepBasic_RatioUnit.hxx".}
proc DynamicType*(this: StepBasic_RatioUnit): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_RatioUnit.hxx".}