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

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_Date"
type
  HandleStepBasicDate* = Handle[StepBasicDate]
  StepBasicDate* {.importcpp: "StepBasic_Date", header: "StepBasic_Date.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## Date


proc constructStepBasicDate*(): StepBasicDate {.constructor,
    importcpp: "StepBasic_Date(@)", header: "StepBasic_Date.hxx".}
proc init*(this: var StepBasicDate; aYearComponent: int) {.importcpp: "Init",
    header: "StepBasic_Date.hxx".}
proc setYearComponent*(this: var StepBasicDate; aYearComponent: int) {.
    importcpp: "SetYearComponent", header: "StepBasic_Date.hxx".}
proc yearComponent*(this: StepBasicDate): int {.noSideEffect,
    importcpp: "YearComponent", header: "StepBasic_Date.hxx".}
type
  StepBasicDatebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Date::get_type_name(@)",
                            header: "StepBasic_Date.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Date::get_type_descriptor(@)",
    header: "StepBasic_Date.hxx".}
proc dynamicType*(this: StepBasicDate): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Date.hxx".}
