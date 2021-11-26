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

discard "forward decl of TCollection_MapNode"
discard "forward decl of TCollection_MapNode"
type
  HandleC1C1* = Handle[TCollectionMapNode]

## ! Basic class root of all the Maps.

type
  TCollectionMapNode* {.importcpp: "TCollection_MapNode",
                       header: "TCollection_MapNode.hxx", bycopy.} = object of StandardTransient


proc constructTCollectionMapNode*(n: TCollectionMapNodePtr): TCollectionMapNode {.
    constructor, importcpp: "TCollection_MapNode(@)",
    header: "TCollection_MapNode.hxx".}
proc next*(this: TCollectionMapNode): var TCollectionMapNodePtr {.noSideEffect,
    importcpp: "Next", header: "TCollection_MapNode.hxx".}
type
  TCollectionMapNodebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TCollection_MapNode::get_type_name(@)",
                            header: "TCollection_MapNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TCollection_MapNode::get_type_descriptor(@)",
    header: "TCollection_MapNode.hxx".}
proc dynamicType*(this: TCollectionMapNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TCollection_MapNode.hxx".}

























