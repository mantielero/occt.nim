##  Created on: 2006-10-08
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

## *
##  Definition of UnknownNode -- placeholder for node types that
##  are not processed now.
##

type
  VrmlDataUnknownNode* {.importcpp: "VrmlData_UnknownNode",
                        header: "VrmlData_UnknownNode.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
                                                                                       ## *
                                                                                       ##  Empty Constructor.
                                                                                       ##
                                                                                       ##  ---------- PRIVATE FIELDS ----------
                                                                                       ##  Declaration of CASCADE RTTI


proc constructVrmlDataUnknownNode*(): VrmlDataUnknownNode {.constructor,
    importcpp: "VrmlData_UnknownNode(@)", header: "VrmlData_UnknownNode.hxx".}
proc constructVrmlDataUnknownNode*(theScene: VrmlDataScene;
                                  theName: cstring = 0'i64;
                                  theTitle: cstring = 0'i64): VrmlDataUnknownNode {.
    constructor, importcpp: "VrmlData_UnknownNode(@)",
    header: "VrmlData_UnknownNode.hxx".}
proc read*(this: var VrmlDataUnknownNode; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_UnknownNode.hxx".}
proc getTitle*(this: VrmlDataUnknownNode): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetTitle", header: "VrmlData_UnknownNode.hxx".}
proc isDefault*(this: VrmlDataUnknownNode): bool {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_UnknownNode.hxx".}
type
  VrmlDataUnknownNodebaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_UnknownNode::get_type_name(@)",
                            header: "VrmlData_UnknownNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_UnknownNode::get_type_descriptor(@)",
    header: "VrmlData_UnknownNode.hxx".}
proc dynamicType*(this: VrmlDataUnknownNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_UnknownNode.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_UnknownNode"
type
  HandleVrmlDataUnknownNode* = Handle[VrmlDataUnknownNode]















































