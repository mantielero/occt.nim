import ../tcollection/tcollection_types
import aspect_types





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

## ! XR action definition.



proc id*(this: AspectXRAction): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Id".}
proc `type`*(this: AspectXRAction): AspectXRActionType {.noSideEffect, cdecl,
    importcpp: "Type".}
proc isValid*(this: AspectXRAction): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                        .}
proc rawHandle*(this: AspectXRAction): uint64 {.noSideEffect, cdecl,
    importcpp: "RawHandle".}
proc setRawHandle*(this: var AspectXRAction; theHande: uint64) {.cdecl,
    importcpp: "SetRawHandle".}
proc newAspectXRAction*(theId: TCollectionAsciiString; theType: AspectXRActionType): AspectXRAction {.
    cdecl, constructor, importcpp: "Aspect_XRAction(@)".}
## ! Map of actions with action Id as a key.




