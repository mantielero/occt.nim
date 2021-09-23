##  Created on: 1999-10-11
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of StepBasic_VolumeUnit"
discard "forward decl of StepBasic_VolumeUnit"
type
  Handle_StepBasic_VolumeUnit* = handle[StepBasic_VolumeUnit]
  StepBasic_VolumeUnit* {.importcpp: "StepBasic_VolumeUnit",
                         header: "StepBasic_VolumeUnit.hxx", bycopy.} = object of StepBasic_NamedUnit


proc constructStepBasic_VolumeUnit*(): StepBasic_VolumeUnit {.constructor,
    importcpp: "StepBasic_VolumeUnit(@)", header: "StepBasic_VolumeUnit.hxx".}
type
  StepBasic_VolumeUnitbase_type* = StepBasic_NamedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_VolumeUnit::get_type_name(@)",
                              header: "StepBasic_VolumeUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_VolumeUnit::get_type_descriptor(@)",
    header: "StepBasic_VolumeUnit.hxx".}
proc DynamicType*(this: StepBasic_VolumeUnit): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_VolumeUnit.hxx".}