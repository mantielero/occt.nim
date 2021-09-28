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

discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepBasic_NamedUnit"
type
  HandleC1C1* = Handle[StepBasicNamedUnit]
  StepBasicNamedUnit* {.importcpp: "StepBasic_NamedUnit",
                       header: "StepBasic_NamedUnit.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## NamedUnit


proc constructStepBasicNamedUnit*(): StepBasicNamedUnit {.constructor,
    importcpp: "StepBasic_NamedUnit(@)", header: "StepBasic_NamedUnit.hxx".}
proc init*(this: var StepBasicNamedUnit;
          aDimensions: Handle[StepBasicDimensionalExponents]) {.importcpp: "Init",
    header: "StepBasic_NamedUnit.hxx".}
proc setDimensions*(this: var StepBasicNamedUnit;
                   aDimensions: Handle[StepBasicDimensionalExponents]) {.
    importcpp: "SetDimensions", header: "StepBasic_NamedUnit.hxx".}
proc dimensions*(this: StepBasicNamedUnit): Handle[StepBasicDimensionalExponents] {.
    noSideEffect, importcpp: "Dimensions", header: "StepBasic_NamedUnit.hxx".}
type
  StepBasicNamedUnitbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_NamedUnit::get_type_name(@)",
                            header: "StepBasic_NamedUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_NamedUnit::get_type_descriptor(@)",
    header: "StepBasic_NamedUnit.hxx".}
proc dynamicType*(this: StepBasicNamedUnit): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_NamedUnit.hxx".}

























