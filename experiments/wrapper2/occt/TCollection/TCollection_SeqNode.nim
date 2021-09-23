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

import
  ../Standard/Standard, ../Standard/Standard_Type, TCollection_SeqNodePtr,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_SeqNode"
discard "forward decl of TCollection_SeqNode"
type
  Handle_TCollection_SeqNode* = handle[TCollection_SeqNode]
  TCollection_SeqNode* {.importcpp: "TCollection_SeqNode",
                        header: "TCollection_SeqNode.hxx", bycopy.} = object of Standard_Transient


proc constructTCollection_SeqNode*(n: TCollection_SeqNodePtr;
                                  p: TCollection_SeqNodePtr): TCollection_SeqNode {.
    constructor, importcpp: "TCollection_SeqNode(@)",
    header: "TCollection_SeqNode.hxx".}
proc Next*(this: TCollection_SeqNode): var TCollection_SeqNodePtr {.noSideEffect,
    importcpp: "Next", header: "TCollection_SeqNode.hxx".}
proc Previous*(this: TCollection_SeqNode): var TCollection_SeqNodePtr {.noSideEffect,
    importcpp: "Previous", header: "TCollection_SeqNode.hxx".}
type
  TCollection_SeqNodebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TCollection_SeqNode::get_type_name(@)",
                              header: "TCollection_SeqNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TCollection_SeqNode::get_type_descriptor(@)",
    header: "TCollection_SeqNode.hxx".}
proc DynamicType*(this: TCollection_SeqNode): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TCollection_SeqNode.hxx".}