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
  TheValueType* = object
  NCollectionList*[TheItemType] {.importcpp: "NCollection_List<\'0>",
                                 header: "NCollection_List.hxx", bycopy.} = object of NCollectionBaseList ##
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

  NCollectionListvalueType*[TheItemType] = TheItemType
  NCollectionListListNode* = NCollectionTListNode[TheItemType]
  NCollectionListIterator* = NCollectionTListIterator[TheItemType]
#  NCollectionListiterator* = NCollectionStlIterator[ForwardIteratorTag,
#      NCollectionListIterator, TheItemType, False]
  NCollectionListconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionListIterator, TheItemType, true]

proc begin*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListiterator {.
    noSideEffect, cdecl, importcpp: "begin", header: "NCollection_List.hxx".}
proc `end`*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListiterator {.
    noSideEffect, cdecl, importcpp: "end", header: "NCollection_List.hxx".}
proc cbegin*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", header: "NCollection_List.hxx".}
proc cend*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", header: "NCollection_List.hxx".}
proc newNCollectionList*[TheItemType](): NCollectionList[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_List<\'*0>(@)", header: "NCollection_List.hxx".}
proc newNCollectionList*[TheItemType](theAllocator: Handle[
    NCollectionBaseAllocator]): NCollectionList[TheItemType] {.cdecl, constructor,
    importcpp: "NCollection_List<\'*0>(@)", header: "NCollection_List.hxx".}
proc newNCollectionList*[TheItemType](theOther: NCollectionList): NCollectionList[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_List<\'*0>(@)",
                  header: "NCollection_List.hxx".}
proc size*[TheItemType](this: NCollectionList[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", header: "NCollection_List.hxx".}
proc assign*[TheItemType](this: var NCollectionList[TheItemType];
                         theOther: NCollectionList): var NCollectionList {.cdecl,
    importcpp: "Assign", header: "NCollection_List.hxx".}
proc clear*[TheItemType](this: var NCollectionList[TheItemType];
                        theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)) {.
    cdecl, importcpp: "Clear", header: "NCollection_List.hxx".}
proc first*[TheItemType](this: NCollectionList[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", header: "NCollection_List.hxx".}
proc first*[TheItemType](this: var NCollectionList[TheItemType]): var TheItemType {.
    cdecl, importcpp: "First", header: "NCollection_List.hxx".}
proc last*[TheItemType](this: NCollectionList[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", header: "NCollection_List.hxx".}
proc last*[TheItemType](this: var NCollectionList[TheItemType]): var TheItemType {.
    cdecl, importcpp: "Last", header: "NCollection_List.hxx".}
proc append*[TheItemType](this: var NCollectionList[TheItemType];
                         theItem: TheItemType): var TheItemType {.cdecl,
    importcpp: "Append", header: "NCollection_List.hxx".}
proc append*[TheItemType](this: var NCollectionList[TheItemType];
                         theItem: TheItemType;
                         theIter: var NCollectionListIterator) {.cdecl,
    importcpp: "Append", header: "NCollection_List.hxx".}
proc append*[TheItemType](this: var NCollectionList[TheItemType];
                         theOther: var NCollectionList) {.cdecl,
    importcpp: "Append", header: "NCollection_List.hxx".}
proc prepend*[TheItemType](this: var NCollectionList[TheItemType];
                          theItem: TheItemType): var TheItemType {.cdecl,
    importcpp: "Prepend", header: "NCollection_List.hxx".}
proc prepend*[TheItemType](this: var NCollectionList[TheItemType];
                          theOther: var NCollectionList) {.cdecl,
    importcpp: "Prepend", header: "NCollection_List.hxx".}
proc removeFirst*[TheItemType](this: var NCollectionList[TheItemType]) {.cdecl,
    importcpp: "RemoveFirst", header: "NCollection_List.hxx".}
proc remove*[TheItemType](this: var NCollectionList[TheItemType];
                         theIter: var NCollectionListIterator) {.cdecl,
    importcpp: "Remove", header: "NCollection_List.hxx".}
proc insertBefore*[TheItemType](this: var NCollectionList[TheItemType];
                               theItem: TheItemType;
                               theIter: var NCollectionListIterator): var TheItemType {.
    cdecl, importcpp: "InsertBefore", header: "NCollection_List.hxx".}
proc insertBefore*[TheItemType](this: var NCollectionList[TheItemType];
                               theOther: var NCollectionList;
                               theIter: var NCollectionListIterator) {.cdecl,
    importcpp: "InsertBefore", header: "NCollection_List.hxx".}
proc insertAfter*[TheItemType](this: var NCollectionList[TheItemType];
                              theItem: TheItemType;
                              theIter: var NCollectionListIterator): var TheItemType {.
    cdecl, importcpp: "InsertAfter", header: "NCollection_List.hxx".}
proc insertAfter*[TheItemType](this: var NCollectionList[TheItemType];
                              theOther: var NCollectionList;
                              theIter: var NCollectionListIterator) {.cdecl,
    importcpp: "InsertAfter", header: "NCollection_List.hxx".}
proc reverse*[TheItemType](this: var NCollectionList[TheItemType]) {.cdecl,
    importcpp: "Reverse", header: "NCollection_List.hxx".}
proc contains*[TheItemType](this: NCollectionList[TheItemType];
                           theObject: TheValueType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "NCollection_List.hxx".}
proc destroyNCollectionList*[TheItemType](this: var NCollectionList[TheItemType]) {.
    cdecl, importcpp: "#.~NCollection_List()", header: "NCollection_List.hxx".}