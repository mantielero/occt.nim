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
  NCollectionSequence*[TheItemType] {.importcpp: "NCollection_Sequence<\'0>",
                                     header: "NCollection_Sequence.hxx", bycopy.} = object of NCollectionBaseSequence ##
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

  NCollectionSequencevalueType*[TheItemType] = TheItemType
  NCollectionSequenceNode*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Node",
      header: "NCollection_Sequence.hxx", bycopy.} = object of NCollectionSeqNode ## !
                                                                           ## Constructor


proc constructNCollectionSequenceNode*[TheItemType](theItem: TheItemType): NCollectionSequenceNode[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Node(@)",
                  dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionSequenceNode[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc changeValue*[TheItemType](this: var NCollectionSequenceNode[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
type
  NCollectionSequenceIterator*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Iterator",
      header: "NCollection_Sequence.hxx", bycopy.} = object of NCollectionSequenceIterator ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor
                                                                                    ## -
                                                                                    ## for
                                                                                    ## later
                                                                                    ## Init


proc constructNCollectionSequenceIterator*[TheItemType](): NCollectionSequenceIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc constructNCollectionSequenceIterator*[TheItemType](
    theSeq: NCollectionSequence; isStart: bool = standardTrue): NCollectionSequenceIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc more*[TheItemType](this: NCollectionSequenceIterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc next*[TheItemType](this: var NCollectionSequenceIterator[TheItemType]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionSequenceIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc changeValue*[TheItemType](this: NCollectionSequenceIterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc isEqual*[TheItemType](this: NCollectionSequenceIterator[TheItemType];
                          theOther: NCollectionSequenceIterator): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
type
  NCollectionSequenceiterator* = NCollectionStlIterator[BidirectionalIteratorTag,
      NCollectionSequenceIterator, TheItemType, False]
  NCollectionSequenceconstIterator* = NCollectionStlIterator[
      BidirectionalIteratorTag, NCollectionSequenceIterator, TheItemType, True]

proc begin*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceiterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceiterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollectionSequence*[TheItemType](): NCollectionSequence[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_Sequence<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionSequence*[TheItemType](
    theAllocator: Handle[NCollectionBaseAllocator]): NCollectionSequence[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollectionSequence*[TheItemType](theOther: NCollectionSequence): NCollectionSequence[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  dynlib: tkernel.}
proc size*[TheItemType](this: NCollectionSequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}
proc length*[TheItemType](this: NCollectionSequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", dynlib: tkernel.}
proc lower*[TheItemType](this: NCollectionSequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Lower", dynlib: tkernel.}
proc upper*[TheItemType](this: NCollectionSequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Upper", dynlib: tkernel.}
proc isEmpty*[TheItemType](this: NCollectionSequence[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", dynlib: tkernel.}
proc reverse*[TheItemType](this: var NCollectionSequence[TheItemType]) {.cdecl,
    importcpp: "Reverse", dynlib: tkernel.}
proc exchange*[TheItemType](this: var NCollectionSequence[TheItemType]; i: cint;
                           j: cint) {.cdecl, importcpp: "Exchange", dynlib: tkernel.}
proc delNode*[TheItemType](theNode: ptr NCollectionSeqNode;
                          theAl: var Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "NCollection_Sequence::delNode(@)", dynlib: tkernel.}
proc clear*[TheItemType](this: var NCollectionSequence[TheItemType];
                        theAllocator: Handle[NCollectionBaseAllocator] = 0) {.
    cdecl, importcpp: "Clear", dynlib: tkernel.}
proc assign*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theOther: NCollectionSequence): var NCollectionSequence {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc remove*[TheItemType](this: var NCollectionSequence[TheItemType];
                         thePosition: var NCollectionSequenceIterator) {.cdecl,
    importcpp: "Remove", dynlib: tkernel.}
proc remove*[TheItemType](this: var NCollectionSequence[TheItemType]; theIndex: cint) {.
    cdecl, importcpp: "Remove", dynlib: tkernel.}
proc remove*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theFromIndex: cint; theToIndex: cint) {.cdecl,
    importcpp: "Remove", dynlib: tkernel.}
proc append*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theItem: TheItemType) {.cdecl, importcpp: "Append",
    dynlib: tkernel.}
proc append*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theSeq: var NCollectionSequence) {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc prepend*[TheItemType](this: var NCollectionSequence[TheItemType];
                          theItem: TheItemType) {.cdecl, importcpp: "Prepend",
    dynlib: tkernel.}
proc prepend*[TheItemType](this: var NCollectionSequence[TheItemType];
                          theSeq: var NCollectionSequence) {.cdecl,
    importcpp: "Prepend", dynlib: tkernel.}
proc insertBefore*[TheItemType](this: var NCollectionSequence[TheItemType];
                               theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "InsertBefore", dynlib: tkernel.}
proc insertBefore*[TheItemType](this: var NCollectionSequence[TheItemType];
                               theIndex: cint; theSeq: var NCollectionSequence) {.
    cdecl, importcpp: "InsertBefore", dynlib: tkernel.}
proc insertAfter*[TheItemType](this: var NCollectionSequence[TheItemType];
                              thePosition: var NCollectionSequenceIterator;
                              theItem: TheItemType) {.cdecl,
    importcpp: "InsertAfter", dynlib: tkernel.}
proc insertAfter*[TheItemType](this: var NCollectionSequence[TheItemType];
                              theIndex: cint; theSeq: var NCollectionSequence) {.
    cdecl, importcpp: "InsertAfter", dynlib: tkernel.}
proc insertAfter*[TheItemType](this: var NCollectionSequence[TheItemType];
                              theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "InsertAfter", dynlib: tkernel.}
proc split*[TheItemType](this: var NCollectionSequence[TheItemType]; theIndex: cint;
                        theSeq: var NCollectionSequence) {.cdecl,
    importcpp: "Split", dynlib: tkernel.}
proc first*[TheItemType](this: NCollectionSequence[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", dynlib: tkernel.}
proc changeFirst*[TheItemType](this: var NCollectionSequence[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeFirst", dynlib: tkernel.}
proc last*[TheItemType](this: NCollectionSequence[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", dynlib: tkernel.}
proc changeLast*[TheItemType](this: var NCollectionSequence[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeLast", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionSequence[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollectionSequence[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc changeValue*[TheItemType](this: var NCollectionSequence[TheItemType];
                              theIndex: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc `()`*[TheItemType](this: var NCollectionSequence[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc setValue*[TheItemType](this: var NCollectionSequence[TheItemType];
                           theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}