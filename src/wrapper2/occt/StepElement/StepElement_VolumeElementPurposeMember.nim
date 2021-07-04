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

discard "forward decl of StepElement_VolumeElementPurposeMember"
discard "forward decl of StepElement_VolumeElementPurposeMember"
type
  Handle_StepElement_VolumeElementPurposeMember* = handle[
      StepElement_VolumeElementPurposeMember]

## ! Representation of member for  STEP SELECT type VolumeElementPurpose

type
  StepElement_VolumeElementPurposeMember* {.
      importcpp: "StepElement_VolumeElementPurposeMember",
      header: "StepElement_VolumeElementPurposeMember.hxx", bycopy.} = object of StepData_SelectNamed ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepElement_VolumeElementPurposeMember*(): StepElement_VolumeElementPurposeMember {.
    constructor, importcpp: "StepElement_VolumeElementPurposeMember(@)",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
proc HasName*(this: StepElement_VolumeElementPurposeMember): Standard_Boolean {.
    noSideEffect, importcpp: "HasName",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
proc Name*(this: StepElement_VolumeElementPurposeMember): Standard_CString {.
    noSideEffect, importcpp: "Name",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
proc SetName*(this: var StepElement_VolumeElementPurposeMember;
             name: Standard_CString): Standard_Boolean {.importcpp: "SetName",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
proc Matches*(this: StepElement_VolumeElementPurposeMember; name: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
type
  StepElement_VolumeElementPurposeMemberbase_type* = StepData_SelectNamed

proc get_type_name*(): cstring {.importcpp: "StepElement_VolumeElementPurposeMember::get_type_name(@)", header: "StepElement_VolumeElementPurposeMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepElement_VolumeElementPurposeMember::get_type_descriptor(@)",
    header: "StepElement_VolumeElementPurposeMember.hxx".}
proc DynamicType*(this: StepElement_VolumeElementPurposeMember): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepElement_VolumeElementPurposeMember.hxx".}