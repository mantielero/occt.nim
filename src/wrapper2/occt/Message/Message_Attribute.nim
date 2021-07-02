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

discard "forward decl of Message_Attribute"
type
  HandleMessageAttribute* = Handle[MessageAttribute]

## ! Additional information of extended alert attribute
## ! To provide other custom attribute container, it might be redefined.

type
  MessageAttribute* {.importcpp: "Message_Attribute",
                     header: "Message_Attribute.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor
    ## !< alert name, if defined is used in GetMessageKey

  MessageAttributebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Message_Attribute::get_type_name(@)",
                            header: "Message_Attribute.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Message_Attribute::get_type_descriptor(@)",
    header: "Message_Attribute.hxx".}
proc dynamicType*(this: MessageAttribute): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_Attribute.hxx".}
proc constructMessageAttribute*(theName: TCollectionAsciiString = tCollectionAsciiString()): MessageAttribute {.
    constructor, importcpp: "Message_Attribute(@)", header: "Message_Attribute.hxx".}
proc getMessageKey*(this: MessageAttribute): StandardCString {.noSideEffect,
    importcpp: "GetMessageKey", header: "Message_Attribute.hxx".}
proc getName*(this: MessageAttribute): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetName", header: "Message_Attribute.hxx".}
proc setName*(this: var MessageAttribute; theName: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Message_Attribute.hxx".}
proc dumpJson*(this: MessageAttribute; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_Attribute.hxx".}

