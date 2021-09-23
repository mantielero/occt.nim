##  Created on: 1998-06-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Effectivity"
discard "forward decl of StepBasic_Effectivity"
type
  Handle_StepBasic_Effectivity* = handle[StepBasic_Effectivity]
  StepBasic_Effectivity* {.importcpp: "StepBasic_Effectivity",
                          header: "StepBasic_Effectivity.hxx", bycopy.} = object of Standard_Transient


proc constructStepBasic_Effectivity*(): StepBasic_Effectivity {.constructor,
    importcpp: "StepBasic_Effectivity(@)", header: "StepBasic_Effectivity.hxx".}
proc Init*(this: var StepBasic_Effectivity; aid: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepBasic_Effectivity.hxx".}
proc Id*(this: StepBasic_Effectivity): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_Effectivity.hxx".}
proc SetId*(this: var StepBasic_Effectivity; aid: handle[TCollection_HAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Effectivity.hxx".}
type
  StepBasic_Effectivitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Effectivity::get_type_name(@)",
                              header: "StepBasic_Effectivity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Effectivity::get_type_descriptor(@)",
    header: "StepBasic_Effectivity.hxx".}
proc DynamicType*(this: StepBasic_Effectivity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_Effectivity.hxx".}