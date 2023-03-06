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
##  Purpose:     An indexed map is used to  store  keys and to bind
##               an index to them.  Each new key stored in  the map
##               gets an index.  Index are incremented  as keys are
##               stored in the map. A key can be found by the index
##               and an index by the  key. No key  but the last can
##               be removed so the indices are in the range 1..Extent.
##               See  the  class   Map   from NCollection   for   a
##               discussion about the number of buckets.
##




proc newNCollectionIndexedMapIterator*[TheKeyType; Hasher](): NCollectionIndexedMapIterator[
    TheKeyType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedMap<\'*0,\'*1>::Iterator(@)",
                        header: "NCollection_IndexedMap.hxx".}
proc newNCollectionIndexedMapIterator*[TheKeyType; Hasher](
    theMap: NCollectionIndexedMap): NCollectionIndexedMapIterator[TheKeyType,
    Hasher] {.cdecl, constructor,
             importcpp: "NCollection_IndexedMap<\'*0,\'*1>::Iterator(@)",
             header: "NCollection_IndexedMap.hxx".}
proc more*[TheKeyType; Hasher](this: NCollectionIndexedMapIterator[TheKeyType,
    Hasher]): bool {.noSideEffect, cdecl, importcpp: "More", header: "NCollection_IndexedMap.hxx".}
proc next*[TheKeyType; Hasher](this: var NCollectionIndexedMapIterator[TheKeyType,
    Hasher]) {.cdecl, importcpp: "Next", header: "NCollection_IndexedMap.hxx".}
proc value*[TheKeyType; Hasher](this: NCollectionIndexedMapIterator[TheKeyType,
    Hasher]): TheKeyType {.noSideEffect, cdecl, importcpp: "Value", header: "NCollection_IndexedMap.hxx".}
proc isEqual*[TheKeyType; Hasher](this: NCollectionIndexedMapIterator[TheKeyType,
    Hasher]; theOther: NCollectionIndexedMapIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "NCollection_IndexedMap.hxx".}

proc cbegin*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher]): NCollectionIndexedMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", header: "NCollection_IndexedMap.hxx".}
proc cend*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher]): NCollectionIndexedMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", header: "NCollection_IndexedMap.hxx".}
proc newNCollectionIndexedMap*[TheKeyType; Hasher](): NCollectionIndexedMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        header: "NCollection_IndexedMap.hxx".}
proc newNCollectionIndexedMap*[TheKeyType; Hasher](theNbBuckets: cint;
    theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): NCollectionIndexedMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        header: "NCollection_IndexedMap.hxx".}
proc newNCollectionIndexedMap*[TheKeyType; Hasher](theOther: NCollectionIndexedMap): NCollectionIndexedMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        header: "NCollection_IndexedMap.hxx".}
proc exchange*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                                 theOther: var NCollectionIndexedMap) {.cdecl,
    importcpp: "Exchange", header: "NCollection_IndexedMap.hxx".}
proc assign*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                               theOther: NCollectionIndexedMap): var NCollectionIndexedMap {.
    cdecl, importcpp: "Assign", header: "NCollection_IndexedMap.hxx".}
proc reSize*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                               theExtent: cint) {.cdecl, importcpp: "ReSize",
    header: "NCollection_IndexedMap.hxx".}
proc add*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                            theKey1: TheKeyType): cint {.cdecl, importcpp: "Add",
    header: "NCollection_IndexedMap.hxx".}
proc contains*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher];
                                 theKey1: TheKeyType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "NCollection_IndexedMap.hxx".}
proc substitute*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType,
    Hasher]; theIndex: cint; theKey1: TheKeyType) {.cdecl, importcpp: "Substitute",
    header: "NCollection_IndexedMap.hxx".}
proc swap*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                             theIndex1: cint; theIndex2: cint) {.cdecl,
    importcpp: "Swap", header: "NCollection_IndexedMap.hxx".}
proc removeLast*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType,
    Hasher]) {.cdecl, importcpp: "RemoveLast", header: "NCollection_IndexedMap.hxx".}
proc removeFromIndex*[TheKeyType; Hasher](this: var NCollectionIndexedMap[
    TheKeyType, Hasher]; theIndex: cint) {.cdecl, importcpp: "RemoveFromIndex",
                                       header: "NCollection_IndexedMap.hxx".}
proc removeKey*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType,
    Hasher]; theKey1: TheKeyType): bool {.cdecl, importcpp: "RemoveKey",
                                      header: "NCollection_IndexedMap.hxx".}
proc findKey*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher];
                                theIndex: cint): TheKeyType {.noSideEffect, cdecl,
    importcpp: "FindKey", header: "NCollection_IndexedMap.hxx".}
#proc `()`*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher];
#                             theIndex: cint): TheKeyType {.noSideEffect, cdecl,
#    importcpp: "#(@)", header: "NCollection_IndexedMap.hxx".}
proc findIndex*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher];
                                  theKey1: TheKeyType): cint {.noSideEffect, cdecl,
    importcpp: "FindIndex", header: "NCollection_IndexedMap.hxx".}
proc clear*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                              doReleaseMemory: bool = true) {.cdecl,
    importcpp: "Clear", header: "NCollection_IndexedMap.hxx".}
proc clear*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                              theAllocator: Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "Clear", header: "NCollection_IndexedMap.hxx".}
proc destroyNCollectionIndexedMap*[TheKeyType; Hasher](
    this: var NCollectionIndexedMap[TheKeyType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_IndexedMap()", header: "NCollection_IndexedMap.hxx".}
proc size*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher]): cint {.
    noSideEffect, cdecl, importcpp: "Size", header: "NCollection_IndexedMap.hxx".}
