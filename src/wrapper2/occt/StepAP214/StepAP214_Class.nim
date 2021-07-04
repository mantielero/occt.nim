##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepBasic/StepBasic_Group

discard "forward decl of StepAP214_Class"
discard "forward decl of StepAP214_Class"
type
  Handle_StepAP214_Class* = handle[StepAP214_Class]

## ! Representation of STEP entity Class

type
  StepAP214_Class* {.importcpp: "StepAP214_Class", header: "StepAP214_Class.hxx",
                    bycopy.} = object of StepBasic_Group ## ! Empty constructor


proc constructStepAP214_Class*(): StepAP214_Class {.constructor,
    importcpp: "StepAP214_Class(@)", header: "StepAP214_Class.hxx".}
type
  StepAP214_Classbase_type* = StepBasic_Group

proc get_type_name*(): cstring {.importcpp: "StepAP214_Class::get_type_name(@)",
                              header: "StepAP214_Class.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_Class::get_type_descriptor(@)",
    header: "StepAP214_Class.hxx".}
proc DynamicType*(this: StepAP214_Class): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP214_Class.hxx".}