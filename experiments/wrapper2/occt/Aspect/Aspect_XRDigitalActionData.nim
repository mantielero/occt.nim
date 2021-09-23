##  Copyright (c) 2020 OPEN CASCADE SAS
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
  ../Standard/Standard_TypeDef

## ! Digital input XR action data.

type
  Aspect_XRDigitalActionData* {.importcpp: "Aspect_XRDigitalActionData",
                               header: "Aspect_XRDigitalActionData.hxx", bycopy.} = object
    ActiveOrigin* {.importc: "ActiveOrigin".}: uint64_t ## !< The origin that caused this action's current state
    UpdateTime* {.importc: "UpdateTime".}: cfloat ## !< Time relative to now when this event happened. Will be negative to indicate a past time
    IsActive* {.importc: "IsActive".}: bool ## !< whether or not this action is currently available to be bound in the active action set
    IsPressed* {.importc: "IsPressed".}: bool ## !< Aspect_InputActionType_Digital state - The current state of this action; will be true if currently pressed
    IsChanged* {.importc: "IsChanged".}: bool ## !< Aspect_InputActionType_Digital state - this is true if the state has changed since the last frame
                                          ## ! Empty constructor.


proc constructAspect_XRDigitalActionData*(): Aspect_XRDigitalActionData {.
    constructor, importcpp: "Aspect_XRDigitalActionData(@)",
    header: "Aspect_XRDigitalActionData.hxx".}