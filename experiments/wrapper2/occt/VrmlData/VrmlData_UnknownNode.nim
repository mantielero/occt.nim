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

import
  VrmlData_Node, ../TCollection/TCollection_AsciiString

## *
##  Definition of UnknownNode -- placeholder for node types that
##  are not processed now.
##

type
  VrmlData_UnknownNode* {.importcpp: "VrmlData_UnknownNode",
                         header: "VrmlData_UnknownNode.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                         ## *
                                                                                         ##  Empty Constructor.
                                                                                         ##
                                                                                         ##  ---------- PRIVATE FIELDS ----------
                                                                                         ##  Declaration of CASCADE RTTI


proc constructVrmlData_UnknownNode*(): VrmlData_UnknownNode {.constructor,
    importcpp: "VrmlData_UnknownNode(@)", header: "VrmlData_UnknownNode.hxx".}
proc constructVrmlData_UnknownNode*(theScene: VrmlData_Scene;
                                   theName: cstring = 0L'i64;
                                   theTitle: cstring = 0L'i64): VrmlData_UnknownNode {.
    constructor, importcpp: "VrmlData_UnknownNode(@)",
    header: "VrmlData_UnknownNode.hxx".}
proc Read*(this: var VrmlData_UnknownNode; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_UnknownNode.hxx".}
proc GetTitle*(this: VrmlData_UnknownNode): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetTitle", header: "VrmlData_UnknownNode.hxx".}
proc IsDefault*(this: VrmlData_UnknownNode): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_UnknownNode.hxx".}
type
  VrmlData_UnknownNodebase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_UnknownNode::get_type_name(@)",
                              header: "VrmlData_UnknownNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_UnknownNode::get_type_descriptor(@)",
    header: "VrmlData_UnknownNode.hxx".}
proc DynamicType*(this: VrmlData_UnknownNode): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_UnknownNode.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_UnknownNode"
type
  Handle_VrmlData_UnknownNode* = handle[VrmlData_UnknownNode]
