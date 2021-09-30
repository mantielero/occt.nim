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

discard "forward decl of StepBasic_RatioUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndRatioUnit"
discard "forward decl of StepBasic_SiUnitAndRatioUnit"
type
  HandleC1C1* = Handle[StepBasicSiUnitAndRatioUnit]
  StepBasicSiUnitAndRatioUnit* {.importcpp: "StepBasic_SiUnitAndRatioUnit",
                                header: "StepBasic_SiUnitAndRatioUnit.hxx", bycopy.} = object of StepBasicSiUnit ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## SiUnitAndRatioUnit


proc constructStepBasicSiUnitAndRatioUnit*(): StepBasicSiUnitAndRatioUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndRatioUnit(@)",
    header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc init*(this: var StepBasicSiUnitAndRatioUnit; hasAprefix: bool;
          aPrefix: StepBasicSiPrefix; aName: StepBasicSiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc setRatioUnit*(this: var StepBasicSiUnitAndRatioUnit;
                  aRatioUnit: Handle[StepBasicRatioUnit]) {.
    importcpp: "SetRatioUnit", header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc ratioUnit*(this: StepBasicSiUnitAndRatioUnit): Handle[StepBasicRatioUnit] {.
    noSideEffect, importcpp: "RatioUnit",
    header: "StepBasic_SiUnitAndRatioUnit.hxx".}
type
  StepBasicSiUnitAndRatioUnitbaseType* = StepBasicSiUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnitAndRatioUnit::get_type_name(@)",
                            header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SiUnitAndRatioUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndRatioUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnitAndRatioUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndRatioUnit.hxx".}

























