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
  NCollectionDataMap*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollectionBaseMap ## !
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
                                                                          ## ---------- PUBLIC
                                                                          ## METHODS
                                                                          ## ------------
                                                                          ## ! Empty
                                                                          ## Constructor.
                                                                          ##
                                                                          ## ----------
                                                                          ## PROTECTED
                                                                          ## METHODS
                                                                          ## ----------
                                                                          ## ! Lookup for
                                                                          ## particular key in map.
                                                                          ## Returns true if key is found and
                                                                          ## !
                                                                          ## thepNode points to binded node.
                                                                          ## Returns false if key is not found,
                                                                          ## !
                                                                          ## thehNode value is this case is not
                                                                          ## usable.

  NCollectionDataMapkeyType*[TheKeyType] = TheKeyType
  NCollectionDataMapvalueType*[TheItemType] = TheItemType
  NCollectionDataMapDataMapNode*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>::DataMapNode",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollectionTListNode[
      TheItemType]            ## ! Constructor with 'Next'


proc constructNCollectionDataMapDataMapNode*[TheKeyType; TheItemType; Hasher](
    theKey: TheKeyType; theItem: TheItemType; theNext: ptr NCollectionListNode): NCollectionDataMapDataMapNode[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>::DataMapNode(@)",
                                    dynlib: tkernel.}
proc key*[TheKeyType; TheItemType; Hasher](this: NCollectionDataMapDataMapNode[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, cdecl,
    importcpp: "Key", dynlib: tkernel.}
proc delNode*[TheKeyType; TheItemType; Hasher](theNode: ptr NCollectionListNode;
    theAl: var Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "DataMapNode::delNode(@)", dynlib: tkernel.}
type
  NCollectionDataMapIterator*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>::Iterator",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollectionDataMapIterator ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructNCollectionDataMapIterator*[TheKeyType; TheItemType; Hasher](): NCollectionDataMapIterator[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                                    dynlib: tkernel.}
proc constructNCollectionDataMapIterator*[TheKeyType; TheItemType; Hasher](
    theMap: NCollectionDataMap): NCollectionDataMapIterator[TheKeyType,
    TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>::Iterator(@)",
                         dynlib: tkernel.}
proc more*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMapIterator[TheKeyType, TheItemType, Hasher]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc next*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMapIterator[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc value*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMapIterator[TheKeyType, TheItemType, Hasher]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc changeValue*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMapIterator[TheKeyType, TheItemType, Hasher]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc key*[TheKeyType; TheItemType; Hasher](this: NCollectionDataMapIterator[
    TheKeyType, TheItemType, Hasher]): TheKeyType {.noSideEffect, cdecl,
    importcpp: "Key", dynlib: tkernel.}
type
  NCollectionDataMapiterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionDataMapIterator, TheItemType, False]
  NCollectionDataMapconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionDataMapIterator, TheItemType, True]

proc begin*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): NCollectionDataMapiterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): NCollectionDataMapiterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): NCollectionDataMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): NCollectionDataMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollectionDataMap*[TheKeyType; TheItemType; Hasher](): NCollectionDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>(@)",
                                    dynlib: tkernel.}
proc constructNCollectionDataMap*[TheKeyType; TheItemType; Hasher](
    theNbBuckets: cint; theAllocator: Handle[NCollectionBaseAllocator] = 0): NCollectionDataMap[
    TheKeyType, TheItemType, Hasher] {.cdecl, constructor, importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>(@)",
                                    dynlib: tkernel.}
proc constructNCollectionDataMap*[TheKeyType; TheItemType; Hasher](
    theOther: NCollectionDataMap): NCollectionDataMap[TheKeyType, TheItemType,
    Hasher] {.cdecl, constructor,
             importcpp: "NCollection_DataMap<\'*0,\'*1,\'*2>(@)", dynlib: tkernel.}
proc exchange*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theOther: var NCollectionDataMap) {.cdecl, importcpp: "Exchange", dynlib: tkernel.}
proc assign*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theOther: NCollectionDataMap): var NCollectionDataMap {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc reSize*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; n: cint) {.cdecl,
    importcpp: "ReSize", dynlib: tkernel.}
proc `bind`*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType; theItem: TheItemType): bool {.cdecl, importcpp: "Bind",
    dynlib: tkernel.}
proc bound*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theKey: TheKeyType; theItem: TheItemType): ptr TheItemType {.cdecl,
    importcpp: "Bound", dynlib: tkernel.}
proc isBound*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): bool {.
    noSideEffect, cdecl, importcpp: "IsBound", dynlib: tkernel.}
proc unBind*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): bool {.
    cdecl, importcpp: "UnBind", dynlib: tkernel.}
proc seek*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): ptr TheItemType {.
    noSideEffect, cdecl, importcpp: "Seek", dynlib: tkernel.}
proc find*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): TheItemType {.
    noSideEffect, cdecl, importcpp: "Find", dynlib: tkernel.}
proc find*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType;
    theValue: var TheItemType): bool {.noSideEffect, cdecl, importcpp: "Find",
                                   dynlib: tkernel.}
proc `()`*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc changeSeek*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): ptr TheItemType {.
    cdecl, importcpp: "ChangeSeek", dynlib: tkernel.}
proc changeFind*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): var TheItemType {.
    cdecl, importcpp: "ChangeFind", dynlib: tkernel.}
proc `()`*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]; theKey: TheKeyType): var TheItemType {.
    cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    doReleaseMemory: bool = standardTrue) {.cdecl, importcpp: "Clear", dynlib: tkernel.}
proc clear*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher];
    theAllocator: Handle[NCollectionBaseAllocator]) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc destroyNCollectionDataMap*[TheKeyType; TheItemType; Hasher](
    this: var NCollectionDataMap[TheKeyType, TheItemType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_DataMap()", dynlib: tkernel.}
proc size*[TheKeyType; TheItemType; Hasher](
    this: NCollectionDataMap[TheKeyType, TheItemType, Hasher]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}