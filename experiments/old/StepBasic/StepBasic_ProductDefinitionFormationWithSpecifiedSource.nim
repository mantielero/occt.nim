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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_ProductDefinitionFormationWithSpecifiedSource"
discard "forward decl of StepBasic_ProductDefinitionFormationWithSpecifiedSource"
type
  HandleC1C1* = Handle[StepBasicProductDefinitionFormationWithSpecifiedSource]
  StepBasicProductDefinitionFormationWithSpecifiedSource* {.
      importcpp: "StepBasic_ProductDefinitionFormationWithSpecifiedSource",
      header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx",
      bycopy.} = object of StepBasicProductDefinitionFormation ## ! Returns a
                                                          ## ProductDefinitionFormationWithSpecifiedSource


proc constructStepBasicProductDefinitionFormationWithSpecifiedSource*(): StepBasicProductDefinitionFormationWithSpecifiedSource {.
    constructor,
    importcpp: "StepBasic_ProductDefinitionFormationWithSpecifiedSource(@)",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc init*(this: var StepBasicProductDefinitionFormationWithSpecifiedSource;
          aId: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aOfProduct: Handle[StepBasicProduct]; aMakeOrBuy: StepBasicSource) {.
    importcpp: "Init",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc setMakeOrBuy*(this: var StepBasicProductDefinitionFormationWithSpecifiedSource;
                  aMakeOrBuy: StepBasicSource) {.importcpp: "SetMakeOrBuy",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc makeOrBuy*(this: StepBasicProductDefinitionFormationWithSpecifiedSource): StepBasicSource {.
    noSideEffect, importcpp: "MakeOrBuy",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
type
  StepBasicProductDefinitionFormationWithSpecifiedSourcebaseType* = StepBasicProductDefinitionFormation

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinitionFormationWithSpecifiedSource::get_type_name(@)", header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ProductDefinitionFormationWithSpecifiedSource::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}
proc dynamicType*(this: StepBasicProductDefinitionFormationWithSpecifiedSource): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx".}