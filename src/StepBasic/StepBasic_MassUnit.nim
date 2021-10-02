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

discard "forward decl of StepBasic_MassUnit"
discard "forward decl of StepBasic_MassUnit"
type
  HandleC1C1* = Handle[StepBasicMassUnit]

## ! Representation of STEP entity MassUnit

type
  StepBasicMassUnit* {.importcpp: "StepBasic_MassUnit",
                      header: "StepBasic_MassUnit.hxx", bycopy.} = object of StepBasicNamedUnit ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructStepBasicMassUnit*(): StepBasicMassUnit {.constructor,
    importcpp: "StepBasic_MassUnit(@)", header: "StepBasic_MassUnit.hxx".}
type
  StepBasicMassUnitbaseType* = StepBasicNamedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_MassUnit::get_type_name(@)",
                            header: "StepBasic_MassUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_MassUnit::get_type_descriptor(@)",
    header: "StepBasic_MassUnit.hxx".}
proc dynamicType*(this: StepBasicMassUnit): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_MassUnit.hxx".}