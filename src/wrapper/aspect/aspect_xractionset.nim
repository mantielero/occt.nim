import ../tcollection/tcollection_types
import ../standard/standard_types
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

## ! XR action set.



proc id*(this: AspectXRActionSet): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Id".}
proc rawHandle*(this: AspectXRActionSet): uint64 {.noSideEffect, cdecl,
    importcpp: "RawHandle".}
proc setRawHandle*(this: var AspectXRActionSet; theHande: uint64) {.cdecl,
    importcpp: "SetRawHandle".}
proc addAction*(this: var AspectXRActionSet; theAction: Handle[AspectXRAction]) {.
    cdecl, importcpp: "AddAction".}
proc actions*(this: AspectXRActionSet): AspectXRActionMap {.noSideEffect, cdecl,
    importcpp: "Actions".}
proc newAspectXRActionSet*(theId: TCollectionAsciiString): AspectXRActionSet {.
    cdecl, constructor, importcpp: "Aspect_XRActionSet(@)".}



