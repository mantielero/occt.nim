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


proc getTraceLevel*(this: MessagePrinter): MessageGravity {.noSideEffect, cdecl,
    importcpp: "GetTraceLevel", dynlib: tkernel.}
proc setTraceLevel*(this: var MessagePrinter; theTraceLevel: MessageGravity) {.cdecl,
    importcpp: "SetTraceLevel", dynlib: tkernel.}
proc send*(this: MessagePrinter; theString: TCollectionExtendedString;
          theGravity: MessageGravity) {.noSideEffect, cdecl, importcpp: "Send",
                                      dynlib: tkernel.}
proc send*(this: MessagePrinter; theString: cstring; theGravity: MessageGravity) {.
    noSideEffect, cdecl, importcpp: "Send", dynlib: tkernel.}
proc send*(this: MessagePrinter; theString: TCollectionAsciiString;
          theGravity: MessageGravity) {.noSideEffect, cdecl, importcpp: "Send",
                                      dynlib: tkernel.}
proc sendStringStream*(this: MessagePrinter; theStream: StandardSStream;
                      theGravity: MessageGravity) {.noSideEffect, cdecl,
    importcpp: "SendStringStream", dynlib: tkernel.}
proc sendObject*(this: MessagePrinter; theObject: Handle[StandardTransient];
                theGravity: MessageGravity) {.noSideEffect, cdecl,
    importcpp: "SendObject", dynlib: tkernel.}