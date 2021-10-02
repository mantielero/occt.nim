when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2002-03-28
##  Created by: Alexander GRIGORIEV
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
##  Purpose:     Definition of a sequence of elements indexed by
##               an Integer in range of 1..n
##

type
  NCollection_Sequence*[TheItemType] {.importcpp: "NCollection_Sequence<\'0>",
                                      header: "NCollection_Sequence.hxx", bycopy.} = object of NCollection_BaseSequence ##
                                                                                                                 ## !
                                                                                                                 ## STL-compliant
                                                                                                                 ## typedef
                                                                                                                 ## for
                                                                                                                 ## value
                                                                                                                 ## type
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## Class
                                                                                                                 ## defining
                                                                                                                 ## sequence
                                                                                                                 ## node
                                                                                                                 ## -
                                                                                                                 ## for
                                                                                                                 ## internal
                                                                                                                 ## use
                                                                                                                 ## by
                                                                                                                 ## Sequence
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

  NCollection_Sequencevalue_type*[TheItemType] = TheItemType
  NCollection_SequenceNode*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Node",
      header: "NCollection_Sequence.hxx", bycopy.} = object of NCollection_SeqNode ## !
                                                                            ## Constructor


proc constructNCollection_SequenceNode*[TheItemType](theItem: TheItemType): NCollection_SequenceNode[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Node(@)",
                  dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_SequenceNode[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: var NCollection_SequenceNode[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
type
  NCollection_SequenceIterator*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Iterator",
      header: "NCollection_Sequence.hxx", bycopy.} = object of NCollection_SequenceIterator ##
                                                                                     ## !
                                                                                     ## Empty
                                                                                     ## constructor
                                                                                     ## -
                                                                                     ## for
                                                                                     ## later
                                                                                     ## Init


proc constructNCollection_SequenceIterator*[TheItemType](): NCollection_SequenceIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc constructNCollection_SequenceIterator*[TheItemType](
    theSeq: NCollection_Sequence; isStart: bool = Standard_True): NCollection_SequenceIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc More*[TheItemType](this: NCollection_SequenceIterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc Next*[TheItemType](this: var NCollection_SequenceIterator[TheItemType]) {.
    cdecl, importcpp: "Next", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_SequenceIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: NCollection_SequenceIterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc IsEqual*[TheItemType](this: NCollection_SequenceIterator[TheItemType];
                          theOther: NCollection_SequenceIterator): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
type
  NCollection_Sequenceiterator* = NCollection_StlIterator[
      bidirectional_iterator_tag, NCollection_SequenceIterator, TheItemType, false]
  NCollection_Sequenceconst_iterator* = NCollection_StlIterator[
      bidirectional_iterator_tag, NCollection_SequenceIterator, TheItemType, true]

proc begin*[TheItemType](this: NCollection_Sequence[TheItemType]): NCollection_Sequenceiterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheItemType](this: NCollection_Sequence[TheItemType]): NCollection_Sequenceiterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheItemType](this: NCollection_Sequence[TheItemType]): NCollection_Sequenceconst_iterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheItemType](this: NCollection_Sequence[TheItemType]): NCollection_Sequenceconst_iterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollection_Sequence*[TheItemType](): NCollection_Sequence[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollection_Sequence*[TheItemType](
    theAllocator: handle[NCollection_BaseAllocator]): NCollection_Sequence[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollection_Sequence*[TheItemType](theOther: NCollection_Sequence): NCollection_Sequence[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  dynlib: tkernel.}
proc Size*[TheItemType](this: NCollection_Sequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}
proc Length*[TheItemType](this: NCollection_Sequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", dynlib: tkernel.}
proc Lower*[TheItemType](this: NCollection_Sequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Lower", dynlib: tkernel.}
proc Upper*[TheItemType](this: NCollection_Sequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Upper", dynlib: tkernel.}
proc IsEmpty*[TheItemType](this: NCollection_Sequence[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", dynlib: tkernel.}
proc Reverse*[TheItemType](this: var NCollection_Sequence[TheItemType]) {.cdecl,
    importcpp: "Reverse", dynlib: tkernel.}
proc Exchange*[TheItemType](this: var NCollection_Sequence[TheItemType]; I: cint;
                           J: cint) {.cdecl, importcpp: "Exchange", dynlib: tkernel.}
proc delNode*[TheItemType](theNode: ptr NCollection_SeqNode;
                          theAl: var handle[NCollection_BaseAllocator]) {.cdecl,
    importcpp: "NCollection_Sequence::delNode(@)", dynlib: tkernel.}
proc Clear*[TheItemType](this: var NCollection_Sequence[TheItemType]; theAllocator: handle[
    NCollection_BaseAllocator] = 0L'i64) {.cdecl, importcpp: "Clear", dynlib: tkernel.}
proc Assign*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theOther: NCollection_Sequence): var NCollection_Sequence {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc Remove*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         thePosition: var NCollection_SequenceIterator) {.cdecl,
    importcpp: "Remove", dynlib: tkernel.}
proc Remove*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theIndex: cint) {.cdecl, importcpp: "Remove",
    dynlib: tkernel.}
proc Remove*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theFromIndex: cint; theToIndex: cint) {.cdecl,
    importcpp: "Remove", dynlib: tkernel.}
proc Append*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theItem: TheItemType) {.cdecl, importcpp: "Append",
    dynlib: tkernel.}
proc Append*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theSeq: var NCollection_Sequence) {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc Prepend*[TheItemType](this: var NCollection_Sequence[TheItemType];
                          theItem: TheItemType) {.cdecl, importcpp: "Prepend",
    dynlib: tkernel.}
proc Prepend*[TheItemType](this: var NCollection_Sequence[TheItemType];
                          theSeq: var NCollection_Sequence) {.cdecl,
    importcpp: "Prepend", dynlib: tkernel.}
proc InsertBefore*[TheItemType](this: var NCollection_Sequence[TheItemType];
                               theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "InsertBefore", dynlib: tkernel.}
proc InsertBefore*[TheItemType](this: var NCollection_Sequence[TheItemType];
                               theIndex: cint; theSeq: var NCollection_Sequence) {.
    cdecl, importcpp: "InsertBefore", dynlib: tkernel.}
proc InsertAfter*[TheItemType](this: var NCollection_Sequence[TheItemType];
                              thePosition: var NCollection_SequenceIterator;
                              theItem: TheItemType) {.cdecl,
    importcpp: "InsertAfter", dynlib: tkernel.}
proc InsertAfter*[TheItemType](this: var NCollection_Sequence[TheItemType];
                              theIndex: cint; theSeq: var NCollection_Sequence) {.
    cdecl, importcpp: "InsertAfter", dynlib: tkernel.}
proc InsertAfter*[TheItemType](this: var NCollection_Sequence[TheItemType];
                              theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "InsertAfter", dynlib: tkernel.}
proc Split*[TheItemType](this: var NCollection_Sequence[TheItemType];
                        theIndex: cint; theSeq: var NCollection_Sequence) {.cdecl,
    importcpp: "Split", dynlib: tkernel.}
proc First*[TheItemType](this: NCollection_Sequence[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", dynlib: tkernel.}
proc ChangeFirst*[TheItemType](this: var NCollection_Sequence[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeFirst", dynlib: tkernel.}
proc Last*[TheItemType](this: NCollection_Sequence[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", dynlib: tkernel.}
proc ChangeLast*[TheItemType](this: var NCollection_Sequence[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeLast", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_Sequence[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollection_Sequence[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: var NCollection_Sequence[TheItemType];
                              theIndex: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc `()`*[TheItemType](this: var NCollection_Sequence[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc SetValue*[TheItemType](this: var NCollection_Sequence[TheItemType];
                           theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}