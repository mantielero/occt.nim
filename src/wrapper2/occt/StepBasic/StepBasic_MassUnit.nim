##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of StepBasic_MassUnit"
discard "forward decl of StepBasic_MassUnit"
type
  Handle_StepBasic_MassUnit* = handle[StepBasic_MassUnit]

## ! Representation of STEP entity MassUnit

type
  StepBasic_MassUnit* {.importcpp: "StepBasic_MassUnit",
                       header: "StepBasic_MassUnit.hxx", bycopy.} = object of StepBasic_NamedUnit ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepBasic_MassUnit*(): StepBasic_MassUnit {.constructor,
    importcpp: "StepBasic_MassUnit(@)", header: "StepBasic_MassUnit.hxx".}
type
  StepBasic_MassUnitbase_type* = StepBasic_NamedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_MassUnit::get_type_name(@)",
                              header: "StepBasic_MassUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_MassUnit::get_type_descriptor(@)",
    header: "StepBasic_MassUnit.hxx".}
proc DynamicType*(this: StepBasic_MassUnit): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_MassUnit.hxx".}