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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_Person"
discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_PersonAndOrganization"
type
  StepBasic_PersonOrganizationSelect* {.importcpp: "StepBasic_PersonOrganizationSelect", header: "StepBasic_PersonOrganizationSelect.hxx",
                                       bycopy.} = object of StepData_SelectType ## !
                                                                           ## Returns a
                                                                           ## PersonOrganizationSelect
                                                                           ## SelectType


proc constructStepBasic_PersonOrganizationSelect*(): StepBasic_PersonOrganizationSelect {.
    constructor, importcpp: "StepBasic_PersonOrganizationSelect(@)",
    header: "StepBasic_PersonOrganizationSelect.hxx".}
proc CaseNum*(this: StepBasic_PersonOrganizationSelect;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepBasic_PersonOrganizationSelect.hxx".}
proc Person*(this: StepBasic_PersonOrganizationSelect): handle[StepBasic_Person] {.
    noSideEffect, importcpp: "Person",
    header: "StepBasic_PersonOrganizationSelect.hxx".}
proc Organization*(this: StepBasic_PersonOrganizationSelect): handle[
    StepBasic_Organization] {.noSideEffect, importcpp: "Organization",
                             header: "StepBasic_PersonOrganizationSelect.hxx".}
proc PersonAndOrganization*(this: StepBasic_PersonOrganizationSelect): handle[
    StepBasic_PersonAndOrganization] {.noSideEffect,
                                      importcpp: "PersonAndOrganization", header: "StepBasic_PersonOrganizationSelect.hxx".}