##  Created on: 2002-04-23
##  Created by: Alexander KARTOMIN (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  NCollection_ListNode

## *
##  Purpose:     Abstract list node class. Used by BaseList
##  Remark:      Internal class
##

type
  NCollection_TListNode*[TheItemType] {.importcpp: "NCollection_TListNode<\'0>",
                                       header: "NCollection_TListNode.hxx", bycopy.} = object of NCollection_ListNode ##
                                                                                                               ## !
                                                                                                               ## Constructor
    ## !< The item stored in the node


proc constructNCollection_TListNode*[TheItemType](theItem: TheItemType;
    theNext: ptr NCollection_ListNode = nil): NCollection_TListNode[TheItemType] {.
    constructor, importcpp: "NCollection_TListNode<\'*0>(@)",
    header: "NCollection_TListNode.hxx".}
proc Value*[TheItemType](this: NCollection_TListNode[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_TListNode.hxx".}
proc ChangeValue*[TheItemType](this: var NCollection_TListNode[TheItemType]): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_TListNode.hxx".}
proc delNode*[TheItemType](theNode: ptr NCollection_ListNode;
                          theAl: var handle[NCollection_BaseAllocator]) {.
    importcpp: "NCollection_TListNode::delNode(@)",
    header: "NCollection_TListNode.hxx".}