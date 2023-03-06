import ncollection_types
import ../standard/standard_types

##  Created on: 2002-04-17
##  Created by: Alexander Kartomin (akm)
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
##  Purpose:     This is a base  class  for the  List, Set, Queue  and Stack
##               collections. It offers operations on abstract lists (of the
##               objects of class NCollection_ListNode).
##               Apart from this class being  brand new (in TCollection said
##               collections were independent, only using the same class for
##               node representation),  here is an  important new  feature -
##               the  list  length is  continuously updated,  so the  method
##               Extent is quite quick.






proc newNCollectionBaseListIterator*(): NCollectionBaseListIterator {.cdecl,
    constructor, importcpp: "NCollection_BaseList::Iterator(@)", header: "NCollection_BaseList.hxx".}
proc newNCollectionBaseListIterator*(theList: NCollectionBaseList): NCollectionBaseListIterator {.
    cdecl, constructor, importcpp: "NCollection_BaseList::Iterator(@)",
    header: "NCollection_BaseList.hxx".}
proc init*(this: var NCollectionBaseListIterator; theList: NCollectionBaseList) {.
    cdecl, importcpp: "Init", header: "NCollection_BaseList.hxx".}
proc initialize*(this: var NCollectionBaseListIterator; theList: NCollectionBaseList) {.
    cdecl, importcpp: "Initialize", header: "NCollection_BaseList.hxx".}
proc more*(this: NCollectionBaseListIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "NCollection_BaseList.hxx".}
proc `==`*(this: NCollectionBaseListIterator; theIt: NCollectionBaseListIterator): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "NCollection_BaseList.hxx".}
proc isEqual*(this: NCollectionBaseListIterator;
             theOther: NCollectionBaseListIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "NCollection_BaseList.hxx".}
proc extent*(this: NCollectionBaseList): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "NCollection_BaseList.hxx".}
proc isEmpty*(this: NCollectionBaseList): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "NCollection_BaseList.hxx".}
proc allocator*(this: NCollectionBaseList): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", header: "NCollection_BaseList.hxx".}
proc destroyNCollectionBaseList*(this: var NCollectionBaseList) {.cdecl,
    importcpp: "#.~NCollection_BaseList()", header: "NCollection_BaseList.hxx".}
