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

discard "forward decl of StepAP214_Class"
discard "forward decl of StepAP214_Class"
type
  HandleC1C1* = Handle[StepAP214Class]

## ! Representation of STEP entity Class

type
  StepAP214Class* {.importcpp: "StepAP214_Class", header: "StepAP214_Class.hxx",
                   bycopy.} = object of StepBasicGroup ## ! Empty constructor


proc constructStepAP214Class*(): StepAP214Class {.constructor,
    importcpp: "StepAP214_Class(@)", header: "StepAP214_Class.hxx".}
type
  StepAP214ClassbaseType* = StepBasicGroup

proc getTypeName*(): cstring {.importcpp: "StepAP214_Class::get_type_name(@)",
                            header: "StepAP214_Class.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_Class::get_type_descriptor(@)",
    header: "StepAP214_Class.hxx".}
proc dynamicType*(this: StepAP214Class): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP214_Class.hxx".}