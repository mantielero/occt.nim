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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Message_Printer"
discard "forward decl of Message_Printer"
type
  HandleMessagePrinter* = Handle[MessagePrinter]

## ! Abstract interface class defining printer as output context for text messages
## !
## ! The message, besides being text string, has associated gravity
## ! level, which can be used by printer to decide either to process a message or ignore it.

type
  MessagePrinter* {.importcpp: "Message_Printer", header: "Message_Printer.hxx",
                   bycopy.} = object of StandardTransient ## ! Return trace level used for filtering messages;
                                                     ## ! messages with lover gravity will be ignored.
                                                     ## ! Empty constructor with Message_Info trace level

  MessagePrinterbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Message_Printer::get_type_name(@)",
                            header: "Message_Printer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Message_Printer::get_type_descriptor(@)",
    header: "Message_Printer.hxx".}
proc dynamicType*(this: MessagePrinter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_Printer.hxx".}
proc getTraceLevel*(this: MessagePrinter): MessageGravity {.noSideEffect,
    importcpp: "GetTraceLevel", header: "Message_Printer.hxx".}
proc setTraceLevel*(this: var MessagePrinter; theTraceLevel: MessageGravity) {.
    importcpp: "SetTraceLevel", header: "Message_Printer.hxx".}
proc send*(this: MessagePrinter; theString: TCollectionExtendedString;
          theGravity: MessageGravity) {.noSideEffect, importcpp: "Send",
                                      header: "Message_Printer.hxx".}
proc send*(this: MessagePrinter; theString: StandardCString;
          theGravity: MessageGravity) {.noSideEffect, importcpp: "Send",
                                      header: "Message_Printer.hxx".}
proc send*(this: MessagePrinter; theString: TCollectionAsciiString;
          theGravity: MessageGravity) {.noSideEffect, importcpp: "Send",
                                      header: "Message_Printer.hxx".}
proc sendStringStream*(this: MessagePrinter; theStream: StandardSStream;
                      theGravity: MessageGravity) {.noSideEffect,
    importcpp: "SendStringStream", header: "Message_Printer.hxx".}
proc sendObject*(this: MessagePrinter; theObject: Handle[StandardTransient];
                theGravity: MessageGravity) {.noSideEffect,
    importcpp: "SendObject", header: "Message_Printer.hxx".}
