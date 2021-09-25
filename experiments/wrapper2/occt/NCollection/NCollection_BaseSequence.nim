##  Created on: 2002-04-10
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

##  **************************************** Class SeqNode ********************

type
  NCollectionSeqNode* {.importcpp: "NCollection_SeqNode",
                       header: "NCollection_BaseSequence.hxx", bycopy.} = object ##  define new operator for use with NCollection allocators


proc constructNCollectionSeqNode*(): NCollectionSeqNode {.constructor,
    importcpp: "NCollection_SeqNode(@)", header: "NCollection_BaseSequence.hxx".}
proc next*(this: NCollectionSeqNode): ptr NCollectionSeqNode {.noSideEffect,
    importcpp: "Next", header: "NCollection_BaseSequence.hxx".}
proc previous*(this: NCollectionSeqNode): ptr NCollectionSeqNode {.noSideEffect,
    importcpp: "Previous", header: "NCollection_BaseSequence.hxx".}
proc setNext*(this: var NCollectionSeqNode; theNext: ptr NCollectionSeqNode) {.
    importcpp: "SetNext", header: "NCollection_BaseSequence.hxx".}
proc setPrevious*(this: var NCollectionSeqNode; thePrev: ptr NCollectionSeqNode) {.
    importcpp: "SetPrevious", header: "NCollection_BaseSequence.hxx".}
type
  NCollectionDelSeqNode* = proc (a1: ptr NCollectionSeqNode;
                              theAl: var Handle[NCollectionBaseAllocator])

## *
##  Purpose:     This  is  a base  class  for  the  Sequence.  It  deals with
##               an indexed bidirectional list of NCollection_SeqNode's.
##

type
  NCollectionBaseSequence* {.importcpp: "NCollection_BaseSequence",
                            header: "NCollection_BaseSequence.hxx", bycopy.} = object of RootObj##
                                                                                 ## !
                                                                                 ## Memory
                                                                                 ## allocation
                                                                                 ##
                                                                                 ## Methods
                                                                                 ## PUBLIC
                                                                                 ##
                                                                                 ##
                                                                                 ## Methods
                                                                                 ## PROTECTED
                                                                                 ##
                                                                                 ##
                                                                                 ## Fields
                                                                                 ## PROTECTED
                                                                                 ##
                                                                                 ##
                                                                                 ## Methods
                                                                                 ## PRIVATE
                                                                                 ##

  NCollectionBaseSequenceIterator* {.importcpp: "NCollection_BaseSequence::Iterator",
                                    header: "NCollection_BaseSequence.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor
    ## !< Pointer to the current node
    ## !< Pointer to the previous node


proc constructNCollectionBaseSequenceIterator*(): NCollectionBaseSequenceIterator {.
    constructor, importcpp: "NCollection_BaseSequence::Iterator(@)",
    header: "NCollection_BaseSequence.hxx".}
proc constructNCollectionBaseSequenceIterator*(theSeq: NCollectionBaseSequence;
    isStart: bool): NCollectionBaseSequenceIterator {.constructor,
    importcpp: "NCollection_BaseSequence::Iterator(@)",
    header: "NCollection_BaseSequence.hxx".}
proc init*(this: var NCollectionBaseSequenceIterator;
          theSeq: NCollectionBaseSequence; isStart: bool = true) {.importcpp: "Init",
    header: "NCollection_BaseSequence.hxx".}
proc previous*(this: var NCollectionBaseSequenceIterator) {.importcpp: "Previous",
    header: "NCollection_BaseSequence.hxx".}
proc isEmpty*(this: NCollectionBaseSequence): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "NCollection_BaseSequence.hxx".}
proc length*(this: NCollectionBaseSequence): int {.noSideEffect, importcpp: "Length",
    header: "NCollection_BaseSequence.hxx".}
proc allocator*(this: NCollectionBaseSequence): Handle[NCollectionBaseAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "NCollection_BaseSequence.hxx".}
