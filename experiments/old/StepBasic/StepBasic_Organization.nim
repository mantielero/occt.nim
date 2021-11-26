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
discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_Organization"
type
  HandleC1C1* = Handle[StepBasicOrganization]
  StepBasicOrganization* {.importcpp: "StepBasic_Organization",
                          header: "StepBasic_Organization.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## Organization


proc constructStepBasicOrganization*(): StepBasicOrganization {.constructor,
    importcpp: "StepBasic_Organization(@)", header: "StepBasic_Organization.hxx".}
proc init*(this: var StepBasicOrganization; hasAid: StandardBoolean;
          aId: Handle[TCollectionHAsciiString];
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_Organization.hxx".}
proc setId*(this: var StepBasicOrganization; aId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Organization.hxx".}
proc unSetId*(this: var StepBasicOrganization) {.importcpp: "UnSetId",
    header: "StepBasic_Organization.hxx".}
proc id*(this: StepBasicOrganization): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_Organization.hxx".}
proc hasId*(this: StepBasicOrganization): StandardBoolean {.noSideEffect,
    importcpp: "HasId", header: "StepBasic_Organization.hxx".}
proc setName*(this: var StepBasicOrganization;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_Organization.hxx".}
proc name*(this: StepBasicOrganization): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_Organization.hxx".}
proc setDescription*(this: var StepBasicOrganization;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Organization.hxx".}
proc description*(this: StepBasicOrganization): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Organization.hxx".}
type
  StepBasicOrganizationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Organization::get_type_name(@)",
                            header: "StepBasic_Organization.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Organization::get_type_descriptor(@)",
    header: "StepBasic_Organization.hxx".}
proc dynamicType*(this: StepBasicOrganization): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Organization.hxx".}