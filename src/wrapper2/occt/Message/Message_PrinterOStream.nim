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
  Message_ConsoleColor, Message_Printer, ../Standard/Standard_Address,
  ../Standard/Standard_OStream

discard "forward decl of Message_PrinterOStream"
discard "forward decl of Message_PrinterOStream"
type
  Handle_Message_PrinterOStream* = handle[Message_PrinterOStream]

## ! Implementation of a message printer associated with an std::ostream
## ! The std::ostream may be either externally defined one (e.g. std::cout),
## ! or file stream maintained internally (depending on constructor).

type
  Message_PrinterOStream* {.importcpp: "Message_PrinterOStream",
                           header: "Message_PrinterOStream.hxx", bycopy.} = object of Message_Printer ##
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

  Message_PrinterOStreambase_type* = Message_Printer

proc get_type_name*(): cstring {.importcpp: "Message_PrinterOStream::get_type_name(@)",
                              header: "Message_PrinterOStream.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_PrinterOStream::get_type_descriptor(@)",
    header: "Message_PrinterOStream.hxx".}
proc DynamicType*(this: Message_PrinterOStream): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_PrinterOStream.hxx".}
proc SetConsoleTextColor*(theOStream: ptr Standard_OStream;
                         theTextColor: Message_ConsoleColor;
                         theIsIntenseText: bool = false) {.
    importcpp: "Message_PrinterOStream::SetConsoleTextColor(@)",
    header: "Message_PrinterOStream.hxx".}
proc constructMessage_PrinterOStream*(theTraceLevel: Message_Gravity = Message_Info): Message_PrinterOStream {.
    constructor, importcpp: "Message_PrinterOStream(@)",
    header: "Message_PrinterOStream.hxx".}
proc constructMessage_PrinterOStream*(theFileName: Standard_CString;
                                     theDoAppend: Standard_Boolean; theTraceLevel: Message_Gravity = Message_Info): Message_PrinterOStream {.
    constructor, importcpp: "Message_PrinterOStream(@)",
    header: "Message_PrinterOStream.hxx".}
proc Close*(this: var Message_PrinterOStream) {.importcpp: "Close",
    header: "Message_PrinterOStream.hxx".}
proc destroyMessage_PrinterOStream*(this: var Message_PrinterOStream) {.
    importcpp: "#.~Message_PrinterOStream()", header: "Message_PrinterOStream.hxx".}
proc GetStream*(this: Message_PrinterOStream): var Standard_OStream {.noSideEffect,
    importcpp: "GetStream", header: "Message_PrinterOStream.hxx".}
proc ToColorize*(this: Message_PrinterOStream): Standard_Boolean {.noSideEffect,
    importcpp: "ToColorize", header: "Message_PrinterOStream.hxx".}
proc SetToColorize*(this: var Message_PrinterOStream;
                   theToColorize: Standard_Boolean) {.importcpp: "SetToColorize",
    header: "Message_PrinterOStream.hxx".}