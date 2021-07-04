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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_SiUnit

discard "forward decl of StepBasic_AreaUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndAreaUnit"
discard "forward decl of StepBasic_SiUnitAndAreaUnit"
type
  Handle_StepBasic_SiUnitAndAreaUnit* = handle[StepBasic_SiUnitAndAreaUnit]
  StepBasic_SiUnitAndAreaUnit* {.importcpp: "StepBasic_SiUnitAndAreaUnit",
                                header: "StepBasic_SiUnitAndAreaUnit.hxx", bycopy.} = object of StepBasic_SiUnit ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## SiUnitAndAreaUnit


proc constructStepBasic_SiUnitAndAreaUnit*(): StepBasic_SiUnitAndAreaUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndAreaUnit(@)",
    header: "StepBasic_SiUnitAndAreaUnit.hxx".}
proc SetAreaUnit*(this: var StepBasic_SiUnitAndAreaUnit;
                 anAreaUnit: handle[StepBasic_AreaUnit]) {.
    importcpp: "SetAreaUnit", header: "StepBasic_SiUnitAndAreaUnit.hxx".}
proc AreaUnit*(this: StepBasic_SiUnitAndAreaUnit): handle[StepBasic_AreaUnit] {.
    noSideEffect, importcpp: "AreaUnit", header: "StepBasic_SiUnitAndAreaUnit.hxx".}
type
  StepBasic_SiUnitAndAreaUnitbase_type* = StepBasic_SiUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_SiUnitAndAreaUnit::get_type_name(@)",
                              header: "StepBasic_SiUnitAndAreaUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SiUnitAndAreaUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndAreaUnit.hxx".}
proc DynamicType*(this: StepBasic_SiUnitAndAreaUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndAreaUnit.hxx".}