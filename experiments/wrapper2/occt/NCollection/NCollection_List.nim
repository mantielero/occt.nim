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

## *
##  Purpose:      Simple list to link  items together keeping the first
##                and the last one.
##                Inherits BaseList, adding the data item to each node.
##

type
  NCollection_List*[TheItemType] {.importcpp: "NCollection_List<\'0>",
                                  header: "NCollection_List.hxx", bycopy.} = object of NCollection_BaseList ##
                                                                                                     ## !
                                                                                                     ## STL-compliant
                                                                                                     ## typedef
                                                                                                     ## for
                                                                                                     ## value
                                                                                                     ## type
                                                                                                     ##
                                                                                                     ## ----------
                                                                                                     ## PUBLIC
                                                                                                     ## METHODS
                                                                                                     ## ------------
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor.
                                                                                                     ##
                                                                                                     ## -----------
                                                                                                     ## PRIVATE
                                                                                                     ## METHODS
                                                                                                     ## -----------
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## append
                                                                                                     ## the
                                                                                                     ## list
                                                                                                     ## headed
                                                                                                     ## by
                                                                                                     ## the
                                                                                                     ## given
                                                                                                     ## ListNode

  NCollection_Listvalue_type*[TheItemType] = TheItemType
  NCollection_ListListNode* = NCollection_TListNode[TheItemType]
  NCollection_ListIterator* = NCollection_TListIterator[TheItemType]
  NCollection_Listiterator* = NCollection_StlIterator[forward_iterator_tag,
      NCollection_ListIterator, TheItemType, false]
  NCollection_Listconst_iterator* = NCollection_StlIterator[forward_iterator_tag,
      NCollection_ListIterator, TheItemType, true]

proc begin*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listiterator {.
    noSideEffect, importcpp: "begin", header: "NCollection_List.hxx".}
proc `end`*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listiterator {.
    noSideEffect, importcpp: "end", header: "NCollection_List.hxx".}
proc cbegin*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listconst_iterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_List.hxx".}
proc cend*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listconst_iterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_List.hxx".}
proc constructNCollection_List*[TheItemType](): NCollection_List[TheItemType] {.
    constructor, importcpp: "NCollection_List<\'*0>(@)",
    header: "NCollection_List.hxx".}
proc constructNCollection_List*[TheItemType](
    theAllocator: handle[NCollection_BaseAllocator]): NCollection_List[TheItemType] {.
    constructor, importcpp: "NCollection_List<\'*0>(@)",
    header: "NCollection_List.hxx".}
proc constructNCollection_List*[TheItemType](theOther: NCollection_List): NCollection_List[
    TheItemType] {.constructor, importcpp: "NCollection_List<\'*0>(@)",
                  header: "NCollection_List.hxx".}
proc Size*[TheItemType](this: NCollection_List[TheItemType]): int {.noSideEffect,
    importcpp: "Size", header: "NCollection_List.hxx".}
proc Assign*[TheItemType](this: var NCollection_List[TheItemType];
                         theOther: NCollection_List): var NCollection_List {.
    importcpp: "Assign", header: "NCollection_List.hxx".}
proc Clear*[TheItemType](this: var NCollection_List[TheItemType]; theAllocator: handle[
    NCollection_BaseAllocator] = 0L'i64) {.importcpp: "Clear",
                                        header: "NCollection_List.hxx".}
proc First*[TheItemType](this: NCollection_List[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "First", header: "NCollection_List.hxx".}
proc First*[TheItemType](this: var NCollection_List[TheItemType]): var TheItemType {.
    importcpp: "First", header: "NCollection_List.hxx".}
proc Last*[TheItemType](this: NCollection_List[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Last", header: "NCollection_List.hxx".}
proc Last*[TheItemType](this: var NCollection_List[TheItemType]): var TheItemType {.
    importcpp: "Last", header: "NCollection_List.hxx".}
proc Append*[TheItemType](this: var NCollection_List[TheItemType];
                         theItem: TheItemType): var TheItemType {.
    importcpp: "Append", header: "NCollection_List.hxx".}
proc Append*[TheItemType](this: var NCollection_List[TheItemType];
                         theItem: TheItemType;
                         theIter: var NCollection_ListIterator) {.
    importcpp: "Append", header: "NCollection_List.hxx".}
proc Append*[TheItemType](this: var NCollection_List[TheItemType];
                         theOther: var NCollection_List) {.importcpp: "Append",
    header: "NCollection_List.hxx".}
proc Prepend*[TheItemType](this: var NCollection_List[TheItemType];
                          theItem: TheItemType): var TheItemType {.
    importcpp: "Prepend", header: "NCollection_List.hxx".}
proc Prepend*[TheItemType](this: var NCollection_List[TheItemType];
                          theOther: var NCollection_List) {.importcpp: "Prepend",
    header: "NCollection_List.hxx".}
proc RemoveFirst*[TheItemType](this: var NCollection_List[TheItemType]) {.
    importcpp: "RemoveFirst", header: "NCollection_List.hxx".}
proc Remove*[TheItemType](this: var NCollection_List[TheItemType];
                         theIter: var NCollection_ListIterator) {.
    importcpp: "Remove", header: "NCollection_List.hxx".}
proc InsertBefore*[TheItemType](this: var NCollection_List[TheItemType];
                               theItem: TheItemType;
                               theIter: var NCollection_ListIterator): var TheItemType {.
    importcpp: "InsertBefore", header: "NCollection_List.hxx".}
proc InsertBefore*[TheItemType](this: var NCollection_List[TheItemType];
                               theOther: var NCollection_List;
                               theIter: var NCollection_ListIterator) {.
    importcpp: "InsertBefore", header: "NCollection_List.hxx".}
proc InsertAfter*[TheItemType](this: var NCollection_List[TheItemType];
                              theItem: TheItemType;
                              theIter: var NCollection_ListIterator): var TheItemType {.
    importcpp: "InsertAfter", header: "NCollection_List.hxx".}
proc InsertAfter*[TheItemType](this: var NCollection_List[TheItemType];
                              theOther: var NCollection_List;
                              theIter: var NCollection_ListIterator) {.
    importcpp: "InsertAfter", header: "NCollection_List.hxx".}
proc Reverse*[TheItemType](this: var NCollection_List[TheItemType]) {.
    importcpp: "Reverse", header: "NCollection_List.hxx".}
proc destroyNCollection_List*[TheItemType](
    this: var NCollection_List[TheItemType]) {.importcpp: "#.~NCollection_List()",
    header: "NCollection_List.hxx".}