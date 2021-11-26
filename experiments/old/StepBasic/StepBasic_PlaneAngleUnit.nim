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

discard "forward decl of StepBasic_PlaneAngleUnit"
discard "forward decl of StepBasic_PlaneAngleUnit"
type
  HandleC1C1* = Handle[StepBasicPlaneAngleUnit]
  StepBasicPlaneAngleUnit* {.importcpp: "StepBasic_PlaneAngleUnit",
                            header: "StepBasic_PlaneAngleUnit.hxx", bycopy.} = object of StepBasicNamedUnit ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## PlaneAngleUnit


proc constructStepBasicPlaneAngleUnit*(): StepBasicPlaneAngleUnit {.constructor,
    importcpp: "StepBasic_PlaneAngleUnit(@)",
    header: "StepBasic_PlaneAngleUnit.hxx".}
type
  StepBasicPlaneAngleUnitbaseType* = StepBasicNamedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_PlaneAngleUnit::get_type_name(@)",
                            header: "StepBasic_PlaneAngleUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_PlaneAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_PlaneAngleUnit.hxx".}
proc dynamicType*(this: StepBasicPlaneAngleUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_PlaneAngleUnit.hxx".}