##  Created on: 1998-01-21
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

discard "forward decl of TCollection_SeqNode"
discard "forward decl of TCollection_SeqNode"
type
  HandleC1C1* = Handle[TCollectionSeqNode]
  TCollectionSeqNode* {.importcpp: "TCollection_SeqNode",
                       header: "TCollection_SeqNode.hxx", bycopy.} = object of StandardTransient


proc constructTCollectionSeqNode*(n: TCollectionSeqNodePtr;
                                 p: TCollectionSeqNodePtr): TCollectionSeqNode {.
    constructor, importcpp: "TCollection_SeqNode(@)",
    header: "TCollection_SeqNode.hxx".}
proc next*(this: TCollectionSeqNode): var TCollectionSeqNodePtr {.noSideEffect,
    importcpp: "Next", header: "TCollection_SeqNode.hxx".}
proc previous*(this: TCollectionSeqNode): var TCollectionSeqNodePtr {.noSideEffect,
    importcpp: "Previous", header: "TCollection_SeqNode.hxx".}
type
  TCollectionSeqNodebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TCollection_SeqNode::get_type_name(@)",
                            header: "TCollection_SeqNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TCollection_SeqNode::get_type_descriptor(@)",
    header: "TCollection_SeqNode.hxx".}
proc dynamicType*(this: TCollectionSeqNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TCollection_SeqNode.hxx".}

























