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

import
  NCollection_BaseSequence, NCollection_StlIterator,
  ../Standard/Standard_OutOfRange, ../Standard/Standard_NoSuchObject

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
                                                                                                                 ##
                                                                                                                 ## ----------
                                                                                                                 ## FRIEND
                                                                                                                 ## CLASSES
                                                                                                                 ## ------------

  NCollection_Sequencevalue_type*[TheItemType] = TheItemType
  NCollection_SequenceNode*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Node",
      header: "NCollection_Sequence.hxx", bycopy.} = object of NCollection_SeqNode ## !
                                                                            ## Constructor


proc constructNCollection_SequenceNode*[TheItemType](theItem: TheItemType): NCollection_SequenceNode[
    TheItemType] {.constructor, importcpp: "NCollection_Sequence<\'*0>::Node(@)",
                  header: "NCollection_Sequence.hxx".}
proc Value*[TheItemType](this: NCollection_SequenceNode[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Sequence.hxx".}
proc ChangeValue*[TheItemType](this: var NCollection_SequenceNode[TheItemType]): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_Sequence.hxx".}
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
    TheItemType] {.constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
                  header: "NCollection_Sequence.hxx".}
proc constructNCollection_SequenceIterator*[TheItemType](
    theSeq: NCollection_Sequence; isStart: Standard_Boolean = Standard_True): NCollection_SequenceIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_Sequence<\'*0>::Iterator(@)",
                  header: "NCollection_Sequence.hxx".}
proc More*[TheItemType](this: NCollection_SequenceIterator[TheItemType]): Standard_Boolean {.
    noSideEffect, importcpp: "More", header: "NCollection_Sequence.hxx".}
proc Next*[TheItemType](this: var NCollection_SequenceIterator[TheItemType]) {.
    importcpp: "Next", header: "NCollection_Sequence.hxx".}
proc Value*[TheItemType](this: NCollection_SequenceIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Sequence.hxx".}
proc ChangeValue*[TheItemType](this: NCollection_SequenceIterator[TheItemType]): var TheItemType {.
    noSideEffect, importcpp: "ChangeValue", header: "NCollection_Sequence.hxx".}
proc IsEqual*[TheItemType](this: NCollection_SequenceIterator[TheItemType];
                          theOther: NCollection_SequenceIterator): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "NCollection_Sequence.hxx".}
type
  NCollection_Sequenceiterator* = NCollection_StlIterator[
      bidirectional_iterator_tag, NCollection_SequenceIterator, TheItemType, false]
  NCollection_Sequenceconst_iterator* = NCollection_StlIterator[
      bidirectional_iterator_tag, NCollection_SequenceIterator, TheItemType, true]

proc begin*[TheItemType](this: NCollection_Sequence[TheItemType]): NCollection_Sequenceiterator {.
    noSideEffect, importcpp: "begin", header: "NCollection_Sequence.hxx".}
proc `end`*[TheItemType](this: NCollection_Sequence[TheItemType]): NCollection_Sequenceiterator {.
    noSideEffect, importcpp: "end", header: "NCollection_Sequence.hxx".}
proc cbegin*[TheItemType](this: NCollection_Sequence[TheItemType]): NCollection_Sequenceconst_iterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_Sequence.hxx".}
proc cend*[TheItemType](this: NCollection_Sequence[TheItemType]): NCollection_Sequenceconst_iterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_Sequence.hxx".}
proc constructNCollection_Sequence*[TheItemType](): NCollection_Sequence[
    TheItemType] {.constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  header: "NCollection_Sequence.hxx".}
proc constructNCollection_Sequence*[TheItemType](
    theAllocator: handle[NCollection_BaseAllocator]): NCollection_Sequence[
    TheItemType] {.constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  header: "NCollection_Sequence.hxx".}
proc constructNCollection_Sequence*[TheItemType](theOther: NCollection_Sequence): NCollection_Sequence[
    TheItemType] {.constructor, importcpp: "NCollection_Sequence<\'*0>(@)",
                  header: "NCollection_Sequence.hxx".}
proc Size*[TheItemType](this: NCollection_Sequence[TheItemType]): Standard_Integer {.
    noSideEffect, importcpp: "Size", header: "NCollection_Sequence.hxx".}
proc Length*[TheItemType](this: NCollection_Sequence[TheItemType]): Standard_Integer {.
    noSideEffect, importcpp: "Length", header: "NCollection_Sequence.hxx".}
proc Lower*[TheItemType](this: NCollection_Sequence[TheItemType]): Standard_Integer {.
    noSideEffect, importcpp: "Lower", header: "NCollection_Sequence.hxx".}
proc Upper*[TheItemType](this: NCollection_Sequence[TheItemType]): Standard_Integer {.
    noSideEffect, importcpp: "Upper", header: "NCollection_Sequence.hxx".}
proc IsEmpty*[TheItemType](this: NCollection_Sequence[TheItemType]): Standard_Boolean {.
    noSideEffect, importcpp: "IsEmpty", header: "NCollection_Sequence.hxx".}
proc Reverse*[TheItemType](this: var NCollection_Sequence[TheItemType]) {.
    importcpp: "Reverse", header: "NCollection_Sequence.hxx".}
proc Exchange*[TheItemType](this: var NCollection_Sequence[TheItemType];
                           I: Standard_Integer; J: Standard_Integer) {.
    importcpp: "Exchange", header: "NCollection_Sequence.hxx".}
proc delNode*[TheItemType](theNode: ptr NCollection_SeqNode;
                          theAl: var handle[NCollection_BaseAllocator]) {.
    importcpp: "NCollection_Sequence::delNode(@)",
    header: "NCollection_Sequence.hxx".}
proc Clear*[TheItemType](this: var NCollection_Sequence[TheItemType]; theAllocator: handle[
    NCollection_BaseAllocator] = 0L'i64) {.importcpp: "Clear",
                                        header: "NCollection_Sequence.hxx".}
proc Assign*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theOther: NCollection_Sequence): var NCollection_Sequence {.
    importcpp: "Assign", header: "NCollection_Sequence.hxx".}
proc Remove*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         thePosition: var NCollection_SequenceIterator) {.
    importcpp: "Remove", header: "NCollection_Sequence.hxx".}
proc Remove*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theIndex: Standard_Integer) {.importcpp: "Remove",
    header: "NCollection_Sequence.hxx".}
proc Remove*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theFromIndex: Standard_Integer;
                         theToIndex: Standard_Integer) {.importcpp: "Remove",
    header: "NCollection_Sequence.hxx".}
proc Append*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theItem: TheItemType) {.importcpp: "Append",
    header: "NCollection_Sequence.hxx".}
proc Append*[TheItemType](this: var NCollection_Sequence[TheItemType];
                         theSeq: var NCollection_Sequence) {.importcpp: "Append",
    header: "NCollection_Sequence.hxx".}
proc Prepend*[TheItemType](this: var NCollection_Sequence[TheItemType];
                          theItem: TheItemType) {.importcpp: "Prepend",
    header: "NCollection_Sequence.hxx".}
proc Prepend*[TheItemType](this: var NCollection_Sequence[TheItemType];
                          theSeq: var NCollection_Sequence) {.importcpp: "Prepend",
    header: "NCollection_Sequence.hxx".}
proc InsertBefore*[TheItemType](this: var NCollection_Sequence[TheItemType];
                               theIndex: Standard_Integer; theItem: TheItemType) {.
    importcpp: "InsertBefore", header: "NCollection_Sequence.hxx".}
proc InsertBefore*[TheItemType](this: var NCollection_Sequence[TheItemType];
                               theIndex: Standard_Integer;
                               theSeq: var NCollection_Sequence) {.
    importcpp: "InsertBefore", header: "NCollection_Sequence.hxx".}
proc InsertAfter*[TheItemType](this: var NCollection_Sequence[TheItemType];
                              thePosition: var NCollection_SequenceIterator;
                              theItem: TheItemType) {.importcpp: "InsertAfter",
    header: "NCollection_Sequence.hxx".}
proc InsertAfter*[TheItemType](this: var NCollection_Sequence[TheItemType];
                              theIndex: Standard_Integer;
                              theSeq: var NCollection_Sequence) {.
    importcpp: "InsertAfter", header: "NCollection_Sequence.hxx".}
proc InsertAfter*[TheItemType](this: var NCollection_Sequence[TheItemType];
                              theIndex: Standard_Integer; theItem: TheItemType) {.
    importcpp: "InsertAfter", header: "NCollection_Sequence.hxx".}
proc Split*[TheItemType](this: var NCollection_Sequence[TheItemType];
                        theIndex: Standard_Integer;
                        theSeq: var NCollection_Sequence) {.importcpp: "Split",
    header: "NCollection_Sequence.hxx".}
proc First*[TheItemType](this: NCollection_Sequence[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "First", header: "NCollection_Sequence.hxx".}
proc ChangeFirst*[TheItemType](this: var NCollection_Sequence[TheItemType]): var TheItemType {.
    importcpp: "ChangeFirst", header: "NCollection_Sequence.hxx".}
proc Last*[TheItemType](this: NCollection_Sequence[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Last", header: "NCollection_Sequence.hxx".}
proc ChangeLast*[TheItemType](this: var NCollection_Sequence[TheItemType]): var TheItemType {.
    importcpp: "ChangeLast", header: "NCollection_Sequence.hxx".}
proc Value*[TheItemType](this: NCollection_Sequence[TheItemType];
                        theIndex: Standard_Integer): TheItemType {.noSideEffect,
    importcpp: "Value", header: "NCollection_Sequence.hxx".}
proc `()`*[TheItemType](this: NCollection_Sequence[TheItemType];
                       theIndex: Standard_Integer): TheItemType {.noSideEffect,
    importcpp: "#(@)", header: "NCollection_Sequence.hxx".}
proc ChangeValue*[TheItemType](this: var NCollection_Sequence[TheItemType];
                              theIndex: Standard_Integer): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_Sequence.hxx".}
proc `()`*[TheItemType](this: var NCollection_Sequence[TheItemType];
                       theIndex: Standard_Integer): var TheItemType {.
    importcpp: "#(@)", header: "NCollection_Sequence.hxx".}
proc SetValue*[TheItemType](this: var NCollection_Sequence[TheItemType];
                           theIndex: Standard_Integer; theItem: TheItemType) {.
    importcpp: "SetValue", header: "NCollection_Sequence.hxx".}
proc destroyNCollection_Sequence*[TheItemType](
    this: var NCollection_Sequence[TheItemType]) {.
    importcpp: "#.~NCollection_Sequence()", header: "NCollection_Sequence.hxx".}