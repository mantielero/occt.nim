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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_SiPrefix,
  StepBasic_SiUnitName, ../Standard/Standard_Boolean, StepBasic_NamedUnit

discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnit"
discard "forward decl of StepBasic_SiUnit"
type
  Handle_StepBasic_SiUnit* = handle[StepBasic_SiUnit]
  StepBasic_SiUnit* {.importcpp: "StepBasic_SiUnit",
                     header: "StepBasic_SiUnit.hxx", bycopy.} = object of StepBasic_NamedUnit ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## a
                                                                                       ## SiUnit


proc constructStepBasic_SiUnit*(): StepBasic_SiUnit {.constructor,
    importcpp: "StepBasic_SiUnit(@)", header: "StepBasic_SiUnit.hxx".}
proc Init*(this: var StepBasic_SiUnit; hasAprefix: Standard_Boolean;
          aPrefix: StepBasic_SiPrefix; aName: StepBasic_SiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnit.hxx".}
proc SetPrefix*(this: var StepBasic_SiUnit; aPrefix: StepBasic_SiPrefix) {.
    importcpp: "SetPrefix", header: "StepBasic_SiUnit.hxx".}
proc UnSetPrefix*(this: var StepBasic_SiUnit) {.importcpp: "UnSetPrefix",
    header: "StepBasic_SiUnit.hxx".}
proc Prefix*(this: StepBasic_SiUnit): StepBasic_SiPrefix {.noSideEffect,
    importcpp: "Prefix", header: "StepBasic_SiUnit.hxx".}
proc HasPrefix*(this: StepBasic_SiUnit): Standard_Boolean {.noSideEffect,
    importcpp: "HasPrefix", header: "StepBasic_SiUnit.hxx".}
proc SetName*(this: var StepBasic_SiUnit; aName: StepBasic_SiUnitName) {.
    importcpp: "SetName", header: "StepBasic_SiUnit.hxx".}
proc Name*(this: StepBasic_SiUnit): StepBasic_SiUnitName {.noSideEffect,
    importcpp: "Name", header: "StepBasic_SiUnit.hxx".}
proc SetDimensions*(this: var StepBasic_SiUnit;
                   aDimensions: handle[StepBasic_DimensionalExponents]) {.
    importcpp: "SetDimensions", header: "StepBasic_SiUnit.hxx".}
proc Dimensions*(this: StepBasic_SiUnit): handle[StepBasic_DimensionalExponents] {.
    noSideEffect, importcpp: "Dimensions", header: "StepBasic_SiUnit.hxx".}
type
  StepBasic_SiUnitbase_type* = StepBasic_NamedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_SiUnit::get_type_name(@)",
                              header: "StepBasic_SiUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SiUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnit.hxx".}
proc DynamicType*(this: StepBasic_SiUnit): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_SiUnit.hxx".}