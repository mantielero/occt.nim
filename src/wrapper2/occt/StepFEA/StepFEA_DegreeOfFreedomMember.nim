##  Created on: 2002-12-10
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../StepData/StepData_SelectNamed, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString

discard "forward decl of StepFEA_DegreeOfFreedomMember"
discard "forward decl of StepFEA_DegreeOfFreedomMember"
type
  Handle_StepFEA_DegreeOfFreedomMember* = handle[StepFEA_DegreeOfFreedomMember]

## ! Representation of member for  STEP SELECT type CurveElementFreedom

type
  StepFEA_DegreeOfFreedomMember* {.importcpp: "StepFEA_DegreeOfFreedomMember",
                                  header: "StepFEA_DegreeOfFreedomMember.hxx",
                                  bycopy.} = object of StepData_SelectNamed ## ! Empty
                                                                       ## constructor


proc constructStepFEA_DegreeOfFreedomMember*(): StepFEA_DegreeOfFreedomMember {.
    constructor, importcpp: "StepFEA_DegreeOfFreedomMember(@)",
    header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc HasName*(this: StepFEA_DegreeOfFreedomMember): Standard_Boolean {.noSideEffect,
    importcpp: "HasName", header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc Name*(this: StepFEA_DegreeOfFreedomMember): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc SetName*(this: var StepFEA_DegreeOfFreedomMember; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetName", header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc Matches*(this: StepFEA_DegreeOfFreedomMember; name: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "StepFEA_DegreeOfFreedomMember.hxx".}
type
  StepFEA_DegreeOfFreedomMemberbase_type* = StepData_SelectNamed

proc get_type_name*(): cstring {.importcpp: "StepFEA_DegreeOfFreedomMember::get_type_name(@)",
                              header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_DegreeOfFreedomMember::get_type_descriptor(@)",
    header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc DynamicType*(this: StepFEA_DegreeOfFreedomMember): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_DegreeOfFreedomMember.hxx".}