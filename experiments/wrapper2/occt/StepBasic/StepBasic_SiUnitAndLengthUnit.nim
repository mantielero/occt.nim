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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_SiUnit,
  ../Standard/Standard_Boolean, StepBasic_SiPrefix, StepBasic_SiUnitName

discard "forward decl of StepBasic_LengthUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndLengthUnit"
discard "forward decl of StepBasic_SiUnitAndLengthUnit"
type
  Handle_StepBasic_SiUnitAndLengthUnit* = handle[StepBasic_SiUnitAndLengthUnit]
  StepBasic_SiUnitAndLengthUnit* {.importcpp: "StepBasic_SiUnitAndLengthUnit",
                                  header: "StepBasic_SiUnitAndLengthUnit.hxx",
                                  bycopy.} = object of StepBasic_SiUnit ## ! Returns a
                                                                   ## SiUnitAndLengthUnit


proc constructStepBasic_SiUnitAndLengthUnit*(): StepBasic_SiUnitAndLengthUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndLengthUnit(@)",
    header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc Init*(this: var StepBasic_SiUnitAndLengthUnit; hasAprefix: Standard_Boolean;
          aPrefix: StepBasic_SiPrefix; aName: StepBasic_SiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc SetLengthUnit*(this: var StepBasic_SiUnitAndLengthUnit;
                   aLengthUnit: handle[StepBasic_LengthUnit]) {.
    importcpp: "SetLengthUnit", header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc LengthUnit*(this: StepBasic_SiUnitAndLengthUnit): handle[StepBasic_LengthUnit] {.
    noSideEffect, importcpp: "LengthUnit",
    header: "StepBasic_SiUnitAndLengthUnit.hxx".}
type
  StepBasic_SiUnitAndLengthUnitbase_type* = StepBasic_SiUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_SiUnitAndLengthUnit::get_type_name(@)",
                              header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SiUnitAndLengthUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc DynamicType*(this: StepBasic_SiUnitAndLengthUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndLengthUnit.hxx".}