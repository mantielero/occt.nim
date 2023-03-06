{.experimental: "callOperator".}

import ncollection_types
import ../standard/standard_types
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




proc newNCollectionSequenceNode*[TheItemType](theItem: TheItemType): NCollectionSequenceNode[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Node(@)",
                  header: "NCollection_Sequence.hxx".}
proc value*[TheItemType](this: NCollectionSequenceNode[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_Sequence.hxx".}
proc changeValue*[TheItemType](this: var NCollectionSequenceNode[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeValue", header: "NCollection_Sequence.hxx".}


proc newNCollectionSequenceIterator*[TheItemType](): NCollectionSequenceIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
                  header: "NCollection_Sequence.hxx".}
proc newNCollectionSequenceIterator*[TheItemType](theSeq: NCollectionSequence;
    isStart: bool = true): NCollectionSequenceIterator[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
    header: "NCollection_Sequence.hxx".}
proc more*[TheItemType](this: NCollectionSequenceIterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", header: "NCollection_Sequence.hxx".}
proc next*[TheItemType](this: var NCollectionSequenceIterator[TheItemType]) {.cdecl,
    importcpp: "Next", header: "NCollection_Sequence.hxx".}
proc value*[TheItemType](this: NCollectionSequenceIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_Sequence.hxx".}
proc changeValue*[TheItemType](this: NCollectionSequenceIterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", header: "NCollection_Sequence.hxx".}
proc isEqual*[TheItemType](this: NCollectionSequenceIterator[TheItemType];
                          theOther: NCollectionSequenceIterator): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "NCollection_Sequence.hxx".}

proc begin*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceiterator {.
    noSideEffect, cdecl, importcpp: "begin", header: "NCollection_Sequence.hxx".}
proc `end`*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceiterator {.
    noSideEffect, cdecl, importcpp: "end", header: "NCollection_Sequence.hxx".}
proc cbegin*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", header: "NCollection_Sequence.hxx".}
proc cend*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", header: "NCollection_Sequence.hxx".}
proc newNCollectionSequence*[TheItemType](): NCollectionSequence[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_Sequence<\'*0>(@)", header: "NCollection_Sequence.hxx".}
proc newNCollectionSequence*[TheItemType](
    theAllocator: Handle[NCollectionBaseAllocator]): NCollectionSequence[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  header: "NCollection_Sequence.hxx".}
proc newNCollectionSequence*[TheItemType](theOther: NCollectionSequence): NCollectionSequence[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  header: "NCollection_Sequence.hxx".}
proc size*[TheItemType](this: NCollectionSequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Size", header: "NCollection_Sequence.hxx".}
proc length*[TheItemType](this: NCollectionSequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", header: "NCollection_Sequence.hxx".}
proc lower*[TheItemType](this: NCollectionSequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Lower", header: "NCollection_Sequence.hxx".}
proc upper*[TheItemType](this: NCollectionSequence[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Upper", header: "NCollection_Sequence.hxx".}
proc isEmpty*[TheItemType](this: NCollectionSequence[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", header: "NCollection_Sequence.hxx".}
proc reverse*[TheItemType](this: var NCollectionSequence[TheItemType]) {.cdecl,
    importcpp: "Reverse", header: "NCollection_Sequence.hxx".}
proc exchange*[TheItemType](this: var NCollectionSequence[TheItemType]; i: cint;
                           j: cint) {.cdecl, importcpp: "Exchange", header: "NCollection_Sequence.hxx".}
proc delNode*[TheItemType](theNode: ptr NCollectionSeqNode;
                          theAl: var Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "NCollection_Sequence::delNode(@)", header: "NCollection_Sequence.hxx".}
proc clear*[TheItemType](this: var NCollectionSequence[TheItemType];
                        theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)) {.
    cdecl, importcpp: "Clear", header: "NCollection_Sequence.hxx".}
proc assign*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theOther: NCollectionSequence): var NCollectionSequence {.
    cdecl, importcpp: "Assign", header: "NCollection_Sequence.hxx".}
proc remove*[TheItemType](this: var NCollectionSequence[TheItemType];
                         thePosition: var NCollectionSequenceIterator) {.cdecl,
    importcpp: "Remove", header: "NCollection_Sequence.hxx".}
proc remove*[TheItemType](this: var NCollectionSequence[TheItemType]; theIndex: cint) {.
    cdecl, importcpp: "Remove", header: "NCollection_Sequence.hxx".}
proc remove*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theFromIndex: cint; theToIndex: cint) {.cdecl,
    importcpp: "Remove", header: "NCollection_Sequence.hxx".}
proc append*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theItem: TheItemType) {.cdecl, importcpp: "Append",
    header: "NCollection_Sequence.hxx".}
proc append*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theSeq: var NCollectionSequence) {.cdecl,
    importcpp: "Append", header: "NCollection_Sequence.hxx".}
proc prepend*[TheItemType](this: var NCollectionSequence[TheItemType];
                          theItem: TheItemType) {.cdecl, importcpp: "Prepend",
    header: "NCollection_Sequence.hxx".}
proc prepend*[TheItemType](this: var NCollectionSequence[TheItemType];
                          theSeq: var NCollectionSequence) {.cdecl,
    importcpp: "Prepend", header: "NCollection_Sequence.hxx".}
proc insertBefore*[TheItemType](this: var NCollectionSequence[TheItemType];
                               theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "InsertBefore", header: "NCollection_Sequence.hxx".}
proc insertBefore*[TheItemType](this: var NCollectionSequence[TheItemType];
                               theIndex: cint; theSeq: var NCollectionSequence) {.
    cdecl, importcpp: "InsertBefore", header: "NCollection_Sequence.hxx".}
proc insertAfter*[TheItemType](this: var NCollectionSequence[TheItemType];
                              thePosition: var NCollectionSequenceIterator;
                              theItem: TheItemType) {.cdecl,
    importcpp: "InsertAfter", header: "NCollection_Sequence.hxx".}
proc insertAfter*[TheItemType](this: var NCollectionSequence[TheItemType];
                              theIndex: cint; theSeq: var NCollectionSequence) {.
    cdecl, importcpp: "InsertAfter", header: "NCollection_Sequence.hxx".}
proc insertAfter*[TheItemType](this: var NCollectionSequence[TheItemType];
                              theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "InsertAfter", header: "NCollection_Sequence.hxx".}
proc split*[TheItemType](this: var NCollectionSequence[TheItemType]; theIndex: cint;
                        theSeq: var NCollectionSequence) {.cdecl,
    importcpp: "Split", header: "NCollection_Sequence.hxx".}
proc first*[TheItemType](this: NCollectionSequence[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", header: "NCollection_Sequence.hxx".}
proc changeFirst*[TheItemType](this: var NCollectionSequence[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeFirst", header: "NCollection_Sequence.hxx".}
proc last*[TheItemType](this: NCollectionSequence[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", header: "NCollection_Sequence.hxx".}
proc changeLast*[TheItemType](this: var NCollectionSequence[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeLast", header: "NCollection_Sequence.hxx".}
proc value*[TheItemType](this: NCollectionSequence[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_Sequence.hxx".}
proc `()`*[TheItemType](this: NCollectionSequence[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", header: "NCollection_Sequence.hxx".}
proc changeValue*[TheItemType](this: var NCollectionSequence[TheItemType];
                              theIndex: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", header: "NCollection_Sequence.hxx".}
proc `()`*[TheItemType](this: var NCollectionSequence[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#(@)", header: "NCollection_Sequence.hxx".}
proc setValue*[TheItemType](this: var NCollectionSequence[TheItemType];
                           theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "SetValue", header: "NCollection_Sequence.hxx".}
