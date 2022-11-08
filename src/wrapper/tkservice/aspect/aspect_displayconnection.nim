import ../../tkernel/tcollection/tcollection_types
import aspect_types
import x11/xlib

when defined(linux):
    export xlib



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

when not defined(win32) and (not defined(apple) or defined(macosx_Use_Glx)) and
    not defined(android) and not defined(qnx) and not defined(emscripten):
  discard
## ! This class creates and provides connection with X server.
## ! Raises exception if can not connect to X server.
## ! On Windows and Mac OS X (in case when Cocoa used) platforms this class do nothing.
## ! WARRNING: Do not close display connection manualy!



proc newAspectDisplayConnection*(): AspectDisplayConnection {.cdecl, constructor,
    importcpp: "Aspect_DisplayConnection(@)", header: "Aspect_DisplayConnection.hxx".}
proc destroyAspectDisplayConnection*(this: var AspectDisplayConnection) {.cdecl,
    importcpp: "#.~Aspect_DisplayConnection()", header: "Aspect_DisplayConnection.hxx".}
proc newAspectDisplayConnection*(theDisplayName: TCollectionAsciiString): AspectDisplayConnection {.
    cdecl, constructor, importcpp: "Aspect_DisplayConnection(@)", header: "Aspect_DisplayConnection.hxx".}
proc newAspectDisplayConnection*(theDisplay: ptr Display): AspectDisplayConnection {.
    cdecl, constructor, importcpp: "Aspect_DisplayConnection(@)", header: "Aspect_DisplayConnection.hxx".}
proc getDisplay*(this: var AspectDisplayConnection): ptr Display {.cdecl,
    importcpp: "GetDisplay", header: "Aspect_DisplayConnection.hxx".}
proc isOwnDisplay*(this: AspectDisplayConnection): bool {.noSideEffect, cdecl,
    importcpp: "IsOwnDisplay", header: "Aspect_DisplayConnection.hxx".}
proc getAtom*(this: AspectDisplayConnection; theAtom: AspectXAtom): Atom {.
    noSideEffect, cdecl, importcpp: "GetAtom", header: "Aspect_DisplayConnection.hxx".}
proc getDisplayName*(this: var AspectDisplayConnection): TCollectionAsciiString {.
    cdecl, importcpp: "GetDisplayName", header: "Aspect_DisplayConnection.hxx".}
proc init*(this: var AspectDisplayConnection; theDisplay: ptr Display) {.cdecl,
    importcpp: "Init", header: "Aspect_DisplayConnection.hxx".}



