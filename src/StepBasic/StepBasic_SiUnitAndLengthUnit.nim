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

discard "forward decl of StepBasic_LengthUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndLengthUnit"
discard "forward decl of StepBasic_SiUnitAndLengthUnit"
type
  HandleC1C1* = Handle[StepBasicSiUnitAndLengthUnit]
  StepBasicSiUnitAndLengthUnit* {.importcpp: "StepBasic_SiUnitAndLengthUnit",
                                 header: "StepBasic_SiUnitAndLengthUnit.hxx",
                                 bycopy.} = object of StepBasicSiUnit ## ! Returns a
                                                                 ## SiUnitAndLengthUnit


proc constructStepBasicSiUnitAndLengthUnit*(): StepBasicSiUnitAndLengthUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndLengthUnit(@)",
    header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc init*(this: var StepBasicSiUnitAndLengthUnit; hasAprefix: bool;
          aPrefix: StepBasicSiPrefix; aName: StepBasicSiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc setLengthUnit*(this: var StepBasicSiUnitAndLengthUnit;
                   aLengthUnit: Handle[StepBasicLengthUnit]) {.
    importcpp: "SetLengthUnit", header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc lengthUnit*(this: StepBasicSiUnitAndLengthUnit): Handle[StepBasicLengthUnit] {.
    noSideEffect, importcpp: "LengthUnit",
    header: "StepBasic_SiUnitAndLengthUnit.hxx".}
type
  StepBasicSiUnitAndLengthUnitbaseType* = StepBasicSiUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnitAndLengthUnit::get_type_name(@)",
                            header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SiUnitAndLengthUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndLengthUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnitAndLengthUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndLengthUnit.hxx".}

























