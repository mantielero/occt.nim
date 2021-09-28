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

discard "forward decl of StepBasic_SolidAngleUnit"
discard "forward decl of StepBasic_SolidAngleUnit"
type
  HandleC1C1* = Handle[StepBasicSolidAngleUnit]
  StepBasicSolidAngleUnit* {.importcpp: "StepBasic_SolidAngleUnit",
                            header: "StepBasic_SolidAngleUnit.hxx", bycopy.} = object of StepBasicNamedUnit ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## SolidAngleUnit


proc constructStepBasicSolidAngleUnit*(): StepBasicSolidAngleUnit {.constructor,
    importcpp: "StepBasic_SolidAngleUnit(@)",
    header: "StepBasic_SolidAngleUnit.hxx".}
type
  StepBasicSolidAngleUnitbaseType* = StepBasicNamedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SolidAngleUnit::get_type_name(@)",
                            header: "StepBasic_SolidAngleUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SolidAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_SolidAngleUnit.hxx".}
proc dynamicType*(this: StepBasicSolidAngleUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_SolidAngleUnit.hxx".}

























