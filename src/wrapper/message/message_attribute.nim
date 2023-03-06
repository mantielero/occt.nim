import message_types
import ../tcollection/tcollection_types 
import ../standard/standard_types 
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





proc newMessageAttribute*(theName: TCollectionAsciiString = TCollectionAsciiString()): MessageAttribute {.
    cdecl, constructor, importcpp: "Message_Attribute(@)", header: "Message_Attribute.hxx".}
proc getMessageKey*(this: MessageAttribute): cstring {.noSideEffect, cdecl,
    importcpp: "GetMessageKey", header: "Message_Attribute.hxx".}
proc getName*(this: MessageAttribute): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "GetName", header: "Message_Attribute.hxx".}
proc setName*(this: var MessageAttribute; theName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetName", header: "Message_Attribute.hxx".}
proc dumpJson*(this: MessageAttribute; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Message_Attribute.hxx".}
