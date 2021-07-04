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
  Message_Printer, ../Standard/Standard_Address, ../Standard/Standard_OStream,
  ../TCollection/TCollection_AsciiString

discard "forward decl of Message_Report"
type
  Message_PrinterToReport* {.importcpp: "Message_PrinterToReport",
                            header: "Message_PrinterToReport.hxx", bycopy.} = object of Message_Printer ##
                                                                                                 ## !
                                                                                                 ## Create
                                                                                                 ## printer
                                                                                                 ## for
                                                                                                 ## redirecting
                                                                                                 ## messages
                                                                                                 ## into
                                                                                                 ## report.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Send
                                                                                                 ## a
                                                                                                 ## string
                                                                                                 ## message
                                                                                                 ## with
                                                                                                 ## specified
                                                                                                 ## trace
                                                                                                 ## level.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## method
                                                                                                 ## must
                                                                                                 ## be
                                                                                                 ## redefined
                                                                                                 ## in
                                                                                                 ## descendant.
    ## !< the report for sending alerts

  Message_PrinterToReportbase_type* = Message_Printer

proc get_type_name*(): cstring {.importcpp: "Message_PrinterToReport::get_type_name(@)",
                              header: "Message_PrinterToReport.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_PrinterToReport::get_type_descriptor(@)",
    header: "Message_PrinterToReport.hxx".}
proc DynamicType*(this: Message_PrinterToReport): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_PrinterToReport.hxx".}
proc constructMessage_PrinterToReport*(): Message_PrinterToReport {.constructor,
    importcpp: "Message_PrinterToReport(@)", header: "Message_PrinterToReport.hxx".}
proc destroyMessage_PrinterToReport*(this: var Message_PrinterToReport) {.
    importcpp: "#.~Message_PrinterToReport()",
    header: "Message_PrinterToReport.hxx".}
proc Report*(this: Message_PrinterToReport): handle[Message_Report] {.noSideEffect,
    importcpp: "Report", header: "Message_PrinterToReport.hxx".}
proc SetReport*(this: var Message_PrinterToReport; theReport: handle[Message_Report]) {.
    importcpp: "SetReport", header: "Message_PrinterToReport.hxx".}
proc SendStringStream*(this: Message_PrinterToReport; theStream: Standard_SStream;
                      theGravity: Message_Gravity) {.noSideEffect,
    importcpp: "SendStringStream", header: "Message_PrinterToReport.hxx".}
proc SendObject*(this: Message_PrinterToReport;
                theObject: handle[Standard_Transient]; theGravity: Message_Gravity) {.
    noSideEffect, importcpp: "SendObject", header: "Message_PrinterToReport.hxx".}
discard "forward decl of Message_PrinterToReport"
type
  Handle_Message_PrinterToReport* = handle[Message_PrinterToReport]
