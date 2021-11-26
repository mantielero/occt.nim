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
    MessageAlert] {.cdecl, importcpp: "Message_AlertExtended::AddAlert(@)",
                   dynlib: tkernel.}
proc newMessageAlertExtended*(): MessageAlertExtended {.cdecl, constructor,
    importcpp: "Message_AlertExtended(@)", dynlib: tkernel.}
proc getMessageKey*(this: MessageAlertExtended): cstring {.noSideEffect, cdecl,
    importcpp: "GetMessageKey", dynlib: tkernel.}
proc attribute*(this: MessageAlertExtended): Handle[MessageAttribute] {.
    noSideEffect, cdecl, importcpp: "Attribute", dynlib: tkernel.}
proc setAttribute*(this: var MessageAlertExtended;
                  theAttribute: Handle[MessageAttribute]) {.cdecl,
    importcpp: "SetAttribute", dynlib: tkernel.}
proc compositeAlerts*(this: var MessageAlertExtended; theToCreate: bool = false): Handle[
    MessageCompositeAlerts] {.cdecl, importcpp: "CompositeAlerts", dynlib: tkernel.}
proc supportsMerge*(this: MessageAlertExtended): bool {.noSideEffect, cdecl,
    importcpp: "SupportsMerge", dynlib: tkernel.}
proc merge*(this: var MessageAlertExtended; theTarget: Handle[MessageAlert]): bool {.
    cdecl, importcpp: "Merge", dynlib: tkernel.}
proc dumpJson*(this: MessageAlertExtended; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}
type
  HandleMessageAlertExtended* = Handle[MessageAlertExtended]
