import message_types
import ../tcollection/tcollection_types
##  Copyright (c) 2019 OPEN CASCADE SAS
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





proc newMessagePrinterSystemLog*(theEventSourceName: TCollectionAsciiString;
                                theTraceLevel: MessageGravity = 1.MessageGravity): MessagePrinterSystemLog {.
    cdecl, constructor, importcpp: "Message_PrinterSystemLog(@)", header: "Message_PrinterSystemLog.hxx".}
proc destroyMessagePrinterSystemLog*(this: var MessagePrinterSystemLog) {.cdecl,
    importcpp: "#.~Message_PrinterSystemLog()", header: "Message_PrinterSystemLog.hxx".}
