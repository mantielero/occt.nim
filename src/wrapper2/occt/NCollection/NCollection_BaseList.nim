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

type
  NCollectionDelListNode* = proc (a1: ptr NCollectionListNode;
                               theAl: var Handle[NCollectionBaseAllocator])

##  ********************************************************** BaseList class

type
  NCollectionBaseList* {.importcpp: "NCollection_BaseList",
                        header: "NCollection_BaseList.hxx", bycopy.} = object ## ! Memory
                                                                         ## allocation
                                                                         ##
                                                                         ## ---------- PUBLIC METHODS
                                                                         ## ------------
                                                                         ##
                                                                         ## ******** Extent
                                                                         ##
                                                                         ## Purpose: Returns the number of nodes in the list
                                                                         ##
                                                                         ## ---------
                                                                         ## PROTECTED METHODS
                                                                         ## ----------
                                                                         ##
                                                                         ## ********
                                                                         ## Constructor
                                                                         ##
                                                                         ## Purpose:
                                                                         ## Initializes an empty list
                                                                         ##
                                                                         ## ------------
                                                                         ## PROTECTED FIELDS
                                                                         ## ------------
    ##  Pointer to the head
    ##  Pointer to the tail
    ##  Actual length
    ##  ------------ FRIEND CLASSES ------------

  NCollectionBaseListIterator* {.importcpp: "NCollection_BaseList::Iterator",
                                header: "NCollection_BaseList.hxx", bycopy.} = object ##  ******** Empty constructor
    myCurrent* {.importc: "myCurrent".}: ptr NCollectionListNode ##  Pointer to the current node
    myPrevious* {.importc: "myPrevious".}: ptr NCollectionListNode ##  Pointer to the previous one


proc constructNCollectionBaseListIterator*(): NCollectionBaseListIterator {.
    constructor, importcpp: "NCollection_BaseList::Iterator(@)",
    header: "NCollection_BaseList.hxx".}
proc constructNCollectionBaseListIterator*(theList: NCollectionBaseList): NCollectionBaseListIterator {.
    constructor, importcpp: "NCollection_BaseList::Iterator(@)",
    header: "NCollection_BaseList.hxx".}
proc init*(this: var NCollectionBaseListIterator; theList: NCollectionBaseList) {.
    importcpp: "Init", header: "NCollection_BaseList.hxx".}
proc initialize*(this: var NCollectionBaseListIterator; theList: NCollectionBaseList) {.
    importcpp: "Initialize", header: "NCollection_BaseList.hxx".}
proc more*(this: NCollectionBaseListIterator): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "NCollection_BaseList.hxx".}
proc `==`*(this: NCollectionBaseListIterator; theIt: NCollectionBaseListIterator): StandardBoolean {.
    noSideEffect, importcpp: "(# == #)", header: "NCollection_BaseList.hxx".}
proc isEqual*(this: NCollectionBaseListIterator;
             theOther: NCollectionBaseListIterator): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "NCollection_BaseList.hxx".}
proc extent*(this: NCollectionBaseList): StandardInteger {.noSideEffect,
    importcpp: "Extent", header: "NCollection_BaseList.hxx".}
proc isEmpty*(this: NCollectionBaseList): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "NCollection_BaseList.hxx".}
proc allocator*(this: NCollectionBaseList): Handle[NCollectionBaseAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "NCollection_BaseList.hxx".}
proc destroyNCollectionBaseList*(this: var NCollectionBaseList) {.
    importcpp: "#.~NCollection_BaseList()", header: "NCollection_BaseList.hxx".}

