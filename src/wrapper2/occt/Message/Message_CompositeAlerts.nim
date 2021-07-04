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
  Message_Alert, Message_Gravity, Message_ListOfAlert,
  ../Standard/Standard_Transient

## ! Class providing container of alerts

type
  Message_CompositeAlerts* {.importcpp: "Message_CompositeAlerts",
                            header: "Message_CompositeAlerts.hxx", bycopy.} = object of Standard_Transient ##
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

  Message_CompositeAlertsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Message_CompositeAlerts::get_type_name(@)",
                              header: "Message_CompositeAlerts.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_CompositeAlerts::get_type_descriptor(@)",
    header: "Message_CompositeAlerts.hxx".}
proc DynamicType*(this: Message_CompositeAlerts): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_CompositeAlerts.hxx".}
proc constructMessage_CompositeAlerts*(): Message_CompositeAlerts {.constructor,
    importcpp: "Message_CompositeAlerts(@)", header: "Message_CompositeAlerts.hxx".}
proc Alerts*(this: Message_CompositeAlerts; theGravity: Message_Gravity): Message_ListOfAlert {.
    noSideEffect, importcpp: "Alerts", header: "Message_CompositeAlerts.hxx".}
proc AddAlert*(this: var Message_CompositeAlerts; theGravity: Message_Gravity;
              theAlert: handle[Message_Alert]): Standard_Boolean {.
    importcpp: "AddAlert", header: "Message_CompositeAlerts.hxx".}
proc RemoveAlert*(this: var Message_CompositeAlerts; theGravity: Message_Gravity;
                 theAlert: handle[Message_Alert]): Standard_Boolean {.
    importcpp: "RemoveAlert", header: "Message_CompositeAlerts.hxx".}
proc HasAlert*(this: var Message_CompositeAlerts; theAlert: handle[Message_Alert]): Standard_Boolean {.
    importcpp: "HasAlert", header: "Message_CompositeAlerts.hxx".}
proc HasAlert*(this: var Message_CompositeAlerts; theType: handle[Standard_Type];
              theGravity: Message_Gravity): Standard_Boolean {.
    importcpp: "HasAlert", header: "Message_CompositeAlerts.hxx".}
proc Clear*(this: var Message_CompositeAlerts) {.importcpp: "Clear",
    header: "Message_CompositeAlerts.hxx".}
proc Clear*(this: var Message_CompositeAlerts; theGravity: Message_Gravity) {.
    importcpp: "Clear", header: "Message_CompositeAlerts.hxx".}
proc Clear*(this: var Message_CompositeAlerts; theType: handle[Standard_Type]) {.
    importcpp: "Clear", header: "Message_CompositeAlerts.hxx".}
proc DumpJson*(this: Message_CompositeAlerts; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_CompositeAlerts.hxx".}
discard "forward decl of Message_CompositeAlerts"
type
  Handle_Message_CompositeAlerts* = handle[Message_CompositeAlerts]
