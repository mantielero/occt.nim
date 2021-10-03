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
##  Purpose:     The DoubleMap  is used to  bind  pairs (Key1,Key2)
##               and retrieve them in linear time.
##
##               See Map from NCollection for a discussion about the number
##               of buckets
##

type
  NCollectionDoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollectionBaseMap ## !
                                                                            ## STL-compliant
                                                                            ## typedef for key1 type
                                                                            ##
                                                                            ## ****************
                                                                            ## Adaptation of the
                                                                            ## TListNode to the
                                                                            ## DOUBLEmap
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

  NCollectionDoubleMapkey1Type*[TheKey1Type] = TheKey1Type
  NCollectionDoubleMapkey2Type*[TheKey2Type] = TheKey2Type
  NCollectionDoubleMapDoubleMapNode*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>::DoubleMapNode",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollectionTListNode[
      TheKey2Type]            ## ! Constructor with 'Next'


proc constructNCollectionDoubleMapDoubleMapNode*[TheKey1Type; TheKey2Type; Hasher1;
    Hasher2](theKey1: TheKey1Type; theKey2: TheKey2Type;
             theNext1: ptr NCollectionListNode; theNext2: ptr NCollectionListNode): NCollectionDoubleMapDoubleMapNode[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2] {.cdecl, constructor,
    importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>::DoubleMapNode(@)",
    dynlib: tkernel.}
proc key1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollectionDoubleMapDoubleMapNode[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey1Type {.cdecl,
    importcpp: "Key1", dynlib: tkernel.}
proc key2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollectionDoubleMapDoubleMapNode[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey2Type {.cdecl,
    importcpp: "Key2", dynlib: tkernel.}
proc next2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollectionDoubleMapDoubleMapNode[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): ptr NCollectionDoubleMapDoubleMapNode {.
    cdecl, importcpp: "Next2", dynlib: tkernel.}
proc delNode*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    theNode: ptr NCollectionListNode; theAl: var Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "DoubleMapNode::delNode(@)", dynlib: tkernel.}
type
  NCollectionDoubleMapIterator*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>::Iterator",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollectionDoubleMapIterator ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructNCollectionDoubleMapIterator*[TheKey1Type; TheKey2Type; Hasher1;
    Hasher2](): NCollectionDoubleMapIterator[TheKey1Type, TheKey2Type, Hasher1,
    Hasher2] {.cdecl, constructor, importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>::Iterator(@)",
              dynlib: tkernel.}
proc constructNCollectionDoubleMapIterator*[TheKey1Type; TheKey2Type; Hasher1;
    Hasher2](theMap: NCollectionDoubleMap): NCollectionDoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2] {.cdecl, constructor,
    importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>::Iterator(@)",
    dynlib: tkernel.}
proc more*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: NCollectionDoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): bool {.noSideEffect, cdecl,
    importcpp: "More", dynlib: tkernel.}
proc next*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollectionDoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]) {.cdecl, importcpp: "Next",
    dynlib: tkernel.}
proc key1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: NCollectionDoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey1Type {.noSideEffect, cdecl,
    importcpp: "Key1", dynlib: tkernel.}
proc key2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: NCollectionDoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey2Type {.noSideEffect, cdecl,
    importcpp: "Key2", dynlib: tkernel.}
proc value*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: NCollectionDoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey2Type {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkernel.}
proc constructNCollectionDoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](): NCollectionDoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2] {.cdecl, constructor,
    importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>(@)", dynlib: tkernel.}
proc constructNCollectionDoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    theNbBuckets: cint; theAllocator: Handle[NCollectionBaseAllocator] = 0): NCollectionDoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2] {.cdecl, constructor,
    importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>(@)", dynlib: tkernel.}
proc constructNCollectionDoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    theOther: NCollectionDoubleMap): NCollectionDoubleMap[TheKey1Type, TheKey2Type,
    Hasher1, Hasher2] {.cdecl, constructor, importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>(@)",
                      dynlib: tkernel.}
proc exchange*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theOther: var NCollectionDoubleMap) {.cdecl, importcpp: "Exchange",
                                       dynlib: tkernel.}
proc assign*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theOther: NCollectionDoubleMap): var NCollectionDoubleMap {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc reSize*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    n: cint) {.cdecl, importcpp: "ReSize", dynlib: tkernel.}
proc `bind`*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type; theKey2: TheKey2Type) {.cdecl, importcpp: "Bind",
    dynlib: tkernel.}
proc areBound*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type; theKey2: TheKey2Type): bool {.noSideEffect, cdecl,
    importcpp: "AreBound", dynlib: tkernel.}
proc isBound1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type): bool {.noSideEffect, cdecl, importcpp: "IsBound1",
                               dynlib: tkernel.}
proc isBound2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey2: TheKey2Type): bool {.noSideEffect, cdecl, importcpp: "IsBound2",
                               dynlib: tkernel.}
proc unBind1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type): bool {.cdecl, importcpp: "UnBind1", dynlib: tkernel.}
proc unBind2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey2: TheKey2Type): bool {.cdecl, importcpp: "UnBind2", dynlib: tkernel.}
proc find1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type): TheKey2Type {.noSideEffect, cdecl, importcpp: "Find1",
                                      dynlib: tkernel.}
proc find1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type; theKey2: var TheKey2Type): bool {.noSideEffect, cdecl,
    importcpp: "Find1", dynlib: tkernel.}
proc seek1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type): ptr TheKey2Type {.noSideEffect, cdecl, importcpp: "Seek1",
    dynlib: tkernel.}
proc find2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey2: TheKey2Type): TheKey1Type {.noSideEffect, cdecl, importcpp: "Find2",
                                      dynlib: tkernel.}
proc find2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey2: TheKey2Type; theKey1: var TheKey1Type): bool {.noSideEffect, cdecl,
    importcpp: "Find2", dynlib: tkernel.}
proc seek2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey2: TheKey2Type): ptr TheKey1Type {.noSideEffect, cdecl, importcpp: "Seek2",
    dynlib: tkernel.}
proc clear*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    doReleaseMemory: bool = standardTrue) {.cdecl, importcpp: "Clear", dynlib: tkernel.}
proc clear*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theAllocator: Handle[NCollectionBaseAllocator]) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc destroyNCollectionDoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2]) {.
    cdecl, importcpp: "#.~NCollection_DoubleMap()", dynlib: tkernel.}
proc size*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollectionDoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}