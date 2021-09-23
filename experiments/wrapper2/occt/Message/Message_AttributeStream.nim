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
  Message_Attribute, ../Standard/Standard_SStream

## ! Alert object storing stream value

type
  Message_AttributeStream* {.importcpp: "Message_AttributeStream",
                            header: "Message_AttributeStream.hxx", bycopy.} = object of Message_Attribute ##
                                                                                                   ## !
                                                                                                   ## Constructor
                                                                                                   ## with
                                                                                                   ## string
                                                                                                   ## argument
    ## !< container of values

  Message_AttributeStreambase_type* = Message_Attribute

proc get_type_name*(): cstring {.importcpp: "Message_AttributeStream::get_type_name(@)",
                              header: "Message_AttributeStream.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_AttributeStream::get_type_descriptor(@)",
    header: "Message_AttributeStream.hxx".}
proc DynamicType*(this: Message_AttributeStream): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_AttributeStream.hxx".}
proc constructMessage_AttributeStream*(theStream: Standard_SStream; theName: TCollection_AsciiString = TCollection_AsciiString()): Message_AttributeStream {.
    constructor, importcpp: "Message_AttributeStream(@)",
    header: "Message_AttributeStream.hxx".}
proc Stream*(this: Message_AttributeStream): Standard_SStream {.noSideEffect,
    importcpp: "Stream", header: "Message_AttributeStream.hxx".}
proc SetStream*(this: var Message_AttributeStream; theStream: Standard_SStream) {.
    importcpp: "SetStream", header: "Message_AttributeStream.hxx".}
proc DumpJson*(this: Message_AttributeStream; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_AttributeStream.hxx".}