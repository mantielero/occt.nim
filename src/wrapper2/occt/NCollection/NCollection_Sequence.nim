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
                                                                                                               ##
                                                                                                               ## ----------
                                                                                                               ## FRIEND
                                                                                                               ## CLASSES
                                                                                                               ## ------------

  NCollectionSequencevalueType*[TheItemType] = TheItemType
  NCollectionSequenceNode*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Node",
      header: "NCollection_Sequence.hxx", bycopy.} = object of NCollectionSeqNode ## !
                                                                           ## Constructor


proc constructNCollectionSequenceNode*[TheItemType](theItem: TheItemType): NCollectionSequenceNode[
    TheItemType] {.constructor, importcpp: "NCollection_Sequence<\'*0>::Node(@)",
                  header: "NCollection_Sequence.hxx".}
proc value*[TheItemType](this: NCollectionSequenceNode[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Sequence.hxx".}
proc changeValue*[TheItemType](this: var NCollectionSequenceNode[TheItemType]): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_Sequence.hxx".}
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
    TheItemType] {.constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
                  header: "NCollection_Sequence.hxx".}
proc constructNCollectionSequenceIterator*[TheItemType](
    theSeq: NCollectionSequence; isStart: StandardBoolean = standardTrue): NCollectionSequenceIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
                  header: "NCollection_Sequence.hxx".}
proc more*[TheItemType](this: NCollectionSequenceIterator[TheItemType]): StandardBoolean {.
    noSideEffect, importcpp: "More", header: "NCollection_Sequence.hxx".}
proc next*[TheItemType](this: var NCollectionSequenceIterator[TheItemType]) {.
    importcpp: "Next", header: "NCollection_Sequence.hxx".}
proc value*[TheItemType](this: NCollectionSequenceIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Sequence.hxx".}
proc changeValue*[TheItemType](this: NCollectionSequenceIterator[TheItemType]): var TheItemType {.
    noSideEffect, importcpp: "ChangeValue", header: "NCollection_Sequence.hxx".}
proc isEqual*[TheItemType](this: NCollectionSequenceIterator[TheItemType];
                          theOther: NCollectionSequenceIterator): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "NCollection_Sequence.hxx".}
type
  NCollectionSequenceiterator* = NCollectionStlIterator[BidirectionalIteratorTag,
      NCollectionSequenceIterator, TheItemType, False]
  NCollectionSequenceconstIterator* = NCollectionStlIterator[
      BidirectionalIteratorTag, NCollectionSequenceIterator, TheItemType, True]

proc begin*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceiterator {.
    noSideEffect, importcpp: "begin", header: "NCollection_Sequence.hxx".}
proc `end`*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceiterator {.
    noSideEffect, importcpp: "end", header: "NCollection_Sequence.hxx".}
proc cbegin*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceconstIterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_Sequence.hxx".}
proc cend*[TheItemType](this: NCollectionSequence[TheItemType]): NCollectionSequenceconstIterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_Sequence.hxx".}
proc constructNCollectionSequence*[TheItemType](): NCollectionSequence[TheItemType] {.
    constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
    header: "NCollection_Sequence.hxx".}
proc constructNCollectionSequence*[TheItemType](
    theAllocator: Handle[NCollectionBaseAllocator]): NCollectionSequence[
    TheItemType] {.constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  header: "NCollection_Sequence.hxx".}
proc constructNCollectionSequence*[TheItemType](theOther: NCollectionSequence): NCollectionSequence[
    TheItemType] {.constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  header: "NCollection_Sequence.hxx".}
proc size*[TheItemType](this: NCollectionSequence[TheItemType]): StandardInteger {.
    noSideEffect, importcpp: "Size", header: "NCollection_Sequence.hxx".}
proc length*[TheItemType](this: NCollectionSequence[TheItemType]): StandardInteger {.
    noSideEffect, importcpp: "Length", header: "NCollection_Sequence.hxx".}
proc lower*[TheItemType](this: NCollectionSequence[TheItemType]): StandardInteger {.
    noSideEffect, importcpp: "Lower", header: "NCollection_Sequence.hxx".}
proc upper*[TheItemType](this: NCollectionSequence[TheItemType]): StandardInteger {.
    noSideEffect, importcpp: "Upper", header: "NCollection_Sequence.hxx".}
proc isEmpty*[TheItemType](this: NCollectionSequence[TheItemType]): StandardBoolean {.
    noSideEffect, importcpp: "IsEmpty", header: "NCollection_Sequence.hxx".}
proc reverse*[TheItemType](this: var NCollectionSequence[TheItemType]) {.
    importcpp: "Reverse", header: "NCollection_Sequence.hxx".}
proc exchange*[TheItemType](this: var NCollectionSequence[TheItemType];
                           i: StandardInteger; j: StandardInteger) {.
    importcpp: "Exchange", header: "NCollection_Sequence.hxx".}
proc delNode*[TheItemType](theNode: ptr NCollectionSeqNode;
                          theAl: var Handle[NCollectionBaseAllocator]) {.
    importcpp: "NCollection_Sequence::delNode(@)",
    header: "NCollection_Sequence.hxx".}
proc clear*[TheItemType](this: var NCollectionSequence[TheItemType];
                        theAllocator: Handle[NCollectionBaseAllocator] = 0'i64) {.
    importcpp: "Clear", header: "NCollection_Sequence.hxx".}
proc assign*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theOther: NCollectionSequence): var NCollectionSequence {.
    importcpp: "Assign", header: "NCollection_Sequence.hxx".}
proc remove*[TheItemType](this: var NCollectionSequence[TheItemType];
                         thePosition: var NCollectionSequenceIterator) {.
    importcpp: "Remove", header: "NCollection_Sequence.hxx".}
proc remove*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theIndex: StandardInteger) {.importcpp: "Remove",
    header: "NCollection_Sequence.hxx".}
proc remove*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theFromIndex: StandardInteger;
                         theToIndex: StandardInteger) {.importcpp: "Remove",
    header: "NCollection_Sequence.hxx".}
proc append*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theItem: TheItemType) {.importcpp: "Append",
    header: "NCollection_Sequence.hxx".}
proc append*[TheItemType](this: var NCollectionSequence[TheItemType];
                         theSeq: var NCollectionSequence) {.importcpp: "Append",
    header: "NCollection_Sequence.hxx".}
proc prepend*[TheItemType](this: var NCollectionSequence[TheItemType];
                          theItem: TheItemType) {.importcpp: "Prepend",
    header: "NCollection_Sequence.hxx".}
proc prepend*[TheItemType](this: var NCollectionSequence[TheItemType];
                          theSeq: var NCollectionSequence) {.importcpp: "Prepend",
    header: "NCollection_Sequence.hxx".}
proc insertBefore*[TheItemType](this: var NCollectionSequence[TheItemType];
                               theIndex: StandardInteger; theItem: TheItemType) {.
    importcpp: "InsertBefore", header: "NCollection_Sequence.hxx".}
proc insertBefore*[TheItemType](this: var NCollectionSequence[TheItemType];
                               theIndex: StandardInteger;
                               theSeq: var NCollectionSequence) {.
    importcpp: "InsertBefore", header: "NCollection_Sequence.hxx".}
proc insertAfter*[TheItemType](this: var NCollectionSequence[TheItemType];
                              thePosition: var NCollectionSequenceIterator;
                              theItem: TheItemType) {.importcpp: "InsertAfter",
    header: "NCollection_Sequence.hxx".}
proc insertAfter*[TheItemType](this: var NCollectionSequence[TheItemType];
                              theIndex: StandardInteger;
                              theSeq: var NCollectionSequence) {.
    importcpp: "InsertAfter", header: "NCollection_Sequence.hxx".}
proc insertAfter*[TheItemType](this: var NCollectionSequence[TheItemType];
                              theIndex: StandardInteger; theItem: TheItemType) {.
    importcpp: "InsertAfter", header: "NCollection_Sequence.hxx".}
proc split*[TheItemType](this: var NCollectionSequence[TheItemType];
                        theIndex: StandardInteger; theSeq: var NCollectionSequence) {.
    importcpp: "Split", header: "NCollection_Sequence.hxx".}
proc first*[TheItemType](this: NCollectionSequence[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "First", header: "NCollection_Sequence.hxx".}
proc changeFirst*[TheItemType](this: var NCollectionSequence[TheItemType]): var TheItemType {.
    importcpp: "ChangeFirst", header: "NCollection_Sequence.hxx".}
proc last*[TheItemType](this: NCollectionSequence[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Last", header: "NCollection_Sequence.hxx".}
proc changeLast*[TheItemType](this: var NCollectionSequence[TheItemType]): var TheItemType {.
    importcpp: "ChangeLast", header: "NCollection_Sequence.hxx".}
proc value*[TheItemType](this: NCollectionSequence[TheItemType];
                        theIndex: StandardInteger): TheItemType {.noSideEffect,
    importcpp: "Value", header: "NCollection_Sequence.hxx".}
proc `()`*[TheItemType](this: NCollectionSequence[TheItemType];
                       theIndex: StandardInteger): TheItemType {.noSideEffect,
    importcpp: "#(@)", header: "NCollection_Sequence.hxx".}
proc changeValue*[TheItemType](this: var NCollectionSequence[TheItemType];
                              theIndex: StandardInteger): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_Sequence.hxx".}
proc `()`*[TheItemType](this: var NCollectionSequence[TheItemType];
                       theIndex: StandardInteger): var TheItemType {.
    importcpp: "#(@)", header: "NCollection_Sequence.hxx".}
proc setValue*[TheItemType](this: var NCollectionSequence[TheItemType];
                           theIndex: StandardInteger; theItem: TheItemType) {.
    importcpp: "SetValue", header: "NCollection_Sequence.hxx".}
proc destroyNCollectionSequence*[TheItemType](
    this: var NCollectionSequence[TheItemType]) {.
    importcpp: "#.~NCollection_Sequence()", header: "NCollection_Sequence.hxx".}

