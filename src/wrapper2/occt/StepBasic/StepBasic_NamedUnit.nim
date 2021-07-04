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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepBasic_NamedUnit"
type
  Handle_StepBasic_NamedUnit* = handle[StepBasic_NamedUnit]
  StepBasic_NamedUnit* {.importcpp: "StepBasic_NamedUnit",
                        header: "StepBasic_NamedUnit.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## NamedUnit


proc constructStepBasic_NamedUnit*(): StepBasic_NamedUnit {.constructor,
    importcpp: "StepBasic_NamedUnit(@)", header: "StepBasic_NamedUnit.hxx".}
proc Init*(this: var StepBasic_NamedUnit;
          aDimensions: handle[StepBasic_DimensionalExponents]) {.
    importcpp: "Init", header: "StepBasic_NamedUnit.hxx".}
proc SetDimensions*(this: var StepBasic_NamedUnit;
                   aDimensions: handle[StepBasic_DimensionalExponents]) {.
    importcpp: "SetDimensions", header: "StepBasic_NamedUnit.hxx".}
proc Dimensions*(this: StepBasic_NamedUnit): handle[StepBasic_DimensionalExponents] {.
    noSideEffect, importcpp: "Dimensions", header: "StepBasic_NamedUnit.hxx".}
type
  StepBasic_NamedUnitbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_NamedUnit::get_type_name(@)",
                              header: "StepBasic_NamedUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_NamedUnit::get_type_descriptor(@)",
    header: "StepBasic_NamedUnit.hxx".}
proc DynamicType*(this: StepBasic_NamedUnit): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_NamedUnit.hxx".}