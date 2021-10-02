when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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

  NCollection_Listvalue_type*[TheItemType] = TheItemType
  NCollection_ListListNode* = NCollection_TListNode[TheItemType]
  NCollection_ListIterator* = NCollection_TListIterator[TheItemType]
  NCollection_Listiterator* = NCollection_StlIterator[forward_iterator_tag,
      NCollection_ListIterator, TheItemType, false]
  NCollection_Listconst_iterator* = NCollection_StlIterator[forward_iterator_tag,
      NCollection_ListIterator, TheItemType, true]

proc begin*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listiterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listiterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listconst_iterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listconst_iterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollection_List*[TheItemType](): NCollection_List[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_List<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_List*[TheItemType](
    theAllocator: handle[NCollection_BaseAllocator]): NCollection_List[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_List<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_List*[TheItemType](theOther: NCollection_List): NCollection_List[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_List<\'*0>(@)",
                  dynlib: tkernel.}
proc Size*[TheItemType](this: NCollection_List[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}
proc Assign*[TheItemType](this: var NCollection_List[TheItemType];
                         theOther: NCollection_List): var NCollection_List {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc Clear*[TheItemType](this: var NCollection_List[TheItemType]; theAllocator: handle[
    NCollection_BaseAllocator] = 0L'i64) {.cdecl, importcpp: "Clear", dynlib: tkernel.}
proc First*[TheItemType](this: NCollection_List[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", dynlib: tkernel.}
proc First*[TheItemType](this: var NCollection_List[TheItemType]): var TheItemType {.
    cdecl, importcpp: "First", dynlib: tkernel.}
proc Last*[TheItemType](this: NCollection_List[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", dynlib: tkernel.}
proc Last*[TheItemType](this: var NCollection_List[TheItemType]): var TheItemType {.
    cdecl, importcpp: "Last", dynlib: tkernel.}
proc Append*[TheItemType](this: var NCollection_List[TheItemType];
                         theItem: TheItemType): var TheItemType {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc Append*[TheItemType](this: var NCollection_List[TheItemType];
                         theItem: TheItemType;
                         theIter: var NCollection_ListIterator) {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc Append*[TheItemType](this: var NCollection_List[TheItemType];
                         theOther: var NCollection_List) {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc Prepend*[TheItemType](this: var NCollection_List[TheItemType];
                          theItem: TheItemType): var TheItemType {.cdecl,
    importcpp: "Prepend", dynlib: tkernel.}
proc Prepend*[TheItemType](this: var NCollection_List[TheItemType];
                          theOther: var NCollection_List) {.cdecl,
    importcpp: "Prepend", dynlib: tkernel.}
proc RemoveFirst*[TheItemType](this: var NCollection_List[TheItemType]) {.cdecl,
    importcpp: "RemoveFirst", dynlib: tkernel.}
proc Remove*[TheItemType](this: var NCollection_List[TheItemType];
                         theIter: var NCollection_ListIterator) {.cdecl,
    importcpp: "Remove", dynlib: tkernel.}
proc InsertBefore*[TheItemType](this: var NCollection_List[TheItemType];
                               theItem: TheItemType;
                               theIter: var NCollection_ListIterator): var TheItemType {.
    cdecl, importcpp: "InsertBefore", dynlib: tkernel.}
proc InsertBefore*[TheItemType](this: var NCollection_List[TheItemType];
                               theOther: var NCollection_List;
                               theIter: var NCollection_ListIterator) {.cdecl,
    importcpp: "InsertBefore", dynlib: tkernel.}
proc InsertAfter*[TheItemType](this: var NCollection_List[TheItemType];
                              theItem: TheItemType;
                              theIter: var NCollection_ListIterator): var TheItemType {.
    cdecl, importcpp: "InsertAfter", dynlib: tkernel.}
proc InsertAfter*[TheItemType](this: var NCollection_List[TheItemType];
                              theOther: var NCollection_List;
                              theIter: var NCollection_ListIterator) {.cdecl,
    importcpp: "InsertAfter", dynlib: tkernel.}
proc Reverse*[TheItemType](this: var NCollection_List[TheItemType]) {.cdecl,
    importcpp: "Reverse", dynlib: tkernel.}
proc Contains*[TheItemType](this: NCollection_List[TheItemType];
                           theObject: TheValueType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkernel.}
proc destroyNCollection_List*[TheItemType](
    this: var NCollection_List[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_List()", dynlib: tkernel.}