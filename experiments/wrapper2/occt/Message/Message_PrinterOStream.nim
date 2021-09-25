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
discard "forward decl of Message_PrinterOStream"
type
  HandleMessagePrinterOStream* = Handle[MessagePrinterOStream]

## ! Implementation of a message printer associated with an std::ostream
## ! The std::ostream may be either externally defined one (e.g. std::cout),
## ! or file stream maintained internally (depending on constructor).

type
  MessagePrinterOStream* {.importcpp: "Message_PrinterOStream",
                          header: "Message_PrinterOStream.hxx", bycopy.} = object of MessagePrinter ##
                                                                                             ## !
                                                                                             ## Setup
                                                                                             ## console
                                                                                             ## text
                                                                                             ## color.
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## On
                                                                                             ## Windows,
                                                                                             ## this
                                                                                             ## would
                                                                                             ## affect
                                                                                             ## active
                                                                                             ## terminal
                                                                                             ## color
                                                                                             ## output.
                                                                                             ##
                                                                                             ## !
                                                                                             ## On
                                                                                             ## other
                                                                                             ## systems,
                                                                                             ## this
                                                                                             ## would
                                                                                             ## put
                                                                                             ## special
                                                                                             ## terminal
                                                                                             ## codes;
                                                                                             ##
                                                                                             ## !
                                                                                             ## the
                                                                                             ## terminal
                                                                                             ## should
                                                                                             ## support
                                                                                             ## these
                                                                                             ## codes
                                                                                             ## or
                                                                                             ## them
                                                                                             ## will
                                                                                             ## appear
                                                                                             ## in
                                                                                             ## text
                                                                                             ## otherwise.
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## same
                                                                                             ## will
                                                                                             ## happen
                                                                                             ## when
                                                                                             ## stream
                                                                                             ## is
                                                                                             ## redirected
                                                                                             ## into
                                                                                             ## text
                                                                                             ## file.
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## Beware
                                                                                             ## that
                                                                                             ## within
                                                                                             ## multi-threaded
                                                                                             ## environment
                                                                                             ## inducing
                                                                                             ## console
                                                                                             ## colors
                                                                                             ##
                                                                                             ## !
                                                                                             ## might
                                                                                             ## lead
                                                                                             ## to
                                                                                             ## colored
                                                                                             ## text
                                                                                             ## mixture
                                                                                             ## due
                                                                                             ## to
                                                                                             ## concurrency.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor,
                                                                                             ## defaulting
                                                                                             ## to
                                                                                             ## cout
                                                                                             ##
                                                                                             ## !
                                                                                             ## Puts
                                                                                             ## a
                                                                                             ## message
                                                                                             ## to
                                                                                             ## the
                                                                                             ## current
                                                                                             ## stream
                                                                                             ##
                                                                                             ## !
                                                                                             ## if
                                                                                             ## its
                                                                                             ## gravity
                                                                                             ## is
                                                                                             ## equal
                                                                                             ## or
                                                                                             ## greater
                                                                                             ##
                                                                                             ## !
                                                                                             ## to
                                                                                             ## the
                                                                                             ## trace
                                                                                             ## level
                                                                                             ## set
                                                                                             ## by
                                                                                             ## SetTraceLevel()

  MessagePrinterOStreambaseType* = MessagePrinter

proc getTypeName*(): cstring {.importcpp: "Message_PrinterOStream::get_type_name(@)",
                            header: "Message_PrinterOStream.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Message_PrinterOStream::get_type_descriptor(@)",
    header: "Message_PrinterOStream.hxx".}
proc dynamicType*(this: MessagePrinterOStream): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_PrinterOStream.hxx".}
proc setConsoleTextColor*(theOStream: ptr StandardOStream;
                         theTextColor: MessageConsoleColor;
                         theIsIntenseText: bool = false) {.
    importcpp: "Message_PrinterOStream::SetConsoleTextColor(@)",
    header: "Message_PrinterOStream.hxx".}
proc constructMessagePrinterOStream*(theTraceLevel: MessageGravity = messageInfo): MessagePrinterOStream {.
    constructor, importcpp: "Message_PrinterOStream(@)",
    header: "Message_PrinterOStream.hxx".}
proc constructMessagePrinterOStream*(theFileName: StandardCString;
                                    theDoAppend: bool;
                                    theTraceLevel: MessageGravity = messageInfo): MessagePrinterOStream {.
    constructor, importcpp: "Message_PrinterOStream(@)",
    header: "Message_PrinterOStream.hxx".}
proc close*(this: var MessagePrinterOStream) {.importcpp: "Close",
    header: "Message_PrinterOStream.hxx".}
proc destroyMessagePrinterOStream*(this: var MessagePrinterOStream) {.
    importcpp: "#.~Message_PrinterOStream()", header: "Message_PrinterOStream.hxx".}
proc getStream*(this: MessagePrinterOStream): var StandardOStream {.noSideEffect,
    importcpp: "GetStream", header: "Message_PrinterOStream.hxx".}
proc toColorize*(this: MessagePrinterOStream): bool {.noSideEffect,
    importcpp: "ToColorize", header: "Message_PrinterOStream.hxx".}
proc setToColorize*(this: var MessagePrinterOStream; theToColorize: bool) {.
    importcpp: "SetToColorize", header: "Message_PrinterOStream.hxx".}
