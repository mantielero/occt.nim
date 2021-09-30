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

discard "forward decl of StepBasic_Person"
discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganization"
type
  HandleC1C1* = Handle[StepBasicPersonAndOrganization]
  StepBasicPersonAndOrganization* {.importcpp: "StepBasic_PersonAndOrganization", header: "StepBasic_PersonAndOrganization.hxx",
                                   bycopy.} = object of StandardTransient ## ! Returns a
                                                                     ## PersonAndOrganization


proc constructStepBasicPersonAndOrganization*(): StepBasicPersonAndOrganization {.
    constructor, importcpp: "StepBasic_PersonAndOrganization(@)",
    header: "StepBasic_PersonAndOrganization.hxx".}
proc init*(this: var StepBasicPersonAndOrganization;
          aThePerson: Handle[StepBasicPerson];
          aTheOrganization: Handle[StepBasicOrganization]) {.importcpp: "Init",
    header: "StepBasic_PersonAndOrganization.hxx".}
proc setThePerson*(this: var StepBasicPersonAndOrganization;
                  aThePerson: Handle[StepBasicPerson]) {.
    importcpp: "SetThePerson", header: "StepBasic_PersonAndOrganization.hxx".}
proc thePerson*(this: StepBasicPersonAndOrganization): Handle[StepBasicPerson] {.
    noSideEffect, importcpp: "ThePerson",
    header: "StepBasic_PersonAndOrganization.hxx".}
proc setTheOrganization*(this: var StepBasicPersonAndOrganization;
                        aTheOrganization: Handle[StepBasicOrganization]) {.
    importcpp: "SetTheOrganization", header: "StepBasic_PersonAndOrganization.hxx".}
proc theOrganization*(this: StepBasicPersonAndOrganization): Handle[
    StepBasicOrganization] {.noSideEffect, importcpp: "TheOrganization",
                            header: "StepBasic_PersonAndOrganization.hxx".}
type
  StepBasicPersonAndOrganizationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_PersonAndOrganization::get_type_name(@)",
                            header: "StepBasic_PersonAndOrganization.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_PersonAndOrganization::get_type_descriptor(@)",
    header: "StepBasic_PersonAndOrganization.hxx".}
proc dynamicType*(this: StepBasicPersonAndOrganization): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_PersonAndOrganization.hxx".}

























