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
discard "forward decl of Message_Report"
type
  HandleMessageReport* = Handle[MessageReport]

## ! Container for alert messages, sorted according to their gravity.
## !
## ! For each gravity level, alerts are stored in simple list.
## ! If alert being added can be merged with another alert of the same
## ! type already in the list, it is merged and not added to the list.
## !
## ! This class is intended to be used as follows:
## !
## ! - In the process of execution, algorithm fills report by alert objects
## !   using methods AddAlert()
## !
## ! - The result can be queried for presence of particular alert using
## !   methods HasAlert()
## !
## ! - The reports produced by nested or sequentially executed algorithms
## !   can be collected in one using method Merge()
## !
## ! - The report can be shown to the user either as plain text with method
## !   Dump() or in more advanced way, by iterating over lists returned by GetAlerts()
## !
## ! - Report can be cleared by methods Clear() (usually after reporting)
## !
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report

type
  MessageReport* {.importcpp: "Message_Report", header: "Message_Report.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## class
                                                                                                           ## provided
                                                                                                           ## hierarchy
                                                                                                           ## of
                                                                                                           ## alerts
                                                                                                           ## if
                                                                                                           ## created
                                                                                                           ## or
                                                                                                           ## create
                                                                                                           ## if
                                                                                                           ## the
                                                                                                           ## parameter
                                                                                                           ## is
                                                                                                           ## true
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## isCreate
                                                                                                           ## if
                                                                                                           ## composite
                                                                                                           ## alert
                                                                                                           ## has
                                                                                                           ## not
                                                                                                           ## been
                                                                                                           ## created
                                                                                                           ## for
                                                                                                           ## this
                                                                                                           ## alert,
                                                                                                           ## it
                                                                                                           ## should
                                                                                                           ## be
                                                                                                           ## created
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @return
                                                                                                           ## instance
                                                                                                           ## or
                                                                                                           ## NULL
    ## !< container of alerts
    ## !< container of active levels, new alerts are added below the latest level
    ## !< metrics to compute on alerts
    ## !< Maximum number of collected alerts on the top level
    ## ! state whether the report is activated in messenger


proc constructMessageReport*(): MessageReport {.constructor,
    importcpp: "Message_Report(@)", header: "Message_Report.hxx".}
proc addAlert*(this: var MessageReport; theGravity: MessageGravity;
              theAlert: Handle[MessageAlert]) {.importcpp: "AddAlert",
    header: "Message_Report.hxx".}
proc getAlerts*(this: MessageReport; theGravity: MessageGravity): MessageListOfAlert {.
    noSideEffect, importcpp: "GetAlerts", header: "Message_Report.hxx".}
proc hasAlert*(this: var MessageReport; theType: Handle[StandardType]): StandardBoolean {.
    importcpp: "HasAlert", header: "Message_Report.hxx".}
proc hasAlert*(this: var MessageReport; theType: Handle[StandardType];
              theGravity: MessageGravity): StandardBoolean {.importcpp: "HasAlert",
    header: "Message_Report.hxx".}
proc isActiveInMessenger*(this: MessageReport;
                         theMessenger: Handle[MessageMessenger] = nil): StandardBoolean {.
    noSideEffect, importcpp: "IsActiveInMessenger", header: "Message_Report.hxx".}
proc activateInMessenger*(this: var MessageReport; toActivate: StandardBoolean;
                         theMessenger: Handle[MessageMessenger] = nil) {.
    importcpp: "ActivateInMessenger", header: "Message_Report.hxx".}
proc updateActiveInMessenger*(this: var MessageReport;
                             theMessenger: Handle[MessageMessenger] = nil) {.
    importcpp: "UpdateActiveInMessenger", header: "Message_Report.hxx".}
proc addLevel*(this: var MessageReport; theLevel: ptr MessageLevel;
              theName: TCollectionAsciiString) {.importcpp: "AddLevel",
    header: "Message_Report.hxx".}
proc removeLevel*(this: var MessageReport; theLevel: ptr MessageLevel) {.
    importcpp: "RemoveLevel", header: "Message_Report.hxx".}
proc clear*(this: var MessageReport) {.importcpp: "Clear",
                                   header: "Message_Report.hxx".}
proc clear*(this: var MessageReport; theGravity: MessageGravity) {.importcpp: "Clear",
    header: "Message_Report.hxx".}
proc clear*(this: var MessageReport; theType: Handle[StandardType]) {.
    importcpp: "Clear", header: "Message_Report.hxx".}
proc activeMetrics*(this: MessageReport): NCollectionIndexedMap[MessageMetricType] {.
    noSideEffect, importcpp: "ActiveMetrics", header: "Message_Report.hxx".}
proc setActiveMetric*(this: var MessageReport; theMetricType: MessageMetricType;
                     theActivate: StandardBoolean) {.importcpp: "SetActiveMetric",
    header: "Message_Report.hxx".}
proc clearMetrics*(this: var MessageReport) {.importcpp: "ClearMetrics",
    header: "Message_Report.hxx".}
proc limit*(this: MessageReport): StandardInteger {.noSideEffect, importcpp: "Limit",
    header: "Message_Report.hxx".}
proc setLimit*(this: var MessageReport; theLimit: StandardInteger) {.
    importcpp: "SetLimit", header: "Message_Report.hxx".}
proc dump*(this: var MessageReport; theOS: var StandardOStream) {.importcpp: "Dump",
    header: "Message_Report.hxx".}
proc dump*(this: var MessageReport; theOS: var StandardOStream;
          theGravity: MessageGravity) {.importcpp: "Dump",
                                      header: "Message_Report.hxx".}
proc sendMessages*(this: var MessageReport; theMessenger: Handle[MessageMessenger]) {.
    importcpp: "SendMessages", header: "Message_Report.hxx".}
proc sendMessages*(this: var MessageReport; theMessenger: Handle[MessageMessenger];
                  theGravity: MessageGravity) {.importcpp: "SendMessages",
    header: "Message_Report.hxx".}
proc merge*(this: var MessageReport; theOther: Handle[MessageReport]) {.
    importcpp: "Merge", header: "Message_Report.hxx".}
proc merge*(this: var MessageReport; theOther: Handle[MessageReport];
           theGravity: MessageGravity) {.importcpp: "Merge",
                                       header: "Message_Report.hxx".}
proc dumpJson*(this: MessageReport; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_Report.hxx".}
type
  MessageReportbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Message_Report::get_type_name(@)",
                            header: "Message_Report.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Message_Report::get_type_descriptor(@)",
    header: "Message_Report.hxx".}
proc dynamicType*(this: MessageReport): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_Report.hxx".}

