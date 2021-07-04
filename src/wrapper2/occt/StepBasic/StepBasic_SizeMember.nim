##  Created on: 1997-03-28
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepData/StepData_SelectReal, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString

discard "forward decl of StepBasic_SizeMember"
discard "forward decl of StepBasic_SizeMember"
type
  Handle_StepBasic_SizeMember* = handle[StepBasic_SizeMember]

## ! For immediate members of SizeSelect, i.e. :
## ! ParameterValue (a Real)

type
  StepBasic_SizeMember* {.importcpp: "StepBasic_SizeMember",
                         header: "StepBasic_SizeMember.hxx", bycopy.} = object of StepData_SelectReal


proc constructStepBasic_SizeMember*(): StepBasic_SizeMember {.constructor,
    importcpp: "StepBasic_SizeMember(@)", header: "StepBasic_SizeMember.hxx".}
proc HasName*(this: StepBasic_SizeMember): Standard_Boolean {.noSideEffect,
    importcpp: "HasName", header: "StepBasic_SizeMember.hxx".}
proc Name*(this: StepBasic_SizeMember): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepBasic_SizeMember.hxx".}
proc SetName*(this: var StepBasic_SizeMember; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetName", header: "StepBasic_SizeMember.hxx".}
type
  StepBasic_SizeMemberbase_type* = StepData_SelectReal

proc get_type_name*(): cstring {.importcpp: "StepBasic_SizeMember::get_type_name(@)",
                              header: "StepBasic_SizeMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SizeMember::get_type_descriptor(@)",
    header: "StepBasic_SizeMember.hxx".}
proc DynamicType*(this: StepBasic_SizeMember): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_SizeMember.hxx".}