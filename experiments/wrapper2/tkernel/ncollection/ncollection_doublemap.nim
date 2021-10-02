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
##  Purpose:     The DoubleMap  is used to  bind  pairs (Key1,Key2)
##               and retrieve them in linear time.
##
##               See Map from NCollection for a discussion about the number
##               of buckets
##

type
  NCollection_DoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollection_BaseMap ## !
                                                                             ## STL-compliant
                                                                             ## typedef for
                                                                             ## key1
                                                                             ## type
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

  NCollection_DoubleMapkey1_type*[TheKey1Type] = TheKey1Type
  NCollection_DoubleMapkey2_type*[TheKey2Type] = TheKey2Type
  NCollection_DoubleMapDoubleMapNode*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>::DoubleMapNode",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollection_TListNode[
      TheKey2Type]            ## ! Constructor with 'Next'


proc constructNCollection_DoubleMapDoubleMapNode*[TheKey1Type; TheKey2Type;
    Hasher1; Hasher2](theKey1: TheKey1Type; theKey2: TheKey2Type;
                     theNext1: ptr NCollection_ListNode;
                     theNext2: ptr NCollection_ListNode): NCollection_DoubleMapDoubleMapNode[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2] {.cdecl, constructor,
    importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>::DoubleMapNode(@)",
    dynlib: tkernel.}
proc Key1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMapDoubleMapNode[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey1Type {.cdecl,
    importcpp: "Key1", dynlib: tkernel.}
proc Key2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMapDoubleMapNode[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey2Type {.cdecl,
    importcpp: "Key2", dynlib: tkernel.}
proc Next2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMapDoubleMapNode[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): ptr NCollection_DoubleMapDoubleMapNode {.
    cdecl, importcpp: "Next2", dynlib: tkernel.}
proc delNode*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    theNode: ptr NCollection_ListNode; theAl: var handle[NCollection_BaseAllocator]) {.
    cdecl, importcpp: "DoubleMapNode::delNode(@)", dynlib: tkernel.}
type
  NCollection_DoubleMapIterator*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>::Iterator",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollection_DoubleMapIterator ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructNCollection_DoubleMapIterator*[TheKey1Type; TheKey2Type; Hasher1;
    Hasher2](): NCollection_DoubleMapIterator[TheKey1Type, TheKey2Type, Hasher1,
    Hasher2] {.cdecl, constructor, importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>::Iterator(@)",
              dynlib: tkernel.}
proc constructNCollection_DoubleMapIterator*[TheKey1Type; TheKey2Type; Hasher1;
    Hasher2](theMap: NCollection_DoubleMap): NCollection_DoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2] {.cdecl, constructor,
    importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>::Iterator(@)",
    dynlib: tkernel.}
proc More*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: NCollection_DoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): bool {.noSideEffect, cdecl,
    importcpp: "More", dynlib: tkernel.}
proc Next*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]) {.cdecl, importcpp: "Next",
    dynlib: tkernel.}
proc Key1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: NCollection_DoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey1Type {.noSideEffect, cdecl,
    importcpp: "Key1", dynlib: tkernel.}
proc Key2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: NCollection_DoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey2Type {.noSideEffect, cdecl,
    importcpp: "Key2", dynlib: tkernel.}
proc Value*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: NCollection_DoubleMapIterator[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]): TheKey2Type {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkernel.}
proc constructNCollection_DoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](): NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2] {.cdecl, constructor,
    importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>(@)", dynlib: tkernel.}
proc constructNCollection_DoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    theNbBuckets: cint; theAllocator: handle[NCollection_BaseAllocator] = 0L'i64): NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2] {.cdecl, constructor,
    importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>(@)", dynlib: tkernel.}
proc constructNCollection_DoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    theOther: NCollection_DoubleMap): NCollection_DoubleMap[TheKey1Type,
    TheKey2Type, Hasher1, Hasher2] {.cdecl, constructor, importcpp: "NCollection_DoubleMap<\'*0,\'*1,\'*2,\'*3>(@)",
                                  dynlib: tkernel.}
proc Exchange*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]; theOther: var NCollection_DoubleMap) {.
    cdecl, importcpp: "Exchange", dynlib: tkernel.}
proc Assign*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]; theOther: NCollection_DoubleMap): var NCollection_DoubleMap {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc ReSize*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]; N: cint) {.cdecl, importcpp: "ReSize",
    dynlib: tkernel.}
proc Bind*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]; theKey1: TheKey1Type;
    theKey2: TheKey2Type) {.cdecl, importcpp: "Bind", dynlib: tkernel.}
proc AreBound*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type; theKey2: TheKey2Type): bool {.noSideEffect, cdecl,
    importcpp: "AreBound", dynlib: tkernel.}
proc IsBound1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type): bool {.noSideEffect, cdecl, importcpp: "IsBound1",
                               dynlib: tkernel.}
proc IsBound2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey2: TheKey2Type): bool {.noSideEffect, cdecl, importcpp: "IsBound2",
                               dynlib: tkernel.}
proc UnBind1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]; theKey1: TheKey1Type): bool {.cdecl,
    importcpp: "UnBind1", dynlib: tkernel.}
proc UnBind2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2]; theKey2: TheKey2Type): bool {.cdecl,
    importcpp: "UnBind2", dynlib: tkernel.}
proc Find1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type): TheKey2Type {.noSideEffect, cdecl, importcpp: "Find1",
                                      dynlib: tkernel.}
proc Find1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type; theKey2: var TheKey2Type): bool {.noSideEffect, cdecl,
    importcpp: "Find1", dynlib: tkernel.}
proc Seek1*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey1: TheKey1Type): ptr TheKey2Type {.noSideEffect, cdecl, importcpp: "Seek1",
    dynlib: tkernel.}
proc Find2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey2: TheKey2Type): TheKey1Type {.noSideEffect, cdecl, importcpp: "Find2",
                                      dynlib: tkernel.}
proc Find2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey2: TheKey2Type; theKey1: var TheKey1Type): bool {.noSideEffect, cdecl,
    importcpp: "Find2", dynlib: tkernel.}
proc Seek2*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theKey2: TheKey2Type): ptr TheKey1Type {.noSideEffect, cdecl, importcpp: "Seek2",
    dynlib: tkernel.}
proc Clear*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    doReleaseMemory: bool = Standard_True) {.cdecl, importcpp: "Clear", dynlib: tkernel.}
proc Clear*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](this: var NCollection_DoubleMap[
    TheKey1Type, TheKey2Type, Hasher1, Hasher2];
    theAllocator: handle[NCollection_BaseAllocator]) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc destroyNCollection_DoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: var NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2]) {.
    cdecl, importcpp: "#.~NCollection_DoubleMap()", dynlib: tkernel.}
proc Size*[TheKey1Type; TheKey2Type; Hasher1; Hasher2](
    this: NCollection_DoubleMap[TheKey1Type, TheKey2Type, Hasher1, Hasher2]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}