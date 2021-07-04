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

import
  ../Standard/Standard, ../Standard/Standard_Type, Message_Gravity,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString, ../Standard/Standard_SStream

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Message_Printer"
discard "forward decl of Message_Printer"
type
  Handle_Message_Printer* = handle[Message_Printer]

## ! Abstract interface class defining printer as output context for text messages
## !
## ! The message, besides being text string, has associated gravity
## ! level, which can be used by printer to decide either to process a message or ignore it.

type
  Message_Printer* {.importcpp: "Message_Printer", header: "Message_Printer.hxx",
                    bycopy.} = object of Standard_Transient ## ! Return trace level used for filtering messages;
                                                       ## ! messages with lover gravity will be ignored.
                                                       ## ! Empty constructor with Message_Info trace level

  Message_Printerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Message_Printer::get_type_name(@)",
                              header: "Message_Printer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_Printer::get_type_descriptor(@)",
    header: "Message_Printer.hxx".}
proc DynamicType*(this: Message_Printer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_Printer.hxx".}
proc GetTraceLevel*(this: Message_Printer): Message_Gravity {.noSideEffect,
    importcpp: "GetTraceLevel", header: "Message_Printer.hxx".}
proc SetTraceLevel*(this: var Message_Printer; theTraceLevel: Message_Gravity) {.
    importcpp: "SetTraceLevel", header: "Message_Printer.hxx".}
proc Send*(this: Message_Printer; theString: TCollection_ExtendedString;
          theGravity: Message_Gravity) {.noSideEffect, importcpp: "Send",
                                       header: "Message_Printer.hxx".}
proc Send*(this: Message_Printer; theString: Standard_CString;
          theGravity: Message_Gravity) {.noSideEffect, importcpp: "Send",
                                       header: "Message_Printer.hxx".}
proc Send*(this: Message_Printer; theString: TCollection_AsciiString;
          theGravity: Message_Gravity) {.noSideEffect, importcpp: "Send",
                                       header: "Message_Printer.hxx".}
proc SendStringStream*(this: Message_Printer; theStream: Standard_SStream;
                      theGravity: Message_Gravity) {.noSideEffect,
    importcpp: "SendStringStream", header: "Message_Printer.hxx".}
proc SendObject*(this: Message_Printer; theObject: handle[Standard_Transient];
                theGravity: Message_Gravity) {.noSideEffect,
    importcpp: "SendObject", header: "Message_Printer.hxx".}