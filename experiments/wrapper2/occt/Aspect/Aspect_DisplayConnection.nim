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

type
  AspectDisplayConnection* {.importcpp: "Aspect_DisplayConnection",
                            header: "Aspect_DisplayConnection.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Default
                                                                                                    ## constructor.
                                                                                                    ## Creates
                                                                                                    ## connection
                                                                                                    ## with
                                                                                                    ## display
                                                                                                    ## name
                                                                                                    ## taken
                                                                                                    ## from
                                                                                                    ## "DISPLAY"
                                                                                                    ## environment
                                                                                                    ## variable
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## To
                                                                                                    ## protect
                                                                                                    ## the
                                                                                                    ## connection
                                                                                                    ## from
                                                                                                    ## closing
                                                                                                    ## copying
                                                                                                    ## allowed
                                                                                                    ## only
                                                                                                    ## through
                                                                                                    ## the
                                                                                                    ## handles.


proc constructAspectDisplayConnection*(): AspectDisplayConnection {.constructor,
    importcpp: "Aspect_DisplayConnection(@)",
    header: "Aspect_DisplayConnection.hxx".}
proc destroyAspectDisplayConnection*(this: var AspectDisplayConnection) {.
    importcpp: "#.~Aspect_DisplayConnection()",
    header: "Aspect_DisplayConnection.hxx".}
## !!!Ignored construct:  # ! defined ( _WIN32 ) && ( ! defined ( __APPLE__ ) || defined ( MACOSX_USE_GLX ) ) && ! defined ( __ANDROID__ ) && ! defined ( __QNX__ ) && ! defined ( __EMSCRIPTEN__ ) [NewLine] ! Constructor. Creates connection with display specified in theDisplayName.
## ! Display name should be in format "hostname:number" or "hostname:number.screen_number", where:
## ! hostname      - Specifies the name of the host machine on which the display is physically attached.
## ! number        - Specifies the number of the display server on that host machine.
## ! screen_number - Specifies the screen to be used on that server. Optional variable. Aspect_DisplayConnection ( const TCollection_AsciiString & theDisplayName ) ;
## Error: identifier expected, but got: ! Constructor. Creates connection with display specified in theDisplayName.
## ! Display name should be in format "hostname:number" or "hostname:number.screen_number", where:
## ! hostname      - Specifies the name of the host machine on which the display is physically attached.
## ! number        - Specifies the number of the display server on that host machine.
## ! screen_number - Specifies the screen to be used on that server. Optional variable.!!!

proc constructAspectDisplayConnection*(theDisplay: ptr Display): AspectDisplayConnection {.
    constructor, importcpp: "Aspect_DisplayConnection(@)",
    header: "Aspect_DisplayConnection.hxx".}
proc getDisplay*(this: var AspectDisplayConnection): ptr Display {.
    importcpp: "GetDisplay", header: "Aspect_DisplayConnection.hxx".}
proc isOwnDisplay*(this: AspectDisplayConnection): bool {.noSideEffect,
    importcpp: "IsOwnDisplay", header: "Aspect_DisplayConnection.hxx".}
proc getAtom*(this: AspectDisplayConnection; theAtom: AspectXAtom): Atom {.
    noSideEffect, importcpp: "GetAtom", header: "Aspect_DisplayConnection.hxx".}
proc getDisplayName*(this: var AspectDisplayConnection): TCollectionAsciiString {.
    importcpp: "GetDisplayName", header: "Aspect_DisplayConnection.hxx".}
proc init*(this: var AspectDisplayConnection; theDisplay: ptr Display) {.
    importcpp: "Init", header: "Aspect_DisplayConnection.hxx".}
type
  AspectDisplayConnectionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Aspect_DisplayConnection::get_type_name(@)",
                            header: "Aspect_DisplayConnection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_DisplayConnection::get_type_descriptor(@)",
    header: "Aspect_DisplayConnection.hxx".}
proc dynamicType*(this: AspectDisplayConnection): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Aspect_DisplayConnection.hxx".}
discard "forward decl of Aspect_DisplayConnection"
type
  HandleAspectDisplayConnection* = Handle[AspectDisplayConnection]

