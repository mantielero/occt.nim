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

  NCollection_IndexedMapkey_type*[TheKeyType] = TheKeyType
  NCollection_IndexedMapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_IndexedMap<\'0,\'1>::Iterator",
      header: "NCollection_IndexedMap.hxx", bycopy.} = object ## ! Empty constructor
    ##  Pointer to the map being iterated
    ##  Current index


proc constructNCollection_IndexedMapIterator*[TheKeyType; Hasher](): NCollection_IndexedMapIterator[
    TheKeyType, Hasher] {.cdecl, constructor, importcpp: "NCollection_IndexedMap<\'*0,\'*1>::Iterator(@)",
                        dynlib: tkernel.}
proc constructNCollection_IndexedMapIterator*[TheKeyType; Hasher](
    theMap: NCollection_IndexedMap): NCollection_IndexedMapIterator[TheKeyType,
    Hasher] {.cdecl, constructor,
             importcpp: "NCollection_IndexedMap<\'*0,\'*1>::Iterator(@)",
             dynlib: tkernel.}
proc More*[TheKeyType; Hasher](this: NCollection_IndexedMapIterator[TheKeyType,
    Hasher]): bool {.noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc Next*[TheKeyType; Hasher](this: var NCollection_IndexedMapIterator[TheKeyType,
    Hasher]) {.cdecl, importcpp: "Next", dynlib: tkernel.}
proc Value*[TheKeyType; Hasher](this: NCollection_IndexedMapIterator[TheKeyType,
    Hasher]): TheKeyType {.noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc IsEqual*[TheKeyType; Hasher](this: NCollection_IndexedMapIterator[TheKeyType,
    Hasher]; theOther: NCollection_IndexedMapIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
type
  NCollection_IndexedMapconst_iterator* = NCollection_StlIterator[
      forward_iterator_tag, NCollection_IndexedMapIterator, TheKeyType, true]

proc cbegin*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher]): NCollection_IndexedMapconst_iterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher]): NCollection_IndexedMapconst_iterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollection_IndexedMap*[TheKeyType; Hasher](): NCollection_IndexedMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        dynlib: tkernel.}
proc constructNCollection_IndexedMap*[TheKeyType; Hasher](theNbBuckets: cint;
    theAllocator: handle[NCollection_BaseAllocator] = 0L'i64): NCollection_IndexedMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
                        dynlib: tkernel.}
proc constructNCollection_IndexedMap*[TheKeyType; Hasher](
    theOther: NCollection_IndexedMap): NCollection_IndexedMap[TheKeyType, Hasher] {.
    cdecl, constructor, importcpp: "NCollection_IndexedMap<\'*0,\'*1>(@)",
    dynlib: tkernel.}
proc Exchange*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType,
    Hasher]; theOther: var NCollection_IndexedMap) {.cdecl, importcpp: "Exchange",
    dynlib: tkernel.}
proc Assign*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                               theOther: NCollection_IndexedMap): var NCollection_IndexedMap {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc ReSize*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                               theExtent: cint) {.cdecl, importcpp: "ReSize",
    dynlib: tkernel.}
proc Add*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                            theKey1: TheKeyType): cint {.cdecl, importcpp: "Add",
    dynlib: tkernel.}
proc Contains*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher];
                                 theKey1: TheKeyType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkernel.}
proc Substitute*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType,
    Hasher]; theIndex: cint; theKey1: TheKeyType) {.cdecl, importcpp: "Substitute",
    dynlib: tkernel.}
proc Swap*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                             theIndex1: cint; theIndex2: cint) {.cdecl,
    importcpp: "Swap", dynlib: tkernel.}
proc RemoveLast*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType,
    Hasher]) {.cdecl, importcpp: "RemoveLast", dynlib: tkernel.}
proc RemoveFromIndex*[TheKeyType; Hasher](this: var NCollection_IndexedMap[
    TheKeyType, Hasher]; theIndex: cint) {.cdecl, importcpp: "RemoveFromIndex",
                                       dynlib: tkernel.}
proc RemoveKey*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType,
    Hasher]; theKey1: TheKeyType): bool {.cdecl, importcpp: "RemoveKey",
                                      dynlib: tkernel.}
proc FindKey*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher];
                                theIndex: cint): TheKeyType {.noSideEffect, cdecl,
    importcpp: "FindKey", dynlib: tkernel.}
proc `()`*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher];
                             theIndex: cint): TheKeyType {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkernel.}
proc FindIndex*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher];
                                  theKey1: TheKeyType): cint {.noSideEffect, cdecl,
    importcpp: "FindIndex", dynlib: tkernel.}
proc Clear*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                              doReleaseMemory: bool = Standard_True) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
proc Clear*[TheKeyType; Hasher](this: var NCollection_IndexedMap[TheKeyType, Hasher];
                              theAllocator: handle[NCollection_BaseAllocator]) {.
    cdecl, importcpp: "Clear", dynlib: tkernel.}
proc destroyNCollection_IndexedMap*[TheKeyType; Hasher](
    this: var NCollection_IndexedMap[TheKeyType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_IndexedMap()", dynlib: tkernel.}
proc Size*[TheKeyType; Hasher](this: NCollection_IndexedMap[TheKeyType, Hasher]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}