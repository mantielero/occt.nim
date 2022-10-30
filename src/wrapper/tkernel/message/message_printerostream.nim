import message_types
import ../standard/standard_types
    
##  Created on: 2001-01-06
##  Created by: OCC Team
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of Message_PrinterOStream"




proc setConsoleTextColor*(theOStream: ptr StandardOStream;
                         theTextColor: MessageConsoleColor;
                         theIsIntenseText: bool = false) {.cdecl,
    importcpp: "Message_PrinterOStream::SetConsoleTextColor(@)", header: "Message_PrinterOStream.hxx".}
proc newMessagePrinterOStream*(theTraceLevel: MessageGravity = 1.MessageGravity): MessagePrinterOStream {.
    cdecl, constructor, importcpp: "Message_PrinterOStream(@)", header: "Message_PrinterOStream.hxx".}
proc newMessagePrinterOStream*(theFileName: cstring; theDoAppend: bool;
                              theTraceLevel: MessageGravity = 1.MessageGravity): MessagePrinterOStream {.
    cdecl, constructor, importcpp: "Message_PrinterOStream(@)", header: "Message_PrinterOStream.hxx".}
proc close*(this: var MessagePrinterOStream) {.cdecl, importcpp: "Close",
    header: "Message_PrinterOStream.hxx".}
proc destroyMessagePrinterOStream*(this: var MessagePrinterOStream) {.cdecl,
    importcpp: "#.~Message_PrinterOStream()", header: "Message_PrinterOStream.hxx".}
proc getStream*(this: MessagePrinterOStream): var StandardOStream {.noSideEffect,
    cdecl, importcpp: "GetStream", header: "Message_PrinterOStream.hxx".}
proc toColorize*(this: MessagePrinterOStream): bool {.noSideEffect, cdecl,
    importcpp: "ToColorize", header: "Message_PrinterOStream.hxx".}
proc setToColorize*(this: var MessagePrinterOStream; theToColorize: bool) {.cdecl,
    importcpp: "SetToColorize", header: "Message_PrinterOStream.hxx".}
