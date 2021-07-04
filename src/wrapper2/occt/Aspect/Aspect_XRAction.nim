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
  Aspect_XRActionType, ../NCollection/NCollection_IndexedDataMap,
  ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString

## ! XR action definition.

type
  Aspect_XRAction* {.importcpp: "Aspect_XRAction", header: "Aspect_XRAction.hxx",
                    bycopy.} = object of Standard_Transient ## ! Return action id.
    ## !< action id
    ## !< action handle
    ## !< action type

  Aspect_XRActionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Aspect_XRAction::get_type_name(@)",
                              header: "Aspect_XRAction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_XRAction::get_type_descriptor(@)",
    header: "Aspect_XRAction.hxx".}
proc DynamicType*(this: Aspect_XRAction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_XRAction.hxx".}
proc Id*(this: Aspect_XRAction): TCollection_AsciiString {.noSideEffect,
    importcpp: "Id", header: "Aspect_XRAction.hxx".}
proc Type*(this: Aspect_XRAction): Aspect_XRActionType {.noSideEffect,
    importcpp: "Type", header: "Aspect_XRAction.hxx".}
proc IsValid*(this: Aspect_XRAction): bool {.noSideEffect, importcpp: "IsValid",
    header: "Aspect_XRAction.hxx".}
proc RawHandle*(this: Aspect_XRAction): uint64_t {.noSideEffect,
    importcpp: "RawHandle", header: "Aspect_XRAction.hxx".}
proc SetRawHandle*(this: var Aspect_XRAction; theHande: uint64_t) {.
    importcpp: "SetRawHandle", header: "Aspect_XRAction.hxx".}
proc constructAspect_XRAction*(theId: TCollection_AsciiString;
                              theType: Aspect_XRActionType): Aspect_XRAction {.
    constructor, importcpp: "Aspect_XRAction(@)", header: "Aspect_XRAction.hxx".}
## ! Map of actions with action Id as a key.

type
  Aspect_XRActionMap* = NCollection_IndexedDataMap[TCollection_AsciiString,
      handle[Aspect_XRAction], TCollection_AsciiString]
