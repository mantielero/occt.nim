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

  MessageCompositeAlertsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Message_CompositeAlerts::get_type_name(@)",
                            header: "Message_CompositeAlerts.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Message_CompositeAlerts::get_type_descriptor(@)",
    header: "Message_CompositeAlerts.hxx".}
proc dynamicType*(this: MessageCompositeAlerts): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_CompositeAlerts.hxx".}
proc constructMessageCompositeAlerts*(): MessageCompositeAlerts {.constructor,
    importcpp: "Message_CompositeAlerts(@)", header: "Message_CompositeAlerts.hxx".}
proc alerts*(this: MessageCompositeAlerts; theGravity: MessageGravity): MessageListOfAlert {.
    noSideEffect, importcpp: "Alerts", header: "Message_CompositeAlerts.hxx".}
proc addAlert*(this: var MessageCompositeAlerts; theGravity: MessageGravity;
              theAlert: Handle[MessageAlert]): StandardBoolean {.
    importcpp: "AddAlert", header: "Message_CompositeAlerts.hxx".}
proc removeAlert*(this: var MessageCompositeAlerts; theGravity: MessageGravity;
                 theAlert: Handle[MessageAlert]): StandardBoolean {.
    importcpp: "RemoveAlert", header: "Message_CompositeAlerts.hxx".}
proc hasAlert*(this: var MessageCompositeAlerts; theAlert: Handle[MessageAlert]): StandardBoolean {.
    importcpp: "HasAlert", header: "Message_CompositeAlerts.hxx".}
proc hasAlert*(this: var MessageCompositeAlerts; theType: Handle[StandardType];
              theGravity: MessageGravity): StandardBoolean {.importcpp: "HasAlert",
    header: "Message_CompositeAlerts.hxx".}
proc clear*(this: var MessageCompositeAlerts) {.importcpp: "Clear",
    header: "Message_CompositeAlerts.hxx".}
proc clear*(this: var MessageCompositeAlerts; theGravity: MessageGravity) {.
    importcpp: "Clear", header: "Message_CompositeAlerts.hxx".}
proc clear*(this: var MessageCompositeAlerts; theType: Handle[StandardType]) {.
    importcpp: "Clear", header: "Message_CompositeAlerts.hxx".}
proc dumpJson*(this: MessageCompositeAlerts; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_CompositeAlerts.hxx".}
discard "forward decl of Message_CompositeAlerts"
type
  HandleMessageCompositeAlerts* = Handle[MessageCompositeAlerts]


