import ../tcollection/tcollection_types
import aspect_types





##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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



proc newAspectDisplayConnection*(): AspectDisplayConnection {.cdecl, constructor,
    importcpp: "Aspect_DisplayConnection(@)".}
proc destroyAspectDisplayConnection*(this: var AspectDisplayConnection) {.cdecl,
    importcpp: "#.~Aspect_DisplayConnection()".}
proc newAspectDisplayConnection*(theDisplayName: TCollectionAsciiString): AspectDisplayConnection {.
    cdecl, constructor, importcpp: "Aspect_DisplayConnection(@)".}
proc newAspectDisplayConnection*(theDisplay: ptr AspectXDisplay): AspectDisplayConnection {.
    cdecl, constructor, importcpp: "Aspect_DisplayConnection(@)".}
proc getDisplayAspect*(this: var AspectDisplayConnection): ptr AspectXDisplay {.cdecl,
    importcpp: "GetDisplayAspect".}
proc isOwnDisplay*(this: AspectDisplayConnection): bool {.noSideEffect, cdecl,
    importcpp: "IsOwnDisplay".}
proc getAtom*(this: AspectDisplayConnection; theAtom: AspectXAtom): uint64 {.
    noSideEffect, cdecl, importcpp: "GetAtom".}
proc getDisplayName*(this: var AspectDisplayConnection): TCollectionAsciiString {.
    cdecl, importcpp: "GetDisplayName".}
proc init*(this: var AspectDisplayConnection; theDisplay: ptr AspectXDisplay) {.cdecl,
    importcpp: "Init".}
proc getDefaultVisualInfo*(this: AspectDisplayConnection): ptr AspectXVisualInfo {.
    noSideEffect, cdecl, importcpp: "GetDefaultVisualInfo".}
proc getDefaultFBConfig*(this: AspectDisplayConnection): AspectFBConfig {.
    noSideEffect, cdecl, importcpp: "GetDefaultFBConfig".}
proc setDefaultVisualInfo*(this: var AspectDisplayConnection;
                          theVisual: ptr AspectXVisualInfo;
                          theFBConfig: AspectFBConfig) {.cdecl,
    importcpp: "SetDefaultVisualInfo".}
#proc newAspectDisplayConnection*(theDisplay: ptr Display): AspectDisplayConnection {.
#    cdecl, constructor, importcpp: "Aspect_DisplayConnection(@)".}
proc getDisplay*(this: var AspectDisplayConnection): ptr Display {.cdecl,
    importcpp: "GetDisplay".}
proc getDefaultVisualInfoX*(this: AspectDisplayConnection): ptr XVisualInfo {.
    noSideEffect, cdecl, importcpp: "GetDefaultVisualInfoX".}
proc setDefaultVisualInfo*(this: var AspectDisplayConnection;
                          theVisual: ptr XVisualInfo; theFBConfig: AspectFBConfig) {.
    cdecl, importcpp: "SetDefaultVisualInfo".}
proc getAtomX*(this: AspectDisplayConnection; theAtom: AspectXAtom): Atom {.
    noSideEffect, cdecl, importcpp: "GetAtomX".}
#proc init*(this: var AspectDisplayConnection; theDisplay: ptr Display) {.cdecl,
#    importcpp: "Init".}



