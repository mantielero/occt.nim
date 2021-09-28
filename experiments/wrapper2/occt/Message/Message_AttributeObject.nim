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

discard "forward decl of Standard_Transient"
type
  MessageAttributeObject* {.importcpp: "Message_AttributeObject",
                           header: "Message_AttributeObject.hxx", bycopy.} = object of MessageAttribute ##
                                                                                                 ## !
                                                                                                 ## Constructor
                                                                                                 ## with
                                                                                                 ## string
                                                                                                 ## argument
    ## !< alert object

  MessageAttributeObjectbaseType* = MessageAttribute

proc getTypeName*(): cstring {.importcpp: "Message_AttributeObject::get_type_name(@)",
                            header: "Message_AttributeObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Message_AttributeObject::get_type_descriptor(@)",
    header: "Message_AttributeObject.hxx".}
proc dynamicType*(this: MessageAttributeObject): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_AttributeObject.hxx".}
proc constructMessageAttributeObject*(theObject: Handle[StandardTransient]; theName: TCollectionAsciiString = tCollectionAsciiString()): MessageAttributeObject {.
    constructor, importcpp: "Message_AttributeObject(@)",
    header: "Message_AttributeObject.hxx".}
proc `object`*(this: MessageAttributeObject): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Object", header: "Message_AttributeObject.hxx".}
proc setObject*(this: var MessageAttributeObject;
               theObject: Handle[StandardTransient]) {.importcpp: "SetObject",
    header: "Message_AttributeObject.hxx".}
proc dumpJson*(this: MessageAttributeObject; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Message_AttributeObject.hxx".}

























