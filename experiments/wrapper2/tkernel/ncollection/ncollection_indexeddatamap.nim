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
  NCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_IndexedDataMap<\'0,\'1,\'2>",
      header: "NCollection_IndexedDataMap.hxx", bycopy.} = object of NCollectionBaseMap ##
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

  NCollectionIndexedDataMapkeyType*[TheKeyType] = TheKeyType
  NCollectionIndexedDataMapvalueType*[TheItemType] = TheItemType
  NCollectionIndexedDataMapIterator*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_IndexedDataMap<\'0,\'1,\'2>::Iterator",
      header: "NCollection_IndexedDataMap.hxx", bycopy.} = object ## ! Empty constructor
    ## !< Pointer to current node
    ## !< Current index


proc constructNCollectionIndexedDataMapIterator*[TheKeyType; TheItemType; Hasher](): NCollectionIndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    dynlib: tkernel.}
proc constructNCollectionIndexedDataMapIterator*[TheKeyType; TheItemType; Hasher](
    theMap: NCollectionIndexedDataMap): NCollectionIndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    dynlib: tkernel.}
proc more*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc next*[TheKeyType; TheItemType; Hasher](this: var NCollectionIndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher]) {.cdecl, importcpp: "Next", dynlib: tkernel.}
proc value*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc changeValue*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc key*[TheKeyType; TheItemType; Hasher](this: NCollectionIndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, cdecl,
    importcpp: "Key", dynlib: tkernel.}
proc isEqual*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMapIterator[TheKeyType, TheItemType, Hasher];
    theOther: NCollectionIndexedDataMapIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
type
#  NCollectionIndexedDataMapiterator* = NCollectionStlIterator[ForwardIteratorTag,
#      NCollectionIndexedDataMapIterator, TheItemType, False]
  NCollectionIndexedDataMapconstIterator* = NCollectionStlIterator[
      ForwardIteratorTag, NCollectionIndexedDataMapIterator, TheItemType, true]

proc begin*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollectionIndexedDataMapiterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollectionIndexedDataMapiterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollectionIndexedDataMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollectionIndexedDataMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher](): NCollectionIndexedDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                                    dynlib: tkernel.}
proc constructNCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher](
    theNbBuckets: cint; theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): NCollectionIndexedDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                                    dynlib: tkernel.}
proc constructNCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher](
    theOther: NCollectionIndexedDataMap): NCollectionIndexedDataMap[TheKeyType,
    TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                         dynlib: tkernel.}
proc exchange*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theOther: var NCollectionIndexedDataMap) {.cdecl, importcpp: "Exchange",
    dynlib: tkernel.}
proc assign*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theOther: NCollectionIndexedDataMap): var NCollectionIndexedDataMap {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc reSize*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]; n: cint) {.
    cdecl, importcpp: "ReSize", dynlib: tkernel.}
proc add*[TheKeyType; TheItemType; Hasher](this: var NCollectionIndexedDataMap[
    TheKeyType, TheItemType, Hasher]; theKey1: TheKeyType; theItem: TheItemType): cint {.
    cdecl, importcpp: "Add", dynlib: tkernel.}
proc contains*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): bool {.noSideEffect, cdecl, importcpp: "Contains",
                              dynlib: tkernel.}
proc substitute*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint; theKey1: TheKeyType; theItem: TheItemType) {.cdecl,
    importcpp: "Substitute", dynlib: tkernel.}
proc swap*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex1: cint; theIndex2: cint) {.cdecl, importcpp: "Swap", dynlib: tkernel.}
proc removeLast*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "RemoveLast", dynlib: tkernel.}
proc removeFromIndex*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint) {.cdecl, importcpp: "RemoveFromIndex", dynlib: tkernel.}
proc removeKey*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType) {.cdecl, importcpp: "RemoveKey", dynlib: tkernel.}
proc findKey*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]; theIndex: cint): TheKeyType {.
    noSideEffect, cdecl, importcpp: "FindKey", dynlib: tkernel.}
proc findFromIndex*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "FindFromIndex", dynlib: tkernel.}
#proc `()`*[TheKeyType; TheItemType; Hasher](
#    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]; theIndex: cint): TheItemType {.
#    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc changeFromIndex*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint): var TheItemType {.cdecl, importcpp: "ChangeFromIndex",
                                   dynlib: tkernel.}
#proc `()`*[TheKeyType; TheItemType; Hasher](
#    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
#    theIndex: cint): var TheItemType {.cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc findIndex*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): cint {.noSideEffect, cdecl, importcpp: "FindIndex",
                              dynlib: tkernel.}
proc findFromKey*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): TheItemType {.noSideEffect, cdecl,
                                     importcpp: "FindFromKey", dynlib: tkernel.}
proc changeFromKey*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): var TheItemType {.cdecl, importcpp: "ChangeFromKey",
                                        dynlib: tkernel.}
proc seek*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): ptr TheItemType {.noSideEffect, cdecl, importcpp: "Seek",
                                        dynlib: tkernel.}
proc changeSeek*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): ptr TheItemType {.cdecl, importcpp: "ChangeSeek",
                                        dynlib: tkernel.}
proc findFromKey*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType; theValue: var TheItemType): bool {.noSideEffect, cdecl,
    importcpp: "FindFromKey", dynlib: tkernel.}
proc clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    doReleaseMemory: bool = true) {.cdecl, importcpp: "Clear", dynlib: tkernel.}
proc clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theAllocator: Handle[NCollectionBaseAllocator]) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc destroyNCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_IndexedDataMap()", dynlib: tkernel.}
proc size*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}