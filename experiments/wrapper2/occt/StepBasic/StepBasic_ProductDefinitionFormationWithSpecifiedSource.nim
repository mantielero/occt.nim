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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_Source,
  StepBasic_ProductDefinitionFormation

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_ProductDefinitionFormationWithSpecifiedSource"
discard "forward decl of StepBasic_ProductDefinitionFormationWithSpecifiedSource"
type
  Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource* = handle[
      StepBasic_ProductDefinitionFormationWithSpecifiedSource]
  StepBasic_ProductDefinitionFormationWithSpecifiedSource* {.
      importcpp: "StepBasic_ProductDefinitionFormationWithSpecifiedSource",
      header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx",
      bycopy.} = object of StepBasic_ProductDefinitionFormation ## ! Returns a
                                                           ## ProductDefinitionFormationWithSpecifiedSource


proc constructStepBasic_ProductDefinitionFormationWithSpecifiedSource*(): StepBasic_ProductDefinitionFormationWithSpecifiedSource {.
    constructor,
    importcpp: "StepBasic_ProductDefinitionFormationWithSpecifiedSource(@)",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionFormationWithSpecifiedSource;
          aId: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aOfProduct: handle[StepBasic_Product]; aMakeOrBuy: StepBasic_Source) {.
    importcpp: "Init",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc SetMakeOrBuy*(this: var StepBasic_ProductDefinitionFormationWithSpecifiedSource;
                  aMakeOrBuy: StepBasic_Source) {.importcpp: "SetMakeOrBuy",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc MakeOrBuy*(this: StepBasic_ProductDefinitionFormationWithSpecifiedSource): StepBasic_Source {.
    noSideEffect, importcpp: "MakeOrBuy",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
type
  StepBasic_ProductDefinitionFormationWithSpecifiedSourcebase_type* = StepBasic_ProductDefinitionFormation

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinitionFormationWithSpecifiedSource::get_type_name(@)", header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ProductDefinitionFormationWithSpecifiedSource::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinitionFormationWithSpecifiedSource): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}