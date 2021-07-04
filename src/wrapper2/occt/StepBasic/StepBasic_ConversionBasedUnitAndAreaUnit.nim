##  Created on: 1999-10-12
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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_ConversionBasedUnit

discard "forward decl of StepBasic_AreaUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndAreaUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndAreaUnit"
type
  Handle_StepBasic_ConversionBasedUnitAndAreaUnit* = handle[
      StepBasic_ConversionBasedUnitAndAreaUnit]
  StepBasic_ConversionBasedUnitAndAreaUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndAreaUnit",
      header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx", bycopy.} = object of StepBasic_ConversionBasedUnit ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## ConversionBasedUnitAndAreaUnit


proc constructStepBasic_ConversionBasedUnitAndAreaUnit*(): StepBasic_ConversionBasedUnitAndAreaUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndAreaUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
proc SetAreaUnit*(this: var StepBasic_ConversionBasedUnitAndAreaUnit;
                 anAreaUnit: handle[StepBasic_AreaUnit]) {.
    importcpp: "SetAreaUnit",
    header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
proc AreaUnit*(this: StepBasic_ConversionBasedUnitAndAreaUnit): handle[
    StepBasic_AreaUnit] {.noSideEffect, importcpp: "AreaUnit",
                         header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
type
  StepBasic_ConversionBasedUnitAndAreaUnitbase_type* = StepBasic_ConversionBasedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndAreaUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ConversionBasedUnitAndAreaUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
proc DynamicType*(this: StepBasic_ConversionBasedUnitAndAreaUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}