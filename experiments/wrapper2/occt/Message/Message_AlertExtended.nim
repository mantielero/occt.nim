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
type
  MessageAlertExtended* {.importcpp: "Message_AlertExtended",
                         header: "Message_AlertExtended.hxx", bycopy.} = object of MessageAlert ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## new
                                                                                         ## instance
                                                                                         ## of
                                                                                         ## the
                                                                                         ## alert
                                                                                         ## and
                                                                                         ## put
                                                                                         ## it
                                                                                         ## into
                                                                                         ## report
                                                                                         ## with
                                                                                         ## Message_Info
                                                                                         ## gravity.
                                                                                         ##
                                                                                         ## !
                                                                                         ## It
                                                                                         ## does
                                                                                         ## nothing
                                                                                         ## if
                                                                                         ## such
                                                                                         ## kind
                                                                                         ## of
                                                                                         ## gravity
                                                                                         ## is
                                                                                         ## not
                                                                                         ## active
                                                                                         ## in
                                                                                         ## the
                                                                                         ## report
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theReport
                                                                                         ## the
                                                                                         ## message
                                                                                         ## report
                                                                                         ## where
                                                                                         ## new
                                                                                         ## alert
                                                                                         ## is
                                                                                         ## placed
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theAttribute
                                                                                         ## container
                                                                                         ## of
                                                                                         ## additional
                                                                                         ## values
                                                                                         ## of
                                                                                         ## the
                                                                                         ## alert
                                                                                         ##
                                                                                         ## !
                                                                                         ## @return
                                                                                         ## created
                                                                                         ## alert
                                                                                         ## or
                                                                                         ## NULL
                                                                                         ## if
                                                                                         ## Message_Info
                                                                                         ## is
                                                                                         ## not
                                                                                         ## active
                                                                                         ## in
                                                                                         ## report
                                                                                         ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor
    ## !< class provided hierarchical structure of alerts
    ## !< container of the alert attributes


proc addAlert*(theReport: Handle[MessageReport];
              theAttribute: Handle[MessageAttribute]; theGravity: MessageGravity): Handle[
    MessageAlert] {.importcpp: "Message_AlertExtended::AddAlert(@)",
                   header: "Message_AlertExtended.hxx".}
proc constructMessageAlertExtended*(): MessageAlertExtended {.constructor,
    importcpp: "Message_AlertExtended(@)", header: "Message_AlertExtended.hxx".}
proc getMessageKey*(this: MessageAlertExtended): StandardCString {.noSideEffect,
    importcpp: "GetMessageKey", header: "Message_AlertExtended.hxx".}
proc attribute*(this: MessageAlertExtended): Handle[MessageAttribute] {.
    noSideEffect, importcpp: "Attribute", header: "Message_AlertExtended.hxx".}
proc setAttribute*(this: var MessageAlertExtended;
                  theAttribute: Handle[MessageAttribute]) {.
    importcpp: "SetAttribute", header: "Message_AlertExtended.hxx".}
proc compositeAlerts*(this: var MessageAlertExtended; theToCreate: bool = false): Handle[
    MessageCompositeAlerts] {.importcpp: "CompositeAlerts",
                             header: "Message_AlertExtended.hxx".}
proc supportsMerge*(this: MessageAlertExtended): bool {.noSideEffect,
    importcpp: "SupportsMerge", header: "Message_AlertExtended.hxx".}
proc merge*(this: var MessageAlertExtended; theTarget: Handle[MessageAlert]): bool {.
    importcpp: "Merge", header: "Message_AlertExtended.hxx".}
proc dumpJson*(this: MessageAlertExtended; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Message_AlertExtended.hxx".}
type
  MessageAlertExtendedbaseType* = MessageAlert

proc getTypeName*(): cstring {.importcpp: "Message_AlertExtended::get_type_name(@)",
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #                             header: "Message_AlertExtended.hxx".}
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # proc getTypeDescriptor*(): Handle[StandardType] {.
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #     importcpp: "Message_AlertExtended::get_type_descriptor(@)",
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #     header: "Message_AlertExtended.hxx".}
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # proc dynamicType*(this: MessageAlertExtended): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_AlertExtended.hxx".}
discard "forward decl of Message_AlertExtended"
type
  HandleC1C1* = Handle[MessageAlertExtended]

























































