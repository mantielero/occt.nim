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

discard "forward decl of StepElement_CurveElementFreedomMember"
discard "forward decl of StepElement_CurveElementFreedomMember"
type
  Handle_StepElement_CurveElementFreedomMember* = handle[
      StepElement_CurveElementFreedomMember]

## ! Representation of member for  STEP SELECT type CurveElementFreedom

type
  StepElement_CurveElementFreedomMember* {.
      importcpp: "StepElement_CurveElementFreedomMember",
      header: "StepElement_CurveElementFreedomMember.hxx", bycopy.} = object of StepData_SelectNamed ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepElement_CurveElementFreedomMember*(): StepElement_CurveElementFreedomMember {.
    constructor, importcpp: "StepElement_CurveElementFreedomMember(@)",
    header: "StepElement_CurveElementFreedomMember.hxx".}
proc HasName*(this: StepElement_CurveElementFreedomMember): Standard_Boolean {.
    noSideEffect, importcpp: "HasName",
    header: "StepElement_CurveElementFreedomMember.hxx".}
proc Name*(this: StepElement_CurveElementFreedomMember): Standard_CString {.
    noSideEffect, importcpp: "Name",
    header: "StepElement_CurveElementFreedomMember.hxx".}
proc SetName*(this: var StepElement_CurveElementFreedomMember;
             name: Standard_CString): Standard_Boolean {.importcpp: "SetName",
    header: "StepElement_CurveElementFreedomMember.hxx".}
proc Matches*(this: StepElement_CurveElementFreedomMember; name: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches",
    header: "StepElement_CurveElementFreedomMember.hxx".}
type
  StepElement_CurveElementFreedomMemberbase_type* = StepData_SelectNamed

proc get_type_name*(): cstring {.importcpp: "StepElement_CurveElementFreedomMember::get_type_name(@)", header: "StepElement_CurveElementFreedomMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepElement_CurveElementFreedomMember::get_type_descriptor(@)",
    header: "StepElement_CurveElementFreedomMember.hxx".}
proc DynamicType*(this: StepElement_CurveElementFreedomMember): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepElement_CurveElementFreedomMember.hxx".}