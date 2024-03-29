import ncollection_types

##  Created on: 2002-04-17
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
##  Purpose:     This class is used to  represent a node  in the BaseList and
##               BaseMap.
##



proc newNCollectionListNode*(theNext: ptr NCollectionListNode): NCollectionListNode {.
    cdecl, constructor, importcpp: "NCollection_ListNode(@)", header: "NCollection_ListNode.hxx".}
proc next*(this: var NCollectionListNode): ptr NCollectionListNode {.cdecl,
    importcpp: "Next", header: "NCollection_ListNode.hxx".}
proc next*(this: NCollectionListNode): ptr NCollectionListNode {.noSideEffect, cdecl,
    importcpp: "Next", header: "NCollection_ListNode.hxx".}
