import message_types
import ../standard/standard_types 
import ../tcollection/tcollection_types 
##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Alert object storing stream value



proc newMessageAttributeStream*(theStream: StandardSStream; theName: TCollectionAsciiString = TCollectionAsciiString()): MessageAttributeStream {.
    cdecl, constructor, importcpp: "Message_AttributeStream(@)", header: "Message_AttributeStream.hxx".}
proc stream*(this: MessageAttributeStream): StandardSStream {.noSideEffect, cdecl,
    importcpp: "Stream", header: "Message_AttributeStream.hxx".}
proc setStream*(this: var MessageAttributeStream; theStream: StandardSStream) {.cdecl,
    importcpp: "SetStream", header: "Message_AttributeStream.hxx".}
proc dumpJson*(this: MessageAttributeStream; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Message_AttributeStream.hxx".}
