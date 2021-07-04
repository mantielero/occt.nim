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
  Message_Attribute

discard "forward decl of Standard_Transient"
type
  Message_AttributeObject* {.importcpp: "Message_AttributeObject",
                            header: "Message_AttributeObject.hxx", bycopy.} = object of Message_Attribute ##
                                                                                                   ## !
                                                                                                   ## Constructor
                                                                                                   ## with
                                                                                                   ## string
                                                                                                   ## argument
    ## !< alert object

  Message_AttributeObjectbase_type* = Message_Attribute

proc get_type_name*(): cstring {.importcpp: "Message_AttributeObject::get_type_name(@)",
                              header: "Message_AttributeObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_AttributeObject::get_type_descriptor(@)",
    header: "Message_AttributeObject.hxx".}
proc DynamicType*(this: Message_AttributeObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_AttributeObject.hxx".}
proc constructMessage_AttributeObject*(theObject: handle[Standard_Transient];
    theName: TCollection_AsciiString = TCollection_AsciiString()): Message_AttributeObject {.
    constructor, importcpp: "Message_AttributeObject(@)",
    header: "Message_AttributeObject.hxx".}
proc Object*(this: Message_AttributeObject): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Object", header: "Message_AttributeObject.hxx".}
proc SetObject*(this: var Message_AttributeObject;
               theObject: handle[Standard_Transient]) {.importcpp: "SetObject",
    header: "Message_AttributeObject.hxx".}
proc DumpJson*(this: Message_AttributeObject; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_AttributeObject.hxx".}