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
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinitionFormation"
type
  HandleStepBasicProductDefinitionFormation* = Handle[
      StepBasicProductDefinitionFormation]
  StepBasicProductDefinitionFormation* {.importcpp: "StepBasic_ProductDefinitionFormation", header: "StepBasic_ProductDefinitionFormation.hxx",
                                        bycopy.} = object of StandardTransient ## !
                                                                          ## Returns a
                                                                          ## ProductDefinitionFormation


proc constructStepBasicProductDefinitionFormation*(): StepBasicProductDefinitionFormation {.
    constructor, importcpp: "StepBasic_ProductDefinitionFormation(@)",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc init*(this: var StepBasicProductDefinitionFormation;
          aId: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aOfProduct: Handle[StepBasicProduct]) {.importcpp: "Init",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc setId*(this: var StepBasicProductDefinitionFormation;
           aId: Handle[TCollectionHAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc id*(this: StepBasicProductDefinitionFormation): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Id",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc setDescription*(this: var StepBasicProductDefinitionFormation;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc description*(this: StepBasicProductDefinitionFormation): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_ProductDefinitionFormation.hxx".}
proc setOfProduct*(this: var StepBasicProductDefinitionFormation;
                  aOfProduct: Handle[StepBasicProduct]) {.
    importcpp: "SetOfProduct", header: "StepBasic_ProductDefinitionFormation.hxx".}
proc ofProduct*(this: StepBasicProductDefinitionFormation): Handle[StepBasicProduct] {.
    noSideEffect, importcpp: "OfProduct",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
type
  StepBasicProductDefinitionFormationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinitionFormation::get_type_name(@)",
                            header: "StepBasic_ProductDefinitionFormation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ProductDefinitionFormation::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc dynamicType*(this: StepBasicProductDefinitionFormation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
