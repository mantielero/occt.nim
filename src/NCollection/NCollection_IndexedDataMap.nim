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
##  = NCollection_DefaultHasher<TheKeyType>

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
    TheKeyType, TheItemType, Hasher] {.constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    header: "NCollection_IndexedDataMap.hxx".}
proc constructNCollection_IndexedDataMapIterator*[TheKeyType; TheItemType; Hasher](
    theMap: NCollection_IndexedDataMap): NCollection_IndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher] {.constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    header: "NCollection_IndexedDataMap.hxx".}
proc More*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): Standard_Boolean {.
    noSideEffect, importcpp: "More", header: "NCollection_IndexedDataMap.hxx".}
proc Next*[TheKeyType; TheItemType; Hasher](this: var NCollection_IndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher]) {.importcpp: "Next",
                                     header: "NCollection_IndexedDataMap.hxx".}
proc Value*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_IndexedDataMap.hxx".}
proc ChangeValue*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): var TheItemType {.
    noSideEffect, importcpp: "ChangeValue",
    header: "NCollection_IndexedDataMap.hxx".}
proc Key*[TheKeyType; TheItemType; Hasher](this: NCollection_IndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, importcpp: "Key",
    header: "NCollection_IndexedDataMap.hxx".}
proc IsEqual*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMapIterator[TheKeyType, TheItemType, Hasher];
    theOther: NCollection_IndexedDataMapIterator): Standard_Boolean {.noSideEffect,
    importcpp: "IsEqual", header: "NCollection_IndexedDataMap.hxx".}
#[ type
#[   NCollection_IndexedDataMapiterator* = NCollection_StlIterator[
      forward_iterator_tag, NCollection_IndexedDataMapIterator, TheItemType, false] ]#
  NCollection_IndexedDataMapconst_iterator* = NCollection_StlIterator[
      forward_iterator_tag, NCollection_IndexedDataMapIterator, TheItemType, true] ]#

proc begin*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollection_IndexedDataMapiterator {.
    noSideEffect, importcpp: "begin", header: "NCollection_IndexedDataMap.hxx".}
proc `end`*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollection_IndexedDataMapiterator {.
    noSideEffect, importcpp: "end", header: "NCollection_IndexedDataMap.hxx".}
#[ proc cbegin*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollection_IndexedDataMapconst_iterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_IndexedDataMap.hxx".} ]#
#[ proc cend*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollection_IndexedDataMapconst_iterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_IndexedDataMap.hxx".} ]#
proc constructNCollection_IndexedDataMap*[TheKeyType; TheItemType; Hasher](): NCollection_IndexedDataMap[
    TheKeyType, TheItemType, Hasher] {.constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                                    header: "NCollection_IndexedDataMap.hxx".}
#[ proc constructNCollection_IndexedDataMap*[TheKeyType; TheItemType; Hasher](
    theNbBuckets: int; theAllocator: handle[NCollection_BaseAllocator] = 0L'i64): NCollection_IndexedDataMap[
    TheKeyType, TheItemType, Hasher] {.constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                                    header: "NCollection_IndexedDataMap.hxx".} ]#
proc constructNCollection_IndexedDataMap*[TheKeyType; TheItemType; Hasher](
    theOther: NCollection_IndexedDataMap): NCollection_IndexedDataMap[TheKeyType,
    TheItemType, Hasher] {.constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                         header: "NCollection_IndexedDataMap.hxx".}
proc Exchange*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theOther: var NCollection_IndexedDataMap) {.importcpp: "Exchange",
    header: "NCollection_IndexedDataMap.hxx".}
proc Assign*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theOther: NCollection_IndexedDataMap): var NCollection_IndexedDataMap {.
    importcpp: "Assign", header: "NCollection_IndexedDataMap.hxx".}
proc ReSize*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]; N: int) {.
    importcpp: "ReSize", header: "NCollection_IndexedDataMap.hxx".}
proc Add*[TheKeyType; TheItemType; Hasher](this: var NCollection_IndexedDataMap[
    TheKeyType, TheItemType, Hasher]; theKey1: TheKeyType; theItem: TheItemType): int {.
    importcpp: "Add", header: "NCollection_IndexedDataMap.hxx".}
proc Contains*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): Standard_Boolean {.noSideEffect, importcpp: "Contains",
    header: "NCollection_IndexedDataMap.hxx".}
proc Substitute*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: int; theKey1: TheKeyType; theItem: TheItemType) {.
    importcpp: "Substitute", header: "NCollection_IndexedDataMap.hxx".}
proc Swap*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex1: int; theIndex2: int) {.importcpp: "Swap",
                                  header: "NCollection_IndexedDataMap.hxx".}
proc RemoveLast*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]) {.
    importcpp: "RemoveLast", header: "NCollection_IndexedDataMap.hxx".}
proc RemoveFromIndex*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: int) {.importcpp: "RemoveFromIndex",
                   header: "NCollection_IndexedDataMap.hxx".}
proc RemoveKey*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType) {.importcpp: "RemoveKey",
                         header: "NCollection_IndexedDataMap.hxx".}
proc FindKey*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]; theIndex: int): TheKeyType {.
    noSideEffect, importcpp: "FindKey", header: "NCollection_IndexedDataMap.hxx".}
proc FindFromIndex*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]; theIndex: int): TheItemType {.
    noSideEffect, importcpp: "FindFromIndex",
    header: "NCollection_IndexedDataMap.hxx".}
proc `()`*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]; theIndex: int): TheItemType {.
    noSideEffect, importcpp: "#(@)", header: "NCollection_IndexedDataMap.hxx".}
proc ChangeFromIndex*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: int): var TheItemType {.importcpp: "ChangeFromIndex",
                                  header: "NCollection_IndexedDataMap.hxx".}
proc `()`*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: int): var TheItemType {.importcpp: "#(@)",
                                  header: "NCollection_IndexedDataMap.hxx".}
proc FindIndex*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): int {.noSideEffect, importcpp: "FindIndex",
                             header: "NCollection_IndexedDataMap.hxx".}
proc FindFromKey*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): TheItemType {.noSideEffect, importcpp: "FindFromKey",
                                     header: "NCollection_IndexedDataMap.hxx".}
proc ChangeFromKey*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): var TheItemType {.importcpp: "ChangeFromKey", header: "NCollection_IndexedDataMap.hxx".}
proc Seek*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): ptr TheItemType {.noSideEffect, importcpp: "Seek", header: "NCollection_IndexedDataMap.hxx".}
proc ChangeSeek*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): ptr TheItemType {.importcpp: "ChangeSeek", header: "NCollection_IndexedDataMap.hxx".}
proc FindFromKey*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType; theValue: var TheItemType): Standard_Boolean {.noSideEffect,
    importcpp: "FindFromKey", header: "NCollection_IndexedDataMap.hxx".}
proc Clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    doReleaseMemory: Standard_Boolean = true) {.importcpp: "Clear",
    header: "NCollection_IndexedDataMap.hxx".}
proc Clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher];
    theAllocator: handle[NCollection_BaseAllocator]) {.importcpp: "Clear",
    header: "NCollection_IndexedDataMap.hxx".}
proc destroyNCollection_IndexedDataMap*[TheKeyType; TheItemType; Hasher](
    this: var NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]) {.
    importcpp: "#.~NCollection_IndexedDataMap()",
    header: "NCollection_IndexedDataMap.hxx".}
proc Size*[TheKeyType; TheItemType; Hasher](
    this: NCollection_IndexedDataMap[TheKeyType, TheItemType, Hasher]): int {.
    noSideEffect, importcpp: "Size", header: "NCollection_IndexedDataMap.hxx".}