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

import
  Message_Printer, ../TCollection/TCollection_AsciiString

discard "forward decl of Message_PrinterSystemLog"
type
  Handle_Message_PrinterSystemLog* = handle[Message_PrinterSystemLog]

## ! Implementation of a message printer associated with system log.
## ! Implemented for the following systems:
## ! - Windows, through ReportEventW().
## ! - Android, through __android_log_write().
## ! - UNIX/Linux, through syslog().

type
  Message_PrinterSystemLog* {.importcpp: "Message_PrinterSystemLog",
                             header: "Message_PrinterSystemLog.hxx", bycopy.} = object of Message_Printer ##
                                                                                                   ## !
                                                                                                   ## Main
                                                                                                   ## constructor.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Puts
                                                                                                   ## a
                                                                                                   ## message
                                                                                                   ## to
                                                                                                   ## the
                                                                                                   ## system
                                                                                                   ## log.
    when defined(_WIN32):
      discard

  Message_PrinterSystemLogbase_type* = Message_Printer

proc get_type_name*(): cstring {.importcpp: "Message_PrinterSystemLog::get_type_name(@)",
                              header: "Message_PrinterSystemLog.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_PrinterSystemLog::get_type_descriptor(@)",
    header: "Message_PrinterSystemLog.hxx".}
proc DynamicType*(this: Message_PrinterSystemLog): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_PrinterSystemLog.hxx".}
proc constructMessage_PrinterSystemLog*(theEventSourceName: TCollection_AsciiString;
    theTraceLevel: Message_Gravity = Message_Info): Message_PrinterSystemLog {.
    constructor, importcpp: "Message_PrinterSystemLog(@)",
    header: "Message_PrinterSystemLog.hxx".}
proc destroyMessage_PrinterSystemLog*(this: var Message_PrinterSystemLog) {.
    importcpp: "#.~Message_PrinterSystemLog()",
    header: "Message_PrinterSystemLog.hxx".}