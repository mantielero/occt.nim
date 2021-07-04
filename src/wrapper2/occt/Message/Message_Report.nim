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

import
  Message_Gravity, Message_Level, Message_ListOfAlert, Message_MetricType,
  ../NCollection/NCollection_IndexedMap, ../NCollection/NCollection_Sequence,
  ../Standard/Standard_Mutex

discard "forward decl of Message_CompositeAlerts"
discard "forward decl of Message_Messenger"
discard "forward decl of Message_Report"
discard "forward decl of Message_Report"
type
  Handle_Message_Report* = handle[Message_Report]

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
  Message_Report* {.importcpp: "Message_Report", header: "Message_Report.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructMessage_Report*(): Message_Report {.constructor,
    importcpp: "Message_Report(@)", header: "Message_Report.hxx".}
proc AddAlert*(this: var Message_Report; theGravity: Message_Gravity;
              theAlert: handle[Message_Alert]) {.importcpp: "AddAlert",
    header: "Message_Report.hxx".}
proc GetAlerts*(this: Message_Report; theGravity: Message_Gravity): Message_ListOfAlert {.
    noSideEffect, importcpp: "GetAlerts", header: "Message_Report.hxx".}
proc HasAlert*(this: var Message_Report; theType: handle[Standard_Type]): Standard_Boolean {.
    importcpp: "HasAlert", header: "Message_Report.hxx".}
proc HasAlert*(this: var Message_Report; theType: handle[Standard_Type];
              theGravity: Message_Gravity): Standard_Boolean {.
    importcpp: "HasAlert", header: "Message_Report.hxx".}
proc IsActiveInMessenger*(this: Message_Report;
                         theMessenger: handle[Message_Messenger] = nil): Standard_Boolean {.
    noSideEffect, importcpp: "IsActiveInMessenger", header: "Message_Report.hxx".}
proc ActivateInMessenger*(this: var Message_Report; toActivate: Standard_Boolean;
                         theMessenger: handle[Message_Messenger] = nil) {.
    importcpp: "ActivateInMessenger", header: "Message_Report.hxx".}
proc UpdateActiveInMessenger*(this: var Message_Report;
                             theMessenger: handle[Message_Messenger] = nil) {.
    importcpp: "UpdateActiveInMessenger", header: "Message_Report.hxx".}
proc AddLevel*(this: var Message_Report; theLevel: ptr Message_Level;
              theName: TCollection_AsciiString) {.importcpp: "AddLevel",
    header: "Message_Report.hxx".}
proc RemoveLevel*(this: var Message_Report; theLevel: ptr Message_Level) {.
    importcpp: "RemoveLevel", header: "Message_Report.hxx".}
proc Clear*(this: var Message_Report) {.importcpp: "Clear",
                                    header: "Message_Report.hxx".}
proc Clear*(this: var Message_Report; theGravity: Message_Gravity) {.
    importcpp: "Clear", header: "Message_Report.hxx".}
proc Clear*(this: var Message_Report; theType: handle[Standard_Type]) {.
    importcpp: "Clear", header: "Message_Report.hxx".}
proc ActiveMetrics*(this: Message_Report): NCollection_IndexedMap[
    Message_MetricType] {.noSideEffect, importcpp: "ActiveMetrics",
                         header: "Message_Report.hxx".}
proc SetActiveMetric*(this: var Message_Report; theMetricType: Message_MetricType;
                     theActivate: Standard_Boolean) {.
    importcpp: "SetActiveMetric", header: "Message_Report.hxx".}
proc ClearMetrics*(this: var Message_Report) {.importcpp: "ClearMetrics",
    header: "Message_Report.hxx".}
proc Limit*(this: Message_Report): Standard_Integer {.noSideEffect,
    importcpp: "Limit", header: "Message_Report.hxx".}
proc SetLimit*(this: var Message_Report; theLimit: Standard_Integer) {.
    importcpp: "SetLimit", header: "Message_Report.hxx".}
proc Dump*(this: var Message_Report; theOS: var Standard_OStream) {.importcpp: "Dump",
    header: "Message_Report.hxx".}
proc Dump*(this: var Message_Report; theOS: var Standard_OStream;
          theGravity: Message_Gravity) {.importcpp: "Dump",
                                       header: "Message_Report.hxx".}
proc SendMessages*(this: var Message_Report; theMessenger: handle[Message_Messenger]) {.
    importcpp: "SendMessages", header: "Message_Report.hxx".}
proc SendMessages*(this: var Message_Report;
                  theMessenger: handle[Message_Messenger];
                  theGravity: Message_Gravity) {.importcpp: "SendMessages",
    header: "Message_Report.hxx".}
proc Merge*(this: var Message_Report; theOther: handle[Message_Report]) {.
    importcpp: "Merge", header: "Message_Report.hxx".}
proc Merge*(this: var Message_Report; theOther: handle[Message_Report];
           theGravity: Message_Gravity) {.importcpp: "Merge",
                                        header: "Message_Report.hxx".}
proc DumpJson*(this: Message_Report; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_Report.hxx".}
type
  Message_Reportbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Message_Report::get_type_name(@)",
                              header: "Message_Report.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_Report::get_type_descriptor(@)",
    header: "Message_Report.hxx".}
proc DynamicType*(this: Message_Report): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_Report.hxx".}