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

## ! Class providing container of alerts

type
  MessageCompositeAlerts* {.importcpp: "Message_CompositeAlerts",
                           header: "Message_CompositeAlerts.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor
                                                                                                  ##
                                                                                                  ## store
                                                                                                  ## messages
                                                                                                  ## in
                                                                                                  ## a
                                                                                                  ## lists
                                                                                                  ## sorted
                                                                                                  ## by
                                                                                                  ## gravity;
                                                                                                  ##
                                                                                                  ## here
                                                                                                  ## we
                                                                                                  ## rely
                                                                                                  ## on
                                                                                                  ## knowledge
                                                                                                  ## that
                                                                                                  ## Message_Fail
                                                                                                  ## is
                                                                                                  ## the
                                                                                                  ## last
                                                                                                  ## element
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## enum
    ## !< container of child alert for each type of gravity


proc newMessageCompositeAlerts*(): MessageCompositeAlerts {.cdecl, constructor,
    importcpp: "Message_CompositeAlerts(@)", dynlib: tkernel.}
proc alerts*(this: MessageCompositeAlerts; theGravity: MessageGravity): MessageListOfAlert {.
    noSideEffect, cdecl, importcpp: "Alerts", dynlib: tkernel.}
proc addAlert*(this: var MessageCompositeAlerts; theGravity: MessageGravity;
              theAlert: Handle[MessageAlert]): bool {.cdecl, importcpp: "AddAlert",
    dynlib: tkernel.}
proc removeAlert*(this: var MessageCompositeAlerts; theGravity: MessageGravity;
                 theAlert: Handle[MessageAlert]): bool {.cdecl,
    importcpp: "RemoveAlert", dynlib: tkernel.}
proc hasAlert*(this: var MessageCompositeAlerts; theAlert: Handle[MessageAlert]): bool {.
    cdecl, importcpp: "HasAlert", dynlib: tkernel.}
proc hasAlert*(this: var MessageCompositeAlerts; theType: Handle[StandardType];
              theGravity: MessageGravity): bool {.cdecl, importcpp: "HasAlert",
    dynlib: tkernel.}
proc clear*(this: var MessageCompositeAlerts) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc clear*(this: var MessageCompositeAlerts; theGravity: MessageGravity) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
proc clear*(this: var MessageCompositeAlerts; theType: Handle[StandardType]) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
proc dumpJson*(this: MessageCompositeAlerts; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}
type
  HandleMessageCompositeAlerts* = Handle[MessageCompositeAlerts]
