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

## *
##  Purpose:     Abstract list node class. Used by BaseList
##  Remark:      Internal class
##

type
  NCollectionTListNode*[TheItemType] {.importcpp: "NCollection_TListNode<\'0>",
                                      header: "NCollection_TListNode.hxx", bycopy.} = object of NCollectionListNode ##
                                                                                                             ## !
                                                                                                             ## Constructor
    ## !< The item stored in the node


proc newNCollectionTListNode*[TheItemType](theItem: TheItemType;
    theNext: ptr NCollectionListNode = nil): NCollectionTListNode[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_TListNode<\'*0>(@)", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionTListNode[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc changeValue*[TheItemType](this: var NCollectionTListNode[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
#proc delNode*[TheItemType](theNode: ptr NCollectionListNode;
#                          theAl: var Handle[NCollectionBaseAllocator]) {.cdecl,
#    importcpp: "NCollection_TListNode::delNode(@)", dynlib: tkernel.}