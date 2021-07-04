##  Created on: 1997-03-27
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

discard "forward decl of StepGeom_TrimmingMember"
discard "forward decl of StepGeom_TrimmingMember"
type
  Handle_StepGeom_TrimmingMember* = handle[StepGeom_TrimmingMember]

## ! For immediate members of TrimmingSelect, i.e. :
## ! ParameterValue (a Real)

type
  StepGeom_TrimmingMember* {.importcpp: "StepGeom_TrimmingMember",
                            header: "StepGeom_TrimmingMember.hxx", bycopy.} = object of StepData_SelectReal


proc constructStepGeom_TrimmingMember*(): StepGeom_TrimmingMember {.constructor,
    importcpp: "StepGeom_TrimmingMember(@)", header: "StepGeom_TrimmingMember.hxx".}
proc HasName*(this: StepGeom_TrimmingMember): Standard_Boolean {.noSideEffect,
    importcpp: "HasName", header: "StepGeom_TrimmingMember.hxx".}
proc Name*(this: StepGeom_TrimmingMember): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepGeom_TrimmingMember.hxx".}
proc SetName*(this: var StepGeom_TrimmingMember; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetName", header: "StepGeom_TrimmingMember.hxx".}
type
  StepGeom_TrimmingMemberbase_type* = StepData_SelectReal

proc get_type_name*(): cstring {.importcpp: "StepGeom_TrimmingMember::get_type_name(@)",
                              header: "StepGeom_TrimmingMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_TrimmingMember::get_type_descriptor(@)",
    header: "StepGeom_TrimmingMember.hxx".}
proc DynamicType*(this: StepGeom_TrimmingMember): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_TrimmingMember.hxx".}