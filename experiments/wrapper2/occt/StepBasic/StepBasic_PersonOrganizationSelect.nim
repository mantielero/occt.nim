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

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_Person"
discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_PersonAndOrganization"
type
  StepBasicPersonOrganizationSelect* {.importcpp: "StepBasic_PersonOrganizationSelect", header: "StepBasic_PersonOrganizationSelect.hxx",
                                      bycopy.} = object of StepDataSelectType ## ! Returns a
                                                                         ## PersonOrganizationSelect
                                                                         ## SelectType


proc constructStepBasicPersonOrganizationSelect*(): StepBasicPersonOrganizationSelect {.
    constructor, importcpp: "StepBasic_PersonOrganizationSelect(@)",
    header: "StepBasic_PersonOrganizationSelect.hxx".}
proc caseNum*(this: StepBasicPersonOrganizationSelect;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepBasic_PersonOrganizationSelect.hxx".}
proc person*(this: StepBasicPersonOrganizationSelect): Handle[StepBasicPerson] {.
    noSideEffect, importcpp: "Person",
    header: "StepBasic_PersonOrganizationSelect.hxx".}
proc organization*(this: StepBasicPersonOrganizationSelect): Handle[
    StepBasicOrganization] {.noSideEffect, importcpp: "Organization",
                            header: "StepBasic_PersonOrganizationSelect.hxx".}
proc personAndOrganization*(this: StepBasicPersonOrganizationSelect): Handle[
    StepBasicPersonAndOrganization] {.noSideEffect,
                                     importcpp: "PersonAndOrganization", header: "StepBasic_PersonOrganizationSelect.hxx".}
