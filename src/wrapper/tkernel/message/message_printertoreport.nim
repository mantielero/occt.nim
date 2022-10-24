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

discard "forward decl of Message_Report"


proc newMessagePrinterToReport*(): MessagePrinterToReport {.cdecl, constructor,
    importcpp: "Message_PrinterToReport(@)", header: "Message_PrinterToReport.hxx".}
proc destroyMessagePrinterToReport*(this: var MessagePrinterToReport) {.cdecl,
    importcpp: "#.~Message_PrinterToReport()", header: "Message_PrinterToReport.hxx".}
proc report*(this: MessagePrinterToReport): Handle[MessageReport] {.noSideEffect,
    cdecl, importcpp: "Report", header: "Message_PrinterToReport.hxx".}
proc setReport*(this: var MessagePrinterToReport; theReport: Handle[MessageReport]) {.
    cdecl, importcpp: "SetReport", header: "Message_PrinterToReport.hxx".}
proc sendStringStream*(this: MessagePrinterToReport; theStream: StandardSStream;
                      theGravity: MessageGravity) {.noSideEffect, cdecl,
    importcpp: "SendStringStream", header: "Message_PrinterToReport.hxx".}
proc sendObject*(this: MessagePrinterToReport;
                theObject: Handle[StandardTransient]; theGravity: MessageGravity) {.
    noSideEffect, cdecl, importcpp: "SendObject", header: "Message_PrinterToReport.hxx".}

