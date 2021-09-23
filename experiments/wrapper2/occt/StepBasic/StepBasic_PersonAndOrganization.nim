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

discard "forward decl of StepBasic_Person"
discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganization"
type
  Handle_StepBasic_PersonAndOrganization* = handle[StepBasic_PersonAndOrganization]
  StepBasic_PersonAndOrganization* {.importcpp: "StepBasic_PersonAndOrganization", header: "StepBasic_PersonAndOrganization.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Returns a
                                                                       ## PersonAndOrganization


proc constructStepBasic_PersonAndOrganization*(): StepBasic_PersonAndOrganization {.
    constructor, importcpp: "StepBasic_PersonAndOrganization(@)",
    header: "StepBasic_PersonAndOrganization.hxx".}
proc Init*(this: var StepBasic_PersonAndOrganization;
          aThePerson: handle[StepBasic_Person];
          aTheOrganization: handle[StepBasic_Organization]) {.importcpp: "Init",
    header: "StepBasic_PersonAndOrganization.hxx".}
proc SetThePerson*(this: var StepBasic_PersonAndOrganization;
                  aThePerson: handle[StepBasic_Person]) {.
    importcpp: "SetThePerson", header: "StepBasic_PersonAndOrganization.hxx".}
proc ThePerson*(this: StepBasic_PersonAndOrganization): handle[StepBasic_Person] {.
    noSideEffect, importcpp: "ThePerson",
    header: "StepBasic_PersonAndOrganization.hxx".}
proc SetTheOrganization*(this: var StepBasic_PersonAndOrganization;
                        aTheOrganization: handle[StepBasic_Organization]) {.
    importcpp: "SetTheOrganization", header: "StepBasic_PersonAndOrganization.hxx".}
proc TheOrganization*(this: StepBasic_PersonAndOrganization): handle[
    StepBasic_Organization] {.noSideEffect, importcpp: "TheOrganization",
                             header: "StepBasic_PersonAndOrganization.hxx".}
type
  StepBasic_PersonAndOrganizationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_PersonAndOrganization::get_type_name(@)",
                              header: "StepBasic_PersonAndOrganization.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_PersonAndOrganization::get_type_descriptor(@)",
    header: "StepBasic_PersonAndOrganization.hxx".}
proc DynamicType*(this: StepBasic_PersonAndOrganization): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_PersonAndOrganization.hxx".}