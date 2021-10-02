when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2002-04-24
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
##  Purpose:     The DataMap is a Map to store keys with associated
##               Items. See Map  from NCollection for  a discussion
##               about the number of buckets.
##
##               The DataMap can be seen as an extended array where
##               the Keys  are the   indices.  For this reason  the
##               operator () is defined on DataMap to fetch an Item
##               from a Key. So the following syntax can be used :
##
##               anItem = aMap(aKey);
##               aMap(aKey) = anItem;
##
##               This analogy has its  limit.   aMap(aKey) = anItem
##               can  be done only  if aKey was previously bound to
##               an item in the map.
##

type
  NCollection_DataMap*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollection_BaseMap ## !
                                                                           ## STL-compliant
                                                                           ## typedef for key type
                                                                           ##
                                                                           ## ****************
                                                                           ## Adaptation of the
                                                                           ## TListNode to the
                                                                           ## DATAmap
                                                                           ##
                                                                           ## ****************
                                                                           ## Implementation of the
                                                                           ## Iterator
                                                                           ## interface.
                                                                           ##
                                                                           ## ----------
                                                                           ## PUBLIC
                                                                           ## METHODS
                                                                           ## ------------
                                                                           ## ! Empty
                                                                           ## Constructor.
                                                                           ##
                                                                           ## ----------
                                                                           ## PROTECTED
                                                                           ## METHODS
                                                                           ## ----------
                                                                           ## !
                                                                           ## Lookup for
                                                                           ## particular key in map.
                                                                           ## Returns true if key is found and
                                                                           ## !
                                                                           ## thepNode
                                                                           ## points to
                                                                           ## binded node.
                                                                           ## Returns false if key is not
                                                                           ## found,
                                                                           ## !
                                                                           ## thehNode value is this case is not
                                                                           ## usable.

  NCollection_DataMapkey_type*[TheKeyType] = TheKeyType
  NCollection_DataMapvalue_type*[TheItemType] = TheItemType
  NCollection_DataMapDataMapNode*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>::DataMapNode",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollection_TListNode[
      TheItemType]            ## ! Constructor with 'Next'


proc constructNCollection_DataMapDataMapNode*[TheKeyType; TheItemType; Hasher](
    theKey: TheKeyType; theItem: TheItemType; theNext: ptr NCollection_ListNode): NCollection_DataMapDataMapNode[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>::DataMapNode(@)",
                                    dynlib: tkernel.}
proc Key*[TheKeyType; TheItemType; Hasher](this: NCollection_DataMapDataMapNode[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, cdecl,
    importcpp: "Key", dynlib: tkernel.}
proc delNode*[TheKeyType; TheItemType; Hasher](theNode: ptr NCollection_ListNode;
    theAl: var handle[NCollection_BaseAllocator]) {.cdecl,
    importcpp: "DataMapNode::delNode(@)", dynlib: tkernel.}
type
  NCollection_DataMapIterator*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>::Iterator",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollection_DataMapIterator ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor


proc constructNCollection_DataMapIterator*[TheKeyType; TheItemType; Hasher](): NCollection_DataMapIterator[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    dynlib: tkernel.}
proc constructNCollection_DataMapIterator*[TheKeyType; TheItemType; Hasher](
    theMap: NCollection_DataMap): NCollection_DataMapIterator[TheKeyType,
    TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                         dynlib: tkernel.}
proc More*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMapIterator[TheKeyType, TheItemType, Hasher]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc Next*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMapIterator[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc Value*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMapIterator[TheKeyType, TheItemType, Hasher]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc ChangeValue*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMapIterator[TheKeyType, TheItemType, Hasher]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc Key*[TheKeyType; TheItemType; Hasher](this: NCollection_DataMapIterator[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, cdecl,
    importcpp: "Key", dynlib: tkernel.}
type
  NCollection_DataMapiterator* = NCollection_StlIterator[forward_iterator_tag,
      NCollection_DataMapIterator, TheItemType, false]
  NCollection_DataMapconst_iterator* = NCollection_StlIterator[
      forward_iterator_tag, NCollection_DataMapIterator, TheItemType, true]

proc begin*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]): NCollection_DataMapiterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]): NCollection_DataMapiterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]): NCollection_DataMapconst_iterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]): NCollection_DataMapconst_iterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollection_DataMap*[TheKeyType; TheItemType; Hasher](): NCollection_DataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>(@)",
                                    dynlib: tkernel.}
proc constructNCollection_DataMap*[TheKeyType; TheItemType; Hasher](
    theNbBuckets: cint; theAllocator: handle[NCollection_BaseAllocator] = 0L'i64): NCollection_DataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>(@)",
                                    dynlib: tkernel.}
proc constructNCollection_DataMap*[TheKeyType; TheItemType; Hasher](
    theOther: NCollection_DataMap): NCollection_DataMap[TheKeyType, TheItemType,
    Hasher] {.cdecl, constructor,
             importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>(@)", dynlib: tkernel.}
proc Exchange*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    theOther: var NCollection_DataMap) {.cdecl, importcpp: "Exchange", dynlib: tkernel.}
proc Assign*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    theOther: NCollection_DataMap): var NCollection_DataMap {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc ReSize*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher]; N: cint) {.cdecl,
    importcpp: "ReSize", dynlib: tkernel.}
proc Bind*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType; theItem: TheItemType): bool {.cdecl, importcpp: "Bind",
    dynlib: tkernel.}
proc Bound*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType; theItem: TheItemType): ptr TheItemType {.cdecl,
    importcpp: "Bound", dynlib: tkernel.}
proc IsBound*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): bool {.
    noSideEffect, cdecl, importcpp: "IsBound", dynlib: tkernel.}
proc UnBind*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType): bool {.cdecl, importcpp: "UnBind", dynlib: tkernel.}
proc Seek*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): ptr TheItemType {.
    noSideEffect, cdecl, importcpp: "Seek", dynlib: tkernel.}
proc Find*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): TheItemType {.
    noSideEffect, cdecl, importcpp: "Find", dynlib: tkernel.}
proc Find*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType;
    theValue: var TheItemType): bool {.noSideEffect, cdecl, importcpp: "Find",
                                   dynlib: tkernel.}
proc `()`*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc ChangeSeek*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType): ptr TheItemType {.cdecl, importcpp: "ChangeSeek",
                                       dynlib: tkernel.}
proc ChangeFind*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType): var TheItemType {.cdecl, importcpp: "ChangeFind",
                                       dynlib: tkernel.}
proc `()`*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType): var TheItemType {.cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc Clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    doReleaseMemory: bool = Standard_True) {.cdecl, importcpp: "Clear", dynlib: tkernel.}
proc Clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher];
    theAllocator: handle[NCollection_BaseAllocator]) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc destroyNCollection_DataMap*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_DataMap[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_DataMap()", dynlib: tkernel.}
proc Size*[TheKeyType; TheItemType; Hasher](
    this: NCollection_DataMap[TheKeyType, TheItemType, Hasher]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}