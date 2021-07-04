##  Created on: 1998-01-19
##  Created by: Kernel
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, TCollection_MapNodePtr,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_MapNode"
discard "forward decl of TCollection_MapNode"
type
  Handle_TCollection_MapNode* = handle[TCollection_MapNode]

## ! Basic class root of all the Maps.

type
  TCollection_MapNode* {.importcpp: "TCollection_MapNode",
                        header: "TCollection_MapNode.hxx", bycopy.} = object of Standard_Transient


proc constructTCollection_MapNode*(n: TCollection_MapNodePtr): TCollection_MapNode {.
    constructor, importcpp: "TCollection_MapNode(@)",
    header: "TCollection_MapNode.hxx".}
proc Next*(this: TCollection_MapNode): var TCollection_MapNodePtr {.noSideEffect,
    importcpp: "Next", header: "TCollection_MapNode.hxx".}
type
  TCollection_MapNodebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TCollection_MapNode::get_type_name(@)",
                              header: "TCollection_MapNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TCollection_MapNode::get_type_descriptor(@)",
    header: "TCollection_MapNode.hxx".}
proc DynamicType*(this: TCollection_MapNode): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TCollection_MapNode.hxx".}