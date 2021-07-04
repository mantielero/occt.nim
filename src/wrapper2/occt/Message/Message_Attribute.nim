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

import
  ../Standard/Standard_Transient, ../TCollection/TCollection_AsciiString

discard "forward decl of Message_Attribute"
type
  Handle_Message_Attribute* = handle[Message_Attribute]

## ! Additional information of extended alert attribute
## ! To provide other custom attribute container, it might be redefined.

type
  Message_Attribute* {.importcpp: "Message_Attribute",
                      header: "Message_Attribute.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor
    ## !< alert name, if defined is used in GetMessageKey

  Message_Attributebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Message_Attribute::get_type_name(@)",
                              header: "Message_Attribute.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_Attribute::get_type_descriptor(@)",
    header: "Message_Attribute.hxx".}
proc DynamicType*(this: Message_Attribute): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_Attribute.hxx".}
proc constructMessage_Attribute*(theName: TCollection_AsciiString = TCollection_AsciiString()): Message_Attribute {.
    constructor, importcpp: "Message_Attribute(@)", header: "Message_Attribute.hxx".}
proc GetMessageKey*(this: Message_Attribute): Standard_CString {.noSideEffect,
    importcpp: "GetMessageKey", header: "Message_Attribute.hxx".}
proc GetName*(this: Message_Attribute): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetName", header: "Message_Attribute.hxx".}
proc SetName*(this: var Message_Attribute; theName: TCollection_AsciiString) {.
    importcpp: "SetName", header: "Message_Attribute.hxx".}
proc DumpJson*(this: Message_Attribute; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_Attribute.hxx".}