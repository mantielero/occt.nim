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
  Aspect_XRAction

## ! XR action set.

type
  Aspect_XRActionSet* {.importcpp: "Aspect_XRActionSet",
                       header: "Aspect_XRActionSet.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Return
                                                                                          ## action
                                                                                          ## id.
    ## !< action set id
    ## !< action set handle
    ## !< map of actions

  Aspect_XRActionSetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Aspect_XRActionSet::get_type_name(@)",
                              header: "Aspect_XRActionSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_XRActionSet::get_type_descriptor(@)",
    header: "Aspect_XRActionSet.hxx".}
proc DynamicType*(this: Aspect_XRActionSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_XRActionSet.hxx".}
proc Id*(this: Aspect_XRActionSet): TCollection_AsciiString {.noSideEffect,
    importcpp: "Id", header: "Aspect_XRActionSet.hxx".}
proc RawHandle*(this: Aspect_XRActionSet): uint64_t {.noSideEffect,
    importcpp: "RawHandle", header: "Aspect_XRActionSet.hxx".}
proc SetRawHandle*(this: var Aspect_XRActionSet; theHande: uint64_t) {.
    importcpp: "SetRawHandle", header: "Aspect_XRActionSet.hxx".}
proc AddAction*(this: var Aspect_XRActionSet; theAction: handle[Aspect_XRAction]) {.
    importcpp: "AddAction", header: "Aspect_XRActionSet.hxx".}
proc Actions*(this: Aspect_XRActionSet): Aspect_XRActionMap {.noSideEffect,
    importcpp: "Actions", header: "Aspect_XRActionSet.hxx".}
proc constructAspect_XRActionSet*(theId: TCollection_AsciiString): Aspect_XRActionSet {.
    constructor, importcpp: "Aspect_XRActionSet(@)",
    header: "Aspect_XRActionSet.hxx".}
type
  Aspect_XRActionSetMap* = NCollection_IndexedDataMap[TCollection_AsciiString,
      handle[Aspect_XRActionSet], TCollection_AsciiString]
