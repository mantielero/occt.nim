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

discard "forward decl of StepBasic_AreaUnit"
discard "forward decl of StepBasic_AreaUnit"
type
  HandleC1C1* = Handle[StepBasicAreaUnit]
  StepBasicAreaUnit* {.importcpp: "StepBasic_AreaUnit",
                      header: "StepBasic_AreaUnit.hxx", bycopy.} = object of StepBasicNamedUnit


proc constructStepBasicAreaUnit*(): StepBasicAreaUnit {.constructor,
    importcpp: "StepBasic_AreaUnit(@)", header: "StepBasic_AreaUnit.hxx".}
type
  StepBasicAreaUnitbaseType* = StepBasicNamedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_AreaUnit::get_type_name(@)",
                            header: "StepBasic_AreaUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_AreaUnit::get_type_descriptor(@)",
    header: "StepBasic_AreaUnit.hxx".}
proc dynamicType*(this: StepBasicAreaUnit): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_AreaUnit.hxx".}