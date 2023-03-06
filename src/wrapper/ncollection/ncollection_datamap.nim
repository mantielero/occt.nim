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




proc newNCollectionDataMapDataMapNode*[TheKeyType; TheItemType; Hasher](
    theKey: TheKeyType; theItem: TheItemType; theNext: ptr NCollectionListNode): NCollectionDataMapDataMapNode[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>::DataMapNode(@)",
                                    header: "NCollection_DataMap.hxx".}
proc key*[TheKeyType; TheItemType; Hasher](this: NCollectionDataMapDataMapNode[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, cdecl,
    importcpp: "Key", header: "NCollection_DataMap.hxx".}
proc delNode*[TheKeyType; TheItemType; Hasher](theNode: ptr NCollectionListNode;
    theAl: var Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "DataMapNode::delNode(@)", header: "NCollection_DataMap.hxx".}


proc newNCollectionDataMapIterator*[TheKeyType; TheItemType; Hasher](): NCollectionDataMapIterator[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    header: "NCollection_DataMap.hxx".}
proc newNCollectionDataMapIterator*[TheKeyType; TheItemType; Hasher](
    theMap: NCollectionDataMap): NCollectionDataMapIterator[TheKeyType,
    TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                         header: "NCollection_DataMap.hxx".}
proc more*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMapIterator[TheKeyType, TheItemType, Hasher]): bool {.
    noSideEffect, cdecl, importcpp: "More", header: "NCollection_DataMap.hxx".}
proc next*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMapIterator[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "Next", header: "NCollection_DataMap.hxx".}
proc value*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMapIterator[TheKeyType, TheItemType, Hasher]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_DataMap.hxx".}
proc changeValue*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMapIterator[TheKeyType, TheItemType, Hasher]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", header: "NCollection_DataMap.hxx".}
proc key*[TheKeyType; TheItemType; Hasher](this: NCollectionDataMapIterator[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, cdecl,
    importcpp: "Key", header: "NCollection_DataMap.hxx".}

proc begin*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): NCollectionDataMapiterator {.
    noSideEffect, cdecl, importcpp: "begin", header: "NCollection_DataMap.hxx".}
proc `end`*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): NCollectionDataMapiterator {.
    noSideEffect, cdecl, importcpp: "end", header: "NCollection_DataMap.hxx".}
proc cbegin*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): NCollectionDataMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", header: "NCollection_DataMap.hxx".}
proc cend*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): NCollectionDataMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", header: "NCollection_DataMap.hxx".}
proc newNCollectionDataMap*[TheKeyType; TheItemType; Hasher](): NCollectionDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>(@)",
                                    header: "NCollection_DataMap.hxx".}
proc newNCollectionDataMap*[TheKeyType; TheItemType; Hasher](theNbBuckets: cint;
    theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): NCollectionDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>(@)",
                                    header: "NCollection_DataMap.hxx".}
proc newNCollectionDataMap*[TheKeyType; TheItemType; Hasher](
    theOther: NCollectionDataMap): NCollectionDataMap[TheKeyType, TheItemType,
    Hasher] {.cdecl, constructor,
             importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>(@)", header: "NCollection_DataMap.hxx".}
proc exchange*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theOther: var NCollectionDataMap) {.cdecl, importcpp: "Exchange", header: "NCollection_DataMap.hxx".}
proc assign*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theOther: NCollectionDataMap): var NCollectionDataMap {.cdecl,
    importcpp: "Assign", header: "NCollection_DataMap.hxx".}
proc reSize*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; n: cint) {.cdecl,
    importcpp: "ReSize", header: "NCollection_DataMap.hxx".}
proc `bind`*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType; theItem: TheItemType): bool {.cdecl, importcpp: "Bind",
    header: "NCollection_DataMap.hxx".}
proc bound*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType; theItem: TheItemType): ptr TheItemType {.cdecl,
    importcpp: "Bound", header: "NCollection_DataMap.hxx".}
proc isBound*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): bool {.
    noSideEffect, cdecl, importcpp: "IsBound", header: "NCollection_DataMap.hxx".}
proc unBind*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): bool {.
    cdecl, importcpp: "UnBind", header: "NCollection_DataMap.hxx".}
proc seek*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): ptr TheItemType {.
    noSideEffect, cdecl, importcpp: "Seek", header: "NCollection_DataMap.hxx".}
proc find*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): TheItemType {.
    noSideEffect, cdecl, importcpp: "Find", header: "NCollection_DataMap.hxx".}
proc find*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType;
    theValue: var TheItemType): bool {.noSideEffect, cdecl, importcpp: "Find",
                                   header: "NCollection_DataMap.hxx".}
#proc `()`*[TheKeyType; TheItemType; Hasher](
#    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): TheItemType {.
#    noSideEffect, cdecl, importcpp: "#(@)", header: "NCollection_DataMap.hxx".}
proc changeSeek*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): ptr TheItemType {.
    cdecl, importcpp: "ChangeSeek", header: "NCollection_DataMap.hxx".}
proc changeFind*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): var TheItemType {.
    cdecl, importcpp: "ChangeFind", header: "NCollection_DataMap.hxx".}
#proc `()`*[TheKeyType; TheItemType; Hasher](
#    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): var TheItemType {.
#    cdecl, importcpp: "#(@)", header: "NCollection_DataMap.hxx".}
proc clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    doReleaseMemory: bool = true) {.cdecl, importcpp: "Clear", header: "NCollection_DataMap.hxx".}
proc clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theAllocator: Handle[NCollectionBaseAllocator]) {.cdecl, importcpp: "Clear",
    header: "NCollection_DataMap.hxx".}
proc destroyNCollectionDataMap*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_DataMap()", header: "NCollection_DataMap.hxx".}
proc size*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): cint {.noSideEffect,
    cdecl, importcpp: "Size", header: "NCollection_DataMap.hxx".}
