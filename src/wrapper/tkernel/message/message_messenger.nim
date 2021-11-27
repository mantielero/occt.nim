##  Created on: 2007-06-28
##  Created by: OCC Team
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

discard "forward decl of Message_Printer"
when defined(AddPrinter):
  discard
discard "forward decl of Message_Messenger"
type
  HandleMessageMessenger* = Handle[MessageMessenger]

## ! Messenger is API class providing general-purpose interface for
## ! libraries that may issue text messages without knowledge
## ! of how these messages will be further processed.
## !
## ! The messenger contains a sequence of "printers" which can be
## ! customized by the application, and dispatches every received
## ! message to all the printers.
## !
## ! For convenience, a set of methods Send...() returning a string
## ! stream buffer is defined for use of stream-like syntax with operator <<
## !
## ! Example:
## ! ~~~~~
## ! Messenger->SendFail() << " Unknown fail at line " << aLineNo << " in file " << aFile;
## ! ~~~~~
## !
## ! The message is sent to messenger on destruction of the stream buffer,
## ! call to Flush(), or passing manipulator std::ends, std::endl, or std::flush.
## ! Empty messages are not sent except if manipulator is used.

type
  MessageMessenger* {.importcpp: "Message_Messenger",
                     header: "Message_Messenger.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Auxiliary
                                                                                      ## class
                                                                                      ## wrapping
                                                                                      ## std::stringstream
                                                                                      ## thus
                                                                                      ## allowing
                                                                                      ## constructing
                                                                                      ##
                                                                                      ## !
                                                                                      ## message
                                                                                      ## via
                                                                                      ## stream
                                                                                      ## interface,
                                                                                      ## and
                                                                                      ## putting
                                                                                      ## result
                                                                                      ## into
                                                                                      ## its
                                                                                      ## creator
                                                                                      ##
                                                                                      ## !
                                                                                      ## Message_Messenger
                                                                                      ## within
                                                                                      ## destructor.
                                                                                      ##
                                                                                      ## !
                                                                                      ##
                                                                                      ## !
                                                                                      ## It
                                                                                      ## is
                                                                                      ## intended
                                                                                      ## to
                                                                                      ## be
                                                                                      ## used
                                                                                      ## either
                                                                                      ## as
                                                                                      ## temporary
                                                                                      ## object
                                                                                      ## or
                                                                                      ## as
                                                                                      ## local
                                                                                      ##
                                                                                      ## !
                                                                                      ## variable,
                                                                                      ## note
                                                                                      ## that
                                                                                      ## content
                                                                                      ## will
                                                                                      ## be
                                                                                      ## lost
                                                                                      ## if
                                                                                      ## it
                                                                                      ## is
                                                                                      ## copied.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor;
                                                                                      ## initializes
                                                                                      ## by
                                                                                      ## single
                                                                                      ## printer
                                                                                      ## directed
                                                                                      ## to
                                                                                      ## std::cout.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Note:
                                                                                      ## the
                                                                                      ## default
                                                                                      ## messenger
                                                                                      ## is
                                                                                      ## not
                                                                                      ## empty
                                                                                      ## but
                                                                                      ## directed
                                                                                      ## to
                                                                                      ## cout
                                                                                      ##
                                                                                      ## !
                                                                                      ## in
                                                                                      ## order
                                                                                      ## to
                                                                                      ## protect
                                                                                      ## against
                                                                                      ## possibility
                                                                                      ## to
                                                                                      ## forget
                                                                                      ## defining
                                                                                      ## printers.
                                                                                      ##
                                                                                      ## !
                                                                                      ## If
                                                                                      ## printing
                                                                                      ## to
                                                                                      ## cout
                                                                                      ## is
                                                                                      ## not
                                                                                      ## needed,
                                                                                      ## clear
                                                                                      ## messenger
                                                                                      ## by
                                                                                      ## GetPrinters().Clear()

  MessageMessengerStreamBuffer* {.importcpp: "Message_Messenger::StreamBuffer",
                                 header: "Message_Messenger.hxx", bycopy.} = object ## !
                                                                               ## Destructor
                                                                               ## flushing
                                                                               ## constructed
                                                                               ## message.
    ##  don't make a Handle since this object should be created on stack


proc destroyMessageMessengerStreamBuffer*(this: var MessageMessengerStreamBuffer) {.
    cdecl, importcpp: "#.~StreamBuffer()", header: "Message_Messenger.hxx".}
proc flush*(this: var MessageMessengerStreamBuffer; doForce: bool = false) {.cdecl,
    importcpp: "Flush", header: "Message_Messenger.hxx".}
proc newMessageMessengerStreamBuffer*(theOther: MessageMessengerStreamBuffer): MessageMessengerStreamBuffer {.
    cdecl, constructor, importcpp: "Message_Messenger::StreamBuffer(@)",
    header: "Message_Messenger.hxx".}
proc `<<`*[T](this: var MessageMessengerStreamBuffer; theArg: T): var MessageMessengerStreamBuffer {.
    cdecl, importcpp: "(# << #)", header: "Message_Messenger.hxx".}
proc `<<`*(this: var MessageMessengerStreamBuffer;
          a2: proc (a1: var Ostream): var Ostream {.cdecl.}): var MessageMessengerStreamBuffer {.
    cdecl, importcpp: "(# << #)", header: "Message_Messenger.hxx".}
proc stream*(this: var MessageMessengerStreamBuffer): var StandardSStream {.cdecl,
    importcpp: "Stream", header: "Message_Messenger.hxx".}
converter `standardOStream&`*(this: var MessageMessengerStreamBuffer): var StandardOStream {.
    cdecl, importcpp: "StreamBuffer::operator Standard_OStream&", header: "Message_Messenger.hxx".}
proc messenger*(this: var MessageMessengerStreamBuffer): ptr MessageMessenger {.cdecl,
    importcpp: "Messenger", header: "Message_Messenger.hxx".}
proc newMessageMessenger*(): MessageMessenger {.cdecl, constructor,
    importcpp: "Message_Messenger(@)", header: "Message_Messenger.hxx".}
proc newMessageMessenger*(thePrinter: Handle[MessagePrinter]): MessageMessenger {.
    cdecl, constructor, importcpp: "Message_Messenger(@)", header: "Message_Messenger.hxx".}
proc addPrinter*(this: var MessageMessenger; thePrinter: Handle[MessagePrinter]): bool {.
    cdecl, importcpp: "AddPrinter", header: "Message_Messenger.hxx".}
proc removePrinter*(this: var MessageMessenger; thePrinter: Handle[MessagePrinter]): bool {.
    cdecl, importcpp: "RemovePrinter", header: "Message_Messenger.hxx".}
proc removePrinters*(this: var MessageMessenger; theType: Handle[StandardType]): cint {.
    cdecl, importcpp: "RemovePrinters", header: "Message_Messenger.hxx".}
proc printers*(this: MessageMessenger): MessageSequenceOfPrinters {.noSideEffect,
    cdecl, importcpp: "Printers", header: "Message_Messenger.hxx".}
proc changePrinters*(this: var MessageMessenger): var MessageSequenceOfPrinters {.
    cdecl, importcpp: "ChangePrinters", header: "Message_Messenger.hxx".}
proc send*(this: MessageMessenger; theString: cstring;
          theGravity: MessageGravity = 2.MessageGravity) {.noSideEffect, cdecl,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc send*(this: MessageMessenger; theStream: StandardSStream;
          theGravity: MessageGravity = 2.MessageGravity) {.noSideEffect, cdecl,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc send*(this: MessageMessenger; theString: TCollectionAsciiString;
          theGravity: MessageGravity = 2.MessageGravity) {.noSideEffect, cdecl,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc send*(this: MessageMessenger; theString: TCollectionExtendedString;
          theGravity: MessageGravity = 2.MessageGravity) {.noSideEffect, cdecl,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc send*(this: var MessageMessenger; theGravity: MessageGravity): MessageMessengerStreamBuffer {.
    cdecl, importcpp: "Send", header: "Message_Messenger.hxx".}
proc send*(this: MessageMessenger; theObject: Handle[StandardTransient];
          theGravity: MessageGravity = 2.MessageGravity) {.noSideEffect, cdecl,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc sendFail*(this: var MessageMessenger): MessageMessengerStreamBuffer {.cdecl,
    importcpp: "SendFail", header: "Message_Messenger.hxx".}
proc sendAlarm*(this: var MessageMessenger): MessageMessengerStreamBuffer {.cdecl,
    importcpp: "SendAlarm", header: "Message_Messenger.hxx".}
proc sendWarning*(this: var MessageMessenger): MessageMessengerStreamBuffer {.cdecl,
    importcpp: "SendWarning", header: "Message_Messenger.hxx".}
proc sendInfo*(this: var MessageMessenger): MessageMessengerStreamBuffer {.cdecl,
    importcpp: "SendInfo", header: "Message_Messenger.hxx".}
proc sendTrace*(this: var MessageMessenger): MessageMessengerStreamBuffer {.cdecl,
    importcpp: "SendTrace", header: "Message_Messenger.hxx".}
proc sendFail*(this: var MessageMessenger; theMessage: TCollectionAsciiString) {.
    cdecl, importcpp: "SendFail", header: "Message_Messenger.hxx".}
proc sendAlarm*(this: var MessageMessenger; theMessage: TCollectionAsciiString) {.
    cdecl, importcpp: "SendAlarm", header: "Message_Messenger.hxx".}
proc sendWarning*(this: var MessageMessenger; theMessage: TCollectionAsciiString) {.
    cdecl, importcpp: "SendWarning", header: "Message_Messenger.hxx".}
proc sendInfo*(this: var MessageMessenger; theMessage: TCollectionAsciiString) {.
    cdecl, importcpp: "SendInfo", header: "Message_Messenger.hxx".}
proc sendTrace*(this: var MessageMessenger; theMessage: TCollectionAsciiString) {.
    cdecl, importcpp: "SendTrace", header: "Message_Messenger.hxx".}
proc dumpJson*(this: MessageMessenger; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Message_Messenger.hxx".}