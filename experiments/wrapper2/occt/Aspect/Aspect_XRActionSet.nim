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

## ! XR action set.

type
  AspectXRActionSet* {.importcpp: "Aspect_XRActionSet",
                      header: "Aspect_XRActionSet.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Return
                                                                                        ## action
                                                                                        ## id.
    ## !< action set id
    ## !< action set handle
    ## !< map of actions

  AspectXRActionSetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Aspect_XRActionSet::get_type_name(@)",
                            header: "Aspect_XRActionSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_XRActionSet::get_type_descriptor(@)",
    header: "Aspect_XRActionSet.hxx".}
proc dynamicType*(this: AspectXRActionSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_XRActionSet.hxx".}
proc id*(this: AspectXRActionSet): TCollectionAsciiString {.noSideEffect,
    importcpp: "Id", header: "Aspect_XRActionSet.hxx".}
proc rawHandle*(this: AspectXRActionSet): uint64T {.noSideEffect,
    importcpp: "RawHandle", header: "Aspect_XRActionSet.hxx".}
proc setRawHandle*(this: var AspectXRActionSet; theHande: uint64T) {.
    importcpp: "SetRawHandle", header: "Aspect_XRActionSet.hxx".}
proc addAction*(this: var AspectXRActionSet; theAction: Handle[AspectXRAction]) {.
    importcpp: "AddAction", header: "Aspect_XRActionSet.hxx".}
proc actions*(this: AspectXRActionSet): AspectXRActionMap {.noSideEffect,
    importcpp: "Actions", header: "Aspect_XRActionSet.hxx".}
proc constructAspectXRActionSet*(theId: TCollectionAsciiString): AspectXRActionSet {.
    constructor, importcpp: "Aspect_XRActionSet(@)",
    header: "Aspect_XRActionSet.hxx".}
type
  AspectXRActionSetMap* = NCollectionIndexedDataMap[TCollectionAsciiString,
      Handle[AspectXRActionSet], TCollectionAsciiString]

