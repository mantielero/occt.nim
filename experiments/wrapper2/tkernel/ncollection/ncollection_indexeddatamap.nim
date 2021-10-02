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
##  Purpose:     An indexed map is used  to store keys and to  bind
##               an index to them.  Each  new key stored in the map
##               gets an index.  Index are  incremented as keys are
##               stored in the map. A key can be found by the index
##               and an index by the key.  No  key but the last can
##               be  removed so the  indices   are in the range 1..
##               Extent.  An Item is stored with each key.
##
##               This   class is   similar  to  IndexedMap     from
##               NCollection  with the Item as  a new feature. Note
##               the important difference on  the operator  ().  In
##               the IndexedMap this operator returns  the Key.  In
##               the IndexedDataMap this operator returns the Item.
##
##               See  the  class   Map   from NCollection   for   a
##               discussion about the number of buckets.
##

type
  NCollection_IndexedDataMap*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_IndexedDataMap<\'0,\'1,\'2>",
      header: "NCollection_IndexedDataMap.hxx", bycopy.} = object of NCollection_BaseMap ##
                                                                                  ## !
                                                                                  ## STL-compliant
                                                                                  ## typedef
                                                                                  ## for
                                                                                  ## key
                                                                                  ## type
                                                                                  ##
                                                                                  ## !
                                                                                  ## Adaptation
                                                                                  ## of
                                                                                  ## the
                                                                                  ## TListNode
                                                                                  ## to
                                                                                  ## the
                                                                                  ## INDEXEDDatamap
                                                                                  ##
                                                                                  ## !
                                                                                  ## Implementation
                                                                                  ## of
                                                                                  ## the
                                                                                  ## Iterator
                                                                                  ## interface.
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

  NCollection_IndexedDataMapkey_type*[TheKeyType] = TheKeyType
  NCollection_IndexedDataMapvalue_type*[TheItemType] = TheItemType
  NCollection_IndexedDataMapIterator*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_IndexedDataMap<\'0,\'1,\'2>::Iterator",
      header: "NCollection_IndexedDataMap.hxx", bycopy.} = object ## ! Empty constructor
    ## !< Pointer to current node
    ## !< Current index


proc constructNCollection_IndexedDataMapIterator*[TheKeyType; TheItemType; Hasher](): NCollection_IndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    dynlib: tkernel.}
proc constructNCollection_IndexedDataMapIterator*[TheKeyType; TheItemType; Hasher](
    theMap: NCollection_IndexedDataMap): NCollection_IndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    dynlib: tkernel.}
proc More*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc Next*[TheKeyType; TheItemType; Hasher](this: var NCollection_IndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher]) {.cdecl, importcpp: "Next", dynlib: tkernel.}
proc Value*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc ChangeValue*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc Key*[TheKeyType; TheItemType; Hasher](this: NCollection_IndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, cdecl,
    importcpp: "Key", dynlib: tkernel.}
proc IsEqual*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMapIterator[TheKeyType, TheItemType, Hasher];
    theOther: NCollection_IndexedDataMapIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
type
  NCollection_IndexedDataMapiterator* = NCollection_StlIterator[
      forward_iterator_tag, NCollection_IndexedDataMapIterator, TheItemType, false]
  NCollection_IndexedDataMapconst_iterator* = NCollection_StlIterator[
      forward_iterator_tag, NCollection_IndexedDataMapIterator, TheItemType, true]

proc begin*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollection_IndexedDataMapiterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollection_IndexedDataMapiterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollection_IndexedDataMapconst_iterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollection_IndexedDataMapconst_iterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollection_IndexedDataMap*[TheKeyType; TheItemType; Hasher](): NCollection_IndexedDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                                    dynlib: tkernel.}
proc constructNCollection_IndexedDataMap*[TheKeyType; TheItemType; Hasher](
    theNbBuckets: cint; theAllocator: handle[NCollection_BaseAllocator] = 0L'i64): NCollection_IndexedDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                                    dynlib: tkernel.}
proc constructNCollection_IndexedDataMap*[TheKeyType; TheItemType; Hasher](
    theOther: NCollection_IndexedDataMap): NCollection_IndexedDataMap[TheKeyType,
    TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                         dynlib: tkernel.}
proc Exchange*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theOther: var NCollection_IndexedDataMap) {.cdecl, importcpp: "Exchange",
    dynlib: tkernel.}
proc Assign*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theOther: NCollection_IndexedDataMap): var NCollection_IndexedDataMap {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc ReSize*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]; N: cint) {.
    cdecl, importcpp: "ReSize", dynlib: tkernel.}
proc Add*[TheKeyType; TheItemType; Hasher](this: var NCollection_IndexedDataMap[
    TheKeyType, TheItemType, Hasher]; theKey1: TheKeyType; theItem: TheItemType): cint {.
    cdecl, importcpp: "Add", dynlib: tkernel.}
proc Contains*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): bool {.noSideEffect, cdecl, importcpp: "Contains",
                              dynlib: tkernel.}
proc Substitute*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint; theKey1: TheKeyType; theItem: TheItemType) {.cdecl,
    importcpp: "Substitute", dynlib: tkernel.}
proc Swap*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex1: cint; theIndex2: cint) {.cdecl, importcpp: "Swap", dynlib: tkernel.}
proc RemoveLast*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "RemoveLast", dynlib: tkernel.}
proc RemoveFromIndex*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint) {.cdecl, importcpp: "RemoveFromIndex", dynlib: tkernel.}
proc RemoveKey*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType) {.cdecl, importcpp: "RemoveKey", dynlib: tkernel.}
proc FindKey*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint): TheKeyType {.noSideEffect, cdecl, importcpp: "FindKey",
                               dynlib: tkernel.}
proc FindFromIndex*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint): TheItemType {.noSideEffect, cdecl, importcpp: "FindFromIndex",
                                dynlib: tkernel.}
proc `()`*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint): TheItemType {.noSideEffect, cdecl, importcpp: "#(@)",
                                dynlib: tkernel.}
proc ChangeFromIndex*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint): var TheItemType {.cdecl, importcpp: "ChangeFromIndex",
                                   dynlib: tkernel.}
proc `()`*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint): var TheItemType {.cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc FindIndex*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): cint {.noSideEffect, cdecl, importcpp: "FindIndex",
                              dynlib: tkernel.}
proc FindFromKey*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): TheItemType {.noSideEffect, cdecl,
                                     importcpp: "FindFromKey", dynlib: tkernel.}
proc ChangeFromKey*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): var TheItemType {.cdecl, importcpp: "ChangeFromKey",
                                        dynlib: tkernel.}
proc Seek*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): ptr TheItemType {.noSideEffect, cdecl, importcpp: "Seek",
                                        dynlib: tkernel.}
proc ChangeSeek*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): ptr TheItemType {.cdecl, importcpp: "ChangeSeek",
                                        dynlib: tkernel.}
proc FindFromKey*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType; theValue: var TheItemType): bool {.noSideEffect, cdecl,
    importcpp: "FindFromKey", dynlib: tkernel.}
proc Clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    doReleaseMemory: bool = Standard_True) {.cdecl, importcpp: "Clear", dynlib: tkernel.}
proc Clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theAllocator: handle[NCollection_BaseAllocator]) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc destroyNCollection_IndexedDataMap*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_IndexedDataMap()", dynlib: tkernel.}
proc Size*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}