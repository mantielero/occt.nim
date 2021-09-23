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

import
  Message_Gravity, Message_SequenceOfPrinters,
  ../TCollection/TCollection_HAsciiString,
  ../TCollection/TCollection_HExtendedString

discard "forward decl of Message_Printer"
when defined(AddPrinter):
  discard
discard "forward decl of Message_Messenger"
discard "forward decl of Message_Messenger"
type
  Handle_Message_Messenger* = handle[Message_Messenger]

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
  Message_Messenger* {.importcpp: "Message_Messenger",
                      header: "Message_Messenger.hxx", bycopy.} = object of Standard_Transient ##
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

  Message_Messengerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Message_Messenger::get_type_name(@)",
                              header: "Message_Messenger.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_Messenger::get_type_descriptor(@)",
    header: "Message_Messenger.hxx".}
proc DynamicType*(this: Message_Messenger): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_Messenger.hxx".}
type
  Message_MessengerStreamBuffer* {.importcpp: "Message_Messenger::StreamBuffer",
                                  header: "Message_Messenger.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Destructor
                                                                                ## flushing
                                                                                ## constructed
                                                                                ## message.
    ##  don't make a Handle since this object should be created on stack


proc destroyMessage_MessengerStreamBuffer*(
    this: var Message_MessengerStreamBuffer) {.importcpp: "#.~StreamBuffer()",
    header: "Message_Messenger.hxx".}
proc Flush*(this: var Message_MessengerStreamBuffer;
           doForce: Standard_Boolean = Standard_False) {.importcpp: "Flush",
    header: "Message_Messenger.hxx".}
proc constructMessage_MessengerStreamBuffer*(
    theOther: Message_MessengerStreamBuffer): Message_MessengerStreamBuffer {.
    constructor, importcpp: "Message_Messenger::StreamBuffer(@)",
    header: "Message_Messenger.hxx".}
proc `<<`*[T](this: var Message_MessengerStreamBuffer; theArg: T): var Message_MessengerStreamBuffer {.
    importcpp: "(# << #)", header: "Message_Messenger.hxx".}
proc `<<`*(this: var Message_MessengerStreamBuffer;
          a2: proc (a1: var ostream): var ostream): var Message_MessengerStreamBuffer {.
    importcpp: "(# << #)", header: "Message_Messenger.hxx".}
proc Stream*(this: var Message_MessengerStreamBuffer): var Standard_SStream {.
    importcpp: "Stream", header: "Message_Messenger.hxx".}
converter `Standard_OStream&`*(this: var Message_MessengerStreamBuffer): var Standard_OStream {.
    importcpp: "StreamBuffer::operator Standard_OStream&",
    header: "Message_Messenger.hxx".}
proc Messenger*(this: var Message_MessengerStreamBuffer): ptr Message_Messenger {.
    importcpp: "Messenger", header: "Message_Messenger.hxx".}
proc constructMessage_Messenger*(): Message_Messenger {.constructor,
    importcpp: "Message_Messenger(@)", header: "Message_Messenger.hxx".}
proc constructMessage_Messenger*(thePrinter: handle[Message_Printer]): Message_Messenger {.
    constructor, importcpp: "Message_Messenger(@)", header: "Message_Messenger.hxx".}
proc AddPrinter*(this: var Message_Messenger; thePrinter: handle[Message_Printer]): Standard_Boolean {.
    importcpp: "AddPrinter", header: "Message_Messenger.hxx".}
proc RemovePrinter*(this: var Message_Messenger; thePrinter: handle[Message_Printer]): Standard_Boolean {.
    importcpp: "RemovePrinter", header: "Message_Messenger.hxx".}
proc RemovePrinters*(this: var Message_Messenger; theType: handle[Standard_Type]): Standard_Integer {.
    importcpp: "RemovePrinters", header: "Message_Messenger.hxx".}
proc Printers*(this: Message_Messenger): Message_SequenceOfPrinters {.noSideEffect,
    importcpp: "Printers", header: "Message_Messenger.hxx".}
proc ChangePrinters*(this: var Message_Messenger): var Message_SequenceOfPrinters {.
    importcpp: "ChangePrinters", header: "Message_Messenger.hxx".}
proc Send*(this: Message_Messenger; theString: Standard_CString;
          theGravity: Message_Gravity = Message_Warning) {.noSideEffect,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc Send*(this: Message_Messenger; theStream: Standard_SStream;
          theGravity: Message_Gravity = Message_Warning) {.noSideEffect,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc Send*(this: Message_Messenger; theString: TCollection_AsciiString;
          theGravity: Message_Gravity = Message_Warning) {.noSideEffect,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc Send*(this: Message_Messenger; theString: TCollection_ExtendedString;
          theGravity: Message_Gravity = Message_Warning) {.noSideEffect,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc Send*(this: var Message_Messenger; theGravity: Message_Gravity): Message_MessengerStreamBuffer {.
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc Send*(this: Message_Messenger; theObject: handle[Standard_Transient];
          theGravity: Message_Gravity = Message_Warning) {.noSideEffect,
    importcpp: "Send", header: "Message_Messenger.hxx".}
proc SendFail*(this: var Message_Messenger): Message_MessengerStreamBuffer {.
    importcpp: "SendFail", header: "Message_Messenger.hxx".}
proc SendAlarm*(this: var Message_Messenger): Message_MessengerStreamBuffer {.
    importcpp: "SendAlarm", header: "Message_Messenger.hxx".}
proc SendWarning*(this: var Message_Messenger): Message_MessengerStreamBuffer {.
    importcpp: "SendWarning", header: "Message_Messenger.hxx".}
proc SendInfo*(this: var Message_Messenger): Message_MessengerStreamBuffer {.
    importcpp: "SendInfo", header: "Message_Messenger.hxx".}
proc SendTrace*(this: var Message_Messenger): Message_MessengerStreamBuffer {.
    importcpp: "SendTrace", header: "Message_Messenger.hxx".}
proc SendFail*(this: var Message_Messenger; theMessage: TCollection_AsciiString) {.
    importcpp: "SendFail", header: "Message_Messenger.hxx".}
proc SendAlarm*(this: var Message_Messenger; theMessage: TCollection_AsciiString) {.
    importcpp: "SendAlarm", header: "Message_Messenger.hxx".}
proc SendWarning*(this: var Message_Messenger; theMessage: TCollection_AsciiString) {.
    importcpp: "SendWarning", header: "Message_Messenger.hxx".}
proc SendInfo*(this: var Message_Messenger; theMessage: TCollection_AsciiString) {.
    importcpp: "SendInfo", header: "Message_Messenger.hxx".}
proc SendTrace*(this: var Message_Messenger; theMessage: TCollection_AsciiString) {.
    importcpp: "SendTrace", header: "Message_Messenger.hxx".}
proc DumpJson*(this: Message_Messenger; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_Messenger.hxx".}