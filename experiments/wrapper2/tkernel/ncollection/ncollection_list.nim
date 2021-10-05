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
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListiterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollectionList*[TheItemType](): NCollectionList[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_List<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionList*[TheItemType](
    theAllocator: Handle[NCollectionBaseAllocator]): NCollectionList[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_List<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionList*[TheItemType](theOther: NCollectionList): NCollectionList[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_List<\'*0>(@)",
                  dynlib: tkernel.}
proc size*[TheItemType](this: NCollectionList[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}
proc assign*[TheItemType](this: var NCollectionList[TheItemType];
                         theOther: NCollectionList): var NCollectionList {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc clear*[TheItemType](this: var NCollectionList[TheItemType];
                        theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)) {.
    cdecl, importcpp: "Clear", dynlib: tkernel.}
proc first*[TheItemType](this: NCollectionList[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", dynlib: tkernel.}
proc first*[TheItemType](this: var NCollectionList[TheItemType]): var TheItemType {.
    cdecl, importcpp: "First", dynlib: tkernel.}
proc last*[TheItemType](this: NCollectionList[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", dynlib: tkernel.}
proc last*[TheItemType](this: var NCollectionList[TheItemType]): var TheItemType {.
    cdecl, importcpp: "Last", dynlib: tkernel.}
proc append*[TheItemType](this: var NCollectionList[TheItemType];
                         theItem: TheItemType): var TheItemType {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc append*[TheItemType](this: var NCollectionList[TheItemType];
                         theItem: TheItemType;
                         theIter: var NCollectionListIterator) {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc append*[TheItemType](this: var NCollectionList[TheItemType];
                         theOther: var NCollectionList) {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc prepend*[TheItemType](this: var NCollectionList[TheItemType];
                          theItem: TheItemType): var TheItemType {.cdecl,
    importcpp: "Prepend", dynlib: tkernel.}
proc prepend*[TheItemType](this: var NCollectionList[TheItemType];
                          theOther: var NCollectionList) {.cdecl,
    importcpp: "Prepend", dynlib: tkernel.}
proc removeFirst*[TheItemType](this: var NCollectionList[TheItemType]) {.cdecl,
    importcpp: "RemoveFirst", dynlib: tkernel.}
proc remove*[TheItemType](this: var NCollectionList[TheItemType];
                         theIter: var NCollectionListIterator) {.cdecl,
    importcpp: "Remove", dynlib: tkernel.}
proc insertBefore*[TheItemType](this: var NCollectionList[TheItemType];
                               theItem: TheItemType;
                               theIter: var NCollectionListIterator): var TheItemType {.
    cdecl, importcpp: "InsertBefore", dynlib: tkernel.}
proc insertBefore*[TheItemType](this: var NCollectionList[TheItemType];
                               theOther: var NCollectionList;
                               theIter: var NCollectionListIterator) {.cdecl,
    importcpp: "InsertBefore", dynlib: tkernel.}
proc insertAfter*[TheItemType](this: var NCollectionList[TheItemType];
                              theItem: TheItemType;
                              theIter: var NCollectionListIterator): var TheItemType {.
    cdecl, importcpp: "InsertAfter", dynlib: tkernel.}
proc insertAfter*[TheItemType](this: var NCollectionList[TheItemType];
                              theOther: var NCollectionList;
                              theIter: var NCollectionListIterator) {.cdecl,
    importcpp: "InsertAfter", dynlib: tkernel.}
proc reverse*[TheItemType](this: var NCollectionList[TheItemType]) {.cdecl,
    importcpp: "Reverse", dynlib: tkernel.}
proc contains*[TheItemType](this: NCollectionList[TheItemType];
                           theObject: TheValueType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkernel.}
proc destroyNCollectionList*[TheItemType](this: var NCollectionList[TheItemType]) {.
    cdecl, importcpp: "#.~NCollection_List()", dynlib: tkernel.}