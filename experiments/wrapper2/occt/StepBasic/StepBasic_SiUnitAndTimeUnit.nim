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

discard "forward decl of StepBasic_TimeUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndTimeUnit"
discard "forward decl of StepBasic_SiUnitAndTimeUnit"
type
  HandleStepBasicSiUnitAndTimeUnit* = Handle[StepBasicSiUnitAndTimeUnit]
  StepBasicSiUnitAndTimeUnit* {.importcpp: "StepBasic_SiUnitAndTimeUnit",
                               header: "StepBasic_SiUnitAndTimeUnit.hxx", bycopy.} = object of StepBasicSiUnit ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## SiUnitAndTimeUnit


proc constructStepBasicSiUnitAndTimeUnit*(): StepBasicSiUnitAndTimeUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndTimeUnit(@)",
    header: "StepBasic_SiUnitAndTimeUnit.hxx".}
proc init*(this: var StepBasicSiUnitAndTimeUnit; hasAprefix: bool;
          aPrefix: StepBasicSiPrefix; aName: StepBasicSiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnitAndTimeUnit.hxx".}
proc setTimeUnit*(this: var StepBasicSiUnitAndTimeUnit;
                 aTimeUnit: Handle[StepBasicTimeUnit]) {.importcpp: "SetTimeUnit",
    header: "StepBasic_SiUnitAndTimeUnit.hxx".}
proc timeUnit*(this: StepBasicSiUnitAndTimeUnit): Handle[StepBasicTimeUnit] {.
    noSideEffect, importcpp: "TimeUnit", header: "StepBasic_SiUnitAndTimeUnit.hxx".}
type
  StepBasicSiUnitAndTimeUnitbaseType* = StepBasicSiUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnitAndTimeUnit::get_type_name(@)",
                            header: "StepBasic_SiUnitAndTimeUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SiUnitAndTimeUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndTimeUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnitAndTimeUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndTimeUnit.hxx".}
