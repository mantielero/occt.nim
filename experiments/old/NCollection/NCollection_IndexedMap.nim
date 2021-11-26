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
##  = NCollection_DefaultHasher<TheKeyType>

#// = NCollection_DefaultHasher<TheKeyType> 

type
  NCollection_IndexedMap*[TheKeyType; Hasher] {.
      importcpp: "NCollection_IndexedMap<\'0,\'1>",
      header: "NCollection_IndexedMap.hxx", bycopy.} = object of NCollection_BaseMap ## !
                                                                              ## STL-compliant
                                                                              ## typedef
                                                                              ## for
                                                                              ## key
                                                                              ## type
                                                                              ## !
                                                                              ## Adaptation of
                                                                              ## the
                                                                              ## TListNode to
                                                                              ## the
                                                                              ## INDEXEDmap
                                                                              ##
                                                                              ## ****************
                                                                              ## Implementation of
                                                                              ## the
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
  #NCollection_IndexedMap*[TheKeyType] = NCollection_IndexedMap[TheKeyType, NCollection_DefaultHasher[TheKeyType]]

  NCollection_IndexedMapkey_type*[TheKeyType] = TheKeyType
  NCollection_IndexedMapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_IndexedMap<\'0,\'1>::Iterator",
      header: "NCollection_IndexedMap.hxx", bycopy.} = object ## ! Empty constructor
    ##  Pointer to the map being iterated
    ##  Current index

#[ type
  NCollection_IndexedMapconst_iterator* = NCollection_StlIterator[
      forward_iterator_tag, NCollection_IndexedMapIterator, TheKeyType, true]

        typename NCollection_StlIterator::reference operator[] (typename NCollection_StlIterator::difference_type theOffset) const
  {
    return *(*this + theOffset);
  } ]#
proc constructNCollection_IndexedMapIterator*[TheKeyType; Hasher](): NCollection_IndexedMapIterator[
    TheKeyType, Hasher] {.constructor, importcpp: "NCollection_IndexedMap<\'*0,\'*1>::Iterator(@)",
                        header: "NCollection_IndexedMap.hxx".}
proc constructNCollection_IndexedMapIterator*[TheKeyType; Hasher](
    theMap: NCollection_IndexedMap): NCollection_IndexedMapIterator[TheKeyType,
    Hasher] {.constructor,
             importcpp: "NCollection_IndexedMap<\'*0,\'*1>::Iterator(@)",
             header: "NCollection_IndexedMap.hxx".}
proc More*[TheKeyType; Hasher](this: NCollection_IndexedMapIterator[TheKeyType,
    Hasher]): Standard_Boolean {.noSideEffect, importcpp: "More",
                               header: "NCollection_IndexedMap.hxx".}
proc Next*[TheKeyType; Hasher](this: var NCollection_IndexedMapIterator[TheKeyType,
    Hasher]) {.importcpp: "Next", header: "NCollection_IndexedMap.hxx".}
proc Value*[TheKeyType; Hasher](this: NCollection_IndexedMapIterator[TheKeyType,
    Hasher]): TheKeyType {.noSideEffect, importcpp: "Value",
                         header: "NCollection_IndexedMap.hxx".}
proc IsEqual*[TheKeyType; Hasher](this: NCollection_IndexedMapIterator[TheKeyType,
    Hasher]; theOther: NCollection_IndexedMapIterator): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "NCollection_IndexedMap.hxx".}


#[ proc cbegin*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher]): NCollection_IndexedMapconst_iterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_IndexedMap.hxx".} ]#
#[ proc cend*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher]): NCollection_IndexedMapconst_iterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_IndexedMap.hxx".} ]#
proc constructNCollection_IndexedMap*[TheKeyType; Hasher](): NCollection_IndexedMap[
    TheKeyType, Hasher] {.constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        header: "NCollection_IndexedMap.hxx".}
#[ proc constructNCollection_IndexedMap*[TheKeyType; Hasher](theNbBuckets: int;
    theAllocator: handle[NCollection_BaseAllocator] = 0L'i64): NCollection_IndexedMap[
    TheKeyType, Hasher] {.constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        header: "NCollection_IndexedMap.hxx".} ]#
proc constructNCollection_IndexedMap*[TheKeyType; Hasher](
    theOther: NCollection_IndexedMap): NCollection_IndexedMap[TheKeyType, Hasher] {.
    constructor, importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
    header: "NCollection_IndexedMap.hxx".}
proc Exchange*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType,
    Hasher]; theOther: var NCollection_IndexedMap) {.importcpp: "Exchange",
    header: "NCollection_IndexedMap.hxx".}
proc Assign*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                               theOther: NCollection_IndexedMap): var NCollection_IndexedMap {.
    importcpp: "Assign", header: "NCollection_IndexedMap.hxx".}
proc ReSize*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                               theExtent: int) {.importcpp: "ReSize",
    header: "NCollection_IndexedMap.hxx".}
proc Add*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                            theKey1: TheKeyType): int {.importcpp: "Add",
    header: "NCollection_IndexedMap.hxx".}
proc Contains*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher];
                                 theKey1: TheKeyType): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "NCollection_IndexedMap.hxx".}
proc Substitute*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType,
    Hasher]; theIndex: int; theKey1: TheKeyType) {.importcpp: "Substitute",
    header: "NCollection_IndexedMap.hxx".}
proc Swap*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                             theIndex1: int; theIndex2: int) {.importcpp: "Swap",
    header: "NCollection_IndexedMap.hxx".}
proc RemoveLast*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType,
    Hasher]) {.importcpp: "RemoveLast", header: "NCollection_IndexedMap.hxx".}
proc RemoveFromIndex*[TheKeyType; Hasher](this: var NCollection_IndexedMap[
    TheKeyType, Hasher]; theIndex: int) {.importcpp: "RemoveFromIndex",
                                      header: "NCollection_IndexedMap.hxx".}
proc RemoveKey*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType,
    Hasher]; theKey1: TheKeyType): Standard_Boolean {.importcpp: "RemoveKey",
    header: "NCollection_IndexedMap.hxx".}
proc FindKey*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher];
                                theIndex: int): TheKeyType {.noSideEffect,
    importcpp: "FindKey", header: "NCollection_IndexedMap.hxx".}
proc `()`*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher];
                             theIndex: int): TheKeyType {.noSideEffect,
    importcpp: "#(@)", header: "NCollection_IndexedMap.hxx".}
proc FindIndex*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher];
                                  theKey1: TheKeyType): int {.noSideEffect,
    importcpp: "FindIndex", header: "NCollection_IndexedMap.hxx".}
proc Clear*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                              doReleaseMemory: Standard_Boolean = true) {.
    importcpp: "Clear", header: "NCollection_IndexedMap.hxx".}
proc Clear*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                              theAllocator: handle[NCollection_BaseAllocator]) {.
    importcpp: "Clear", header: "NCollection_IndexedMap.hxx".}
proc destroyNCollection_IndexedMap*[TheKeyType; Hasher](
    this: var NCollection_IndexedMap[TheKeyType, Hasher]) {.
    importcpp: "#.~NCollection_IndexedMap()", header: "NCollection_IndexedMap.hxx".}
proc Size*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher]): int {.
    noSideEffect, importcpp: "Size", header: "NCollection_IndexedMap.hxx".}