import message_types

##  Created on: 2017-06-26
##  Created by: Andrey Betenev
##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of Message_CompositeAlerts"
discard "forward decl of Message_Messenger"
discard "forward decl of Message_Report"




proc newMessageReport*(): MessageReport {.cdecl, constructor,
                                       importcpp: "Message_Report(@)",
                                       header: "Message_Report.hxx".}
proc addAlert*(this: var MessageReport; theGravity: MessageGravity;
              theAlert: Handle[MessageAlert]) {.cdecl, importcpp: "AddAlert",
    header: "Message_Report.hxx".}
proc getAlerts*(this: MessageReport; theGravity: MessageGravity): MessageListOfAlert {.
    noSideEffect, cdecl, importcpp: "GetAlerts", header: "Message_Report.hxx".}
proc hasAlert*(this: var MessageReport; theType: Handle[StandardType]): bool {.cdecl,
    importcpp: "HasAlert", header: "Message_Report.hxx".}
proc hasAlert*(this: var MessageReport; theType: Handle[StandardType];
              theGravity: MessageGravity): bool {.cdecl, importcpp: "HasAlert",
    header: "Message_Report.hxx".}
proc isActiveInMessenger*(this: MessageReport;
                         theMessenger: Handle[MessageMessenger] = cast[Handle[MessageMessenger]](nil)): bool {.
    noSideEffect, cdecl, importcpp: "IsActiveInMessenger", header: "Message_Report.hxx".}
proc activateInMessenger*(this: var MessageReport; toActivate: bool;
                         theMessenger: Handle[MessageMessenger] = cast[Handle[MessageMessenger]](nil)) {.cdecl,
    importcpp: "ActivateInMessenger", header: "Message_Report.hxx".}
proc updateActiveInMessenger*(this: var MessageReport;
                             theMessenger: Handle[MessageMessenger] = cast[Handle[MessageMessenger]](nil)) {.cdecl,
    importcpp: "UpdateActiveInMessenger", header: "Message_Report.hxx".}
proc addLevel*(this: var MessageReport; theLevel: ptr MessageLevel;
              theName: TCollectionAsciiString) {.cdecl, importcpp: "AddLevel",
    header: "Message_Report.hxx".}
proc removeLevel*(this: var MessageReport; theLevel: ptr MessageLevel) {.cdecl,
    importcpp: "RemoveLevel", header: "Message_Report.hxx".}
proc clear*(this: var MessageReport) {.cdecl, importcpp: "Clear", header: "Message_Report.hxx".}
proc clear*(this: var MessageReport; theGravity: MessageGravity) {.cdecl,
    importcpp: "Clear", header: "Message_Report.hxx".}
proc clear*(this: var MessageReport; theType: Handle[StandardType]) {.cdecl,
    importcpp: "Clear", header: "Message_Report.hxx".}
#proc activeMetrics*(this: MessageReport): NCollectionIndexedMap[MessageMetricType] {.
#    noSideEffect, cdecl, importcpp: "ActiveMetrics", header: "Message_Report.hxx".}
proc setActiveMetric*(this: var MessageReport; theMetricType: MessageMetricType;
                     theActivate: bool) {.cdecl, importcpp: "SetActiveMetric",
                                        header: "Message_Report.hxx".}
proc clearMetrics*(this: var MessageReport) {.cdecl, importcpp: "ClearMetrics",
    header: "Message_Report.hxx".}
proc limit*(this: MessageReport): cint {.noSideEffect, cdecl, importcpp: "Limit",
                                     header: "Message_Report.hxx".}
proc setLimit*(this: var MessageReport; theLimit: cint) {.cdecl, importcpp: "SetLimit",
    header: "Message_Report.hxx".}
proc dump*(this: var MessageReport; theOS: var StandardOStream) {.cdecl,
    importcpp: "Dump", header: "Message_Report.hxx".}
proc dump*(this: var MessageReport; theOS: var StandardOStream;
          theGravity: MessageGravity) {.cdecl, importcpp: "Dump", header: "Message_Report.hxx".}
proc sendMessages*(this: var MessageReport; theMessenger: Handle[MessageMessenger]) {.
    cdecl, importcpp: "SendMessages", header: "Message_Report.hxx".}
proc sendMessages*(this: var MessageReport; theMessenger: Handle[MessageMessenger];
                  theGravity: MessageGravity) {.cdecl, importcpp: "SendMessages",
    header: "Message_Report.hxx".}
proc merge*(this: var MessageReport; theOther: Handle[MessageReport]) {.cdecl,
    importcpp: "Merge", header: "Message_Report.hxx".}
proc merge*(this: var MessageReport; theOther: Handle[MessageReport];
           theGravity: MessageGravity) {.cdecl, importcpp: "Merge", header: "Message_Report.hxx".}
proc dumpJson*(this: MessageReport; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Message_Report.hxx".}
