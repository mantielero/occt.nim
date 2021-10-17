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

type
  NCollectionIndexedMap*[TheKeyType; Hasher] {.
      importcpp: "NCollection_IndexedMap<\'0,\'1>",
      header: "NCollection_IndexedMap.hxx", bycopy.} = object of NCollectionBaseMap ## !
                                                                             ## STL-compliant
                                                                             ## typedef for key
                                                                             ## type
                                                                             ## !
                                                                             ## Adaptation of the
                                                                             ## TListNode to the
                                                                             ## INDEXEDmap
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
                                                                             ## !
                                                                             ## Empty
                                                                             ## constructor.

  NCollectionIndexedMapkeyType*[TheKeyType] = TheKeyType
  NCollectionIndexedMapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_IndexedMap<\'0,\'1>::Iterator",
      header: "NCollection_IndexedMap.hxx", bycopy.} = object ## ! Empty constructor
    ##  Pointer to the map being iterated
    ##  Current index


proc newNCollectionIndexedMapIterator*[TheKeyType; Hasher](): NCollectionIndexedMapIterator[
    TheKeyType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedMap<\'*0,\'*1>::Iterator(@)",
                        dynlib: tkernel.}
proc newNCollectionIndexedMapIterator*[TheKeyType; Hasher](
    theMap: NCollectionIndexedMap): NCollectionIndexedMapIterator[TheKeyType,
    Hasher] {.cdecl, constructor,
             importcpp: "NCollection_IndexedMap<\'*0,\'*1>::Iterator(@)",
             dynlib: tkernel.}
proc more*[TheKeyType; Hasher](this: NCollectionIndexedMapIterator[TheKeyType,
    Hasher]): bool {.noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc next*[TheKeyType; Hasher](this: var NCollectionIndexedMapIterator[TheKeyType,
    Hasher]) {.cdecl, importcpp: "Next", dynlib: tkernel.}
proc value*[TheKeyType; Hasher](this: NCollectionIndexedMapIterator[TheKeyType,
    Hasher]): TheKeyType {.noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc isEqual*[TheKeyType; Hasher](this: NCollectionIndexedMapIterator[TheKeyType,
    Hasher]; theOther: NCollectionIndexedMapIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
type
  TheKeyType* = object
  NCollectionIndexedMapconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionIndexedMapIterator, TheKeyType, true]

proc cbegin*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher]): NCollectionIndexedMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher]): NCollectionIndexedMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc newNCollectionIndexedMap*[TheKeyType; Hasher](): NCollectionIndexedMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        dynlib: tkernel.}
proc newNCollectionIndexedMap*[TheKeyType; Hasher](theNbBuckets: cint;
    theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): NCollectionIndexedMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        dynlib: tkernel.}
proc newNCollectionIndexedMap*[TheKeyType; Hasher](theOther: NCollectionIndexedMap): NCollectionIndexedMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        dynlib: tkernel.}
proc exchange*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                                 theOther: var NCollectionIndexedMap) {.cdecl,
    importcpp: "Exchange", dynlib: tkernel.}
proc assign*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                               theOther: NCollectionIndexedMap): var NCollectionIndexedMap {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc reSize*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                               theExtent: cint) {.cdecl, importcpp: "ReSize",
    dynlib: tkernel.}
proc add*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                            theKey1: TheKeyType): cint {.cdecl, importcpp: "Add",
    dynlib: tkernel.}
proc contains*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher];
                                 theKey1: TheKeyType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkernel.}
proc substitute*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType,
    Hasher]; theIndex: cint; theKey1: TheKeyType) {.cdecl, importcpp: "Substitute",
    dynlib: tkernel.}
proc swap*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                             theIndex1: cint; theIndex2: cint) {.cdecl,
    importcpp: "Swap", dynlib: tkernel.}
proc removeLast*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType,
    Hasher]) {.cdecl, importcpp: "RemoveLast", dynlib: tkernel.}
proc removeFromIndex*[TheKeyType; Hasher](this: var NCollectionIndexedMap[
    TheKeyType, Hasher]; theIndex: cint) {.cdecl, importcpp: "RemoveFromIndex",
                                       dynlib: tkernel.}
proc removeKey*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType,
    Hasher]; theKey1: TheKeyType): bool {.cdecl, importcpp: "RemoveKey",
                                      dynlib: tkernel.}
proc findKey*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher];
                                theIndex: cint): TheKeyType {.noSideEffect, cdecl,
    importcpp: "FindKey", dynlib: tkernel.}
#proc `()`*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher];
#                             theIndex: cint): TheKeyType {.noSideEffect, cdecl,
#    importcpp: "#(@)", dynlib: tkernel.}
proc findIndex*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher];
                                  theKey1: TheKeyType): cint {.noSideEffect, cdecl,
    importcpp: "FindIndex", dynlib: tkernel.}
proc clear*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                              doReleaseMemory: bool = true) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
proc clear*[TheKeyType; Hasher](this: var NCollectionIndexedMap[TheKeyType, Hasher];
                              theAllocator: Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "Clear", dynlib: tkernel.}
proc destroyNCollectionIndexedMap*[TheKeyType; Hasher](
    this: var NCollectionIndexedMap[TheKeyType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_IndexedMap()", dynlib: tkernel.}
proc size*[TheKeyType; Hasher](this: NCollectionIndexedMap[TheKeyType, Hasher]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}