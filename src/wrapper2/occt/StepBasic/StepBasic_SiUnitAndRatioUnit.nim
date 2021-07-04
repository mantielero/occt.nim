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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_SiUnit,
  ../Standard/Standard_Boolean, StepBasic_SiPrefix, StepBasic_SiUnitName

discard "forward decl of StepBasic_RatioUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndRatioUnit"
discard "forward decl of StepBasic_SiUnitAndRatioUnit"
type
  Handle_StepBasic_SiUnitAndRatioUnit* = handle[StepBasic_SiUnitAndRatioUnit]
  StepBasic_SiUnitAndRatioUnit* {.importcpp: "StepBasic_SiUnitAndRatioUnit",
                                 header: "StepBasic_SiUnitAndRatioUnit.hxx",
                                 bycopy.} = object of StepBasic_SiUnit ## ! Returns a
                                                                  ## SiUnitAndRatioUnit


proc constructStepBasic_SiUnitAndRatioUnit*(): StepBasic_SiUnitAndRatioUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndRatioUnit(@)",
    header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc Init*(this: var StepBasic_SiUnitAndRatioUnit; hasAprefix: Standard_Boolean;
          aPrefix: StepBasic_SiPrefix; aName: StepBasic_SiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc SetRatioUnit*(this: var StepBasic_SiUnitAndRatioUnit;
                  aRatioUnit: handle[StepBasic_RatioUnit]) {.
    importcpp: "SetRatioUnit", header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc RatioUnit*(this: StepBasic_SiUnitAndRatioUnit): handle[StepBasic_RatioUnit] {.
    noSideEffect, importcpp: "RatioUnit",
    header: "StepBasic_SiUnitAndRatioUnit.hxx".}
type
  StepBasic_SiUnitAndRatioUnitbase_type* = StepBasic_SiUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_SiUnitAndRatioUnit::get_type_name(@)",
                              header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SiUnitAndRatioUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc DynamicType*(this: StepBasic_SiUnitAndRatioUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndRatioUnit.hxx".}