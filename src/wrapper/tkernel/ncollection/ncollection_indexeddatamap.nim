import ncollection_types
import ../standard/standard_types

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




proc newNCollectionIndexedDataMapIterator*[TheKeyType; TheItemType; Hasher](): NCollectionIndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    header: "NCollection_IndexedDataMap.hxx".}
proc newNCollectionIndexedDataMapIterator*[TheKeyType; TheItemType; Hasher](
    theMap: NCollectionIndexedDataMap): NCollectionIndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    header: "NCollection_IndexedDataMap.hxx".}
proc more*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): bool {.
    noSideEffect, cdecl, importcpp: "More", header: "NCollection_IndexedDataMap.hxx".}
proc next*[TheKeyType; TheItemType; Hasher](this: var NCollectionIndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher]) {.cdecl, importcpp: "Next", header: "NCollection_IndexedDataMap.hxx".}
proc value*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_IndexedDataMap.hxx".}
proc changeValue*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMapIterator[TheKeyType, TheItemType, Hasher]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", header: "NCollection_IndexedDataMap.hxx".}
proc key*[TheKeyType; TheItemType; Hasher](this: NCollectionIndexedDataMapIterator[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, cdecl,
    importcpp: "Key", header: "NCollection_IndexedDataMap.hxx".}
proc isEqual*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMapIterator[TheKeyType, TheItemType, Hasher];
    theOther: NCollectionIndexedDataMapIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "NCollection_IndexedDataMap.hxx".}

proc begin*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollectionIndexedDataMapiterator {.
    noSideEffect, cdecl, importcpp: "begin", header: "NCollection_IndexedDataMap.hxx".}
proc `end`*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollectionIndexedDataMapiterator {.
    noSideEffect, cdecl, importcpp: "end", header: "NCollection_IndexedDataMap.hxx".}
proc cbegin*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollectionIndexedDataMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", header: "NCollection_IndexedDataMap.hxx".}
proc cend*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): NCollectionIndexedDataMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", header: "NCollection_IndexedDataMap.hxx".}
proc newNCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher](): NCollectionIndexedDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                                    header: "NCollection_IndexedDataMap.hxx".}
proc newNCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher](
    theNbBuckets: cint; theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): NCollectionIndexedDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                                    header: "NCollection_IndexedDataMap.hxx".}
proc newNCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher](
    theOther: NCollectionIndexedDataMap): NCollectionIndexedDataMap[TheKeyType,
    TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedDataMap<\'*0,\'*1,\'*2>(@)",
                         header: "NCollection_IndexedDataMap.hxx".}
proc exchange*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theOther: var NCollectionIndexedDataMap) {.cdecl, importcpp: "Exchange",
    header: "NCollection_IndexedDataMap.hxx".}
proc assign*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theOther: NCollectionIndexedDataMap): var NCollectionIndexedDataMap {.cdecl,
    importcpp: "Assign", header: "NCollection_IndexedDataMap.hxx".}
proc reSize*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]; n: cint) {.
    cdecl, importcpp: "ReSize", header: "NCollection_IndexedDataMap.hxx".}
proc add*[TheKeyType; TheItemType; Hasher](this: var NCollectionIndexedDataMap[
    TheKeyType, TheItemType, Hasher]; theKey1: TheKeyType; theItem: TheItemType): cint {.
    cdecl, importcpp: "Add", header: "NCollection_IndexedDataMap.hxx".}
proc contains*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): bool {.noSideEffect, cdecl, importcpp: "Contains",
                              header: "NCollection_IndexedDataMap.hxx".}
proc substitute*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint; theKey1: TheKeyType; theItem: TheItemType) {.cdecl,
    importcpp: "Substitute", header: "NCollection_IndexedDataMap.hxx".}
proc swap*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex1: cint; theIndex2: cint) {.cdecl, importcpp: "Swap", header: "NCollection_IndexedDataMap.hxx".}
proc removeLast*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "RemoveLast", header: "NCollection_IndexedDataMap.hxx".}
proc removeFromIndex*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint) {.cdecl, importcpp: "RemoveFromIndex", header: "NCollection_IndexedDataMap.hxx".}
proc removeKey*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType) {.cdecl, importcpp: "RemoveKey", header: "NCollection_IndexedDataMap.hxx".}
proc findKey*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]; theIndex: cint): TheKeyType {.
    noSideEffect, cdecl, importcpp: "FindKey", header: "NCollection_IndexedDataMap.hxx".}
proc findFromIndex*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "FindFromIndex", header: "NCollection_IndexedDataMap.hxx".}
#proc `()`*[TheKeyType; TheItemType; Hasher](
#    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]; theIndex: cint): TheItemType {.
#    noSideEffect, cdecl, importcpp: "#(@)", header: "NCollection_IndexedDataMap.hxx".}
proc changeFromIndex*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theIndex: cint): var TheItemType {.cdecl, importcpp: "ChangeFromIndex",
                                   header: "NCollection_IndexedDataMap.hxx".}
#proc `()`*[TheKeyType; TheItemType; Hasher](
#    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
#    theIndex: cint): var TheItemType {.cdecl, importcpp: "#(@)", header: "NCollection_IndexedDataMap.hxx".}
proc findIndex*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): cint {.noSideEffect, cdecl, importcpp: "FindIndex",
                              header: "NCollection_IndexedDataMap.hxx".}
proc findFromKey*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): TheItemType {.noSideEffect, cdecl,
                                     importcpp: "FindFromKey", header: "NCollection_IndexedDataMap.hxx".}
proc changeFromKey*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): var TheItemType {.cdecl, importcpp: "ChangeFromKey",
                                        header: "NCollection_IndexedDataMap.hxx".}
proc seek*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): ptr TheItemType {.noSideEffect, cdecl, importcpp: "Seek",
                                        header: "NCollection_IndexedDataMap.hxx".}
proc changeSeek*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType): ptr TheItemType {.cdecl, importcpp: "ChangeSeek",
                                        header: "NCollection_IndexedDataMap.hxx".}
proc findFromKey*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theKey1: TheKeyType; theValue: var TheItemType): bool {.noSideEffect, cdecl,
    importcpp: "FindFromKey", header: "NCollection_IndexedDataMap.hxx".}
proc clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    doReleaseMemory: bool = true) {.cdecl, importcpp: "Clear", header: "NCollection_IndexedDataMap.hxx".}
proc clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher];
    theAllocator: Handle[NCollectionBaseAllocator]) {.cdecl, importcpp: "Clear",
    header: "NCollection_IndexedDataMap.hxx".}
proc destroyNCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_IndexedDataMap()", header: "NCollection_IndexedDataMap.hxx".}
proc size*[TheKeyType; TheItemType; Hasher](
    this: NCollectionIndexedDataMap[TheKeyType, TheItemType, Hasher]): cint {.
    noSideEffect, cdecl, importcpp: "Size", header: "NCollection_IndexedDataMap.hxx".}
