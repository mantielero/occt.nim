##  Created on: 2002-12-15
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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_SiUnit,
  ../Standard/Standard_Boolean, StepBasic_SiPrefix, StepBasic_SiUnitName

discard "forward decl of StepBasic_MassUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndMassUnit"
discard "forward decl of StepBasic_SiUnitAndMassUnit"
type
  Handle_StepBasic_SiUnitAndMassUnit* = handle[StepBasic_SiUnitAndMassUnit]
  StepBasic_SiUnitAndMassUnit* {.importcpp: "StepBasic_SiUnitAndMassUnit",
                                header: "StepBasic_SiUnitAndMassUnit.hxx", bycopy.} = object of StepBasic_SiUnit ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## SiUnitAndMassUnit


proc constructStepBasic_SiUnitAndMassUnit*(): StepBasic_SiUnitAndMassUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndMassUnit(@)",
    header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc Init*(this: var StepBasic_SiUnitAndMassUnit; hasAprefix: Standard_Boolean;
          aPrefix: StepBasic_SiPrefix; aName: StepBasic_SiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc SetMassUnit*(this: var StepBasic_SiUnitAndMassUnit;
                 aMassUnit: handle[StepBasic_MassUnit]) {.
    importcpp: "SetMassUnit", header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc MassUnit*(this: StepBasic_SiUnitAndMassUnit): handle[StepBasic_MassUnit] {.
    noSideEffect, importcpp: "MassUnit", header: "StepBasic_SiUnitAndMassUnit.hxx".}
type
  StepBasic_SiUnitAndMassUnitbase_type* = StepBasic_SiUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_SiUnitAndMassUnit::get_type_name(@)",
                              header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SiUnitAndMassUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc DynamicType*(this: StepBasic_SiUnitAndMassUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndMassUnit.hxx".}