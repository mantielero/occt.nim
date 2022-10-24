import message_types

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

discard "forward decl of Message_Attribute"
discard "forward decl of Message_Report"
discard "forward decl of Message_CompositeAlerts"


proc addAlert*(theReport: Handle[MessageReport];
              theAttribute: Handle[MessageAttribute]; theGravity: MessageGravity): Handle[
    MessageAlert] {.cdecl, importcpp: "Message_AlertExtended::AddAlert(@)",
                   header: "Message_AlertExtended.hxx".}
proc newMessageAlertExtended*(): MessageAlertExtended {.cdecl, constructor,
    importcpp: "Message_AlertExtended(@)", header: "Message_AlertExtended.hxx".}
proc getMessageKey*(this: MessageAlertExtended): cstring {.noSideEffect, cdecl,
    importcpp: "GetMessageKey", header: "Message_AlertExtended.hxx".}
proc attribute*(this: MessageAlertExtended): Handle[MessageAttribute] {.
    noSideEffect, cdecl, importcpp: "Attribute", header: "Message_AlertExtended.hxx".}
proc setAttribute*(this: var MessageAlertExtended;
                  theAttribute: Handle[MessageAttribute]) {.cdecl,
    importcpp: "SetAttribute", header: "Message_AlertExtended.hxx".}
proc compositeAlerts*(this: var MessageAlertExtended; theToCreate: bool = false): Handle[
    MessageCompositeAlerts] {.cdecl, importcpp: "CompositeAlerts", header: "Message_AlertExtended.hxx".}
proc supportsMerge*(this: MessageAlertExtended): bool {.noSideEffect, cdecl,
    importcpp: "SupportsMerge", header: "Message_AlertExtended.hxx".}
proc merge*(this: var MessageAlertExtended; theTarget: Handle[MessageAlert]): bool {.
    cdecl, importcpp: "Merge", header: "Message_AlertExtended.hxx".}
proc dumpJson*(this: MessageAlertExtended; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Message_AlertExtended.hxx".}

