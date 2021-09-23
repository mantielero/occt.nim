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

import
  ../Standard/Standard, NCollection_BaseAllocator, NCollection_DefineAlloc

##  **************************************** Class SeqNode ********************

type
  NCollection_SeqNode* {.importcpp: "NCollection_SeqNode",
                        header: "NCollection_BaseSequence.hxx", bycopy.} = object ##  define new operator for use with NCollection allocators


proc constructNCollection_SeqNode*(): NCollection_SeqNode {.constructor,
    importcpp: "NCollection_SeqNode(@)", header: "NCollection_BaseSequence.hxx".}
proc Next*(this: NCollection_SeqNode): ptr NCollection_SeqNode {.noSideEffect,
    importcpp: "Next", header: "NCollection_BaseSequence.hxx".}
proc Previous*(this: NCollection_SeqNode): ptr NCollection_SeqNode {.noSideEffect,
    importcpp: "Previous", header: "NCollection_BaseSequence.hxx".}
proc SetNext*(this: var NCollection_SeqNode; theNext: ptr NCollection_SeqNode) {.
    importcpp: "SetNext", header: "NCollection_BaseSequence.hxx".}
proc SetPrevious*(this: var NCollection_SeqNode; thePrev: ptr NCollection_SeqNode) {.
    importcpp: "SetPrevious", header: "NCollection_BaseSequence.hxx".}
type
  NCollection_DelSeqNode* = proc (a1: ptr NCollection_SeqNode;
                               theAl: var handle[NCollection_BaseAllocator])

## *
##  Purpose:     This  is  a base  class  for  the  Sequence.  It  deals with
##               an indexed bidirectional list of NCollection_SeqNode's.
##

type
  NCollection_BaseSequence* {.importcpp: "NCollection_BaseSequence",
                             header: "NCollection_BaseSequence.hxx", bycopy.} = object ##
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

  NCollection_BaseSequenceIterator* {.importcpp: "NCollection_BaseSequence::Iterator",
                                     header: "NCollection_BaseSequence.hxx",
                                     bycopy.} = object ## ! Empty constructor
    ## !< Pointer to the current node
    ## !< Pointer to the previous node


proc constructNCollection_BaseSequenceIterator*(): NCollection_BaseSequenceIterator {.
    constructor, importcpp: "NCollection_BaseSequence::Iterator(@)",
    header: "NCollection_BaseSequence.hxx".}
proc constructNCollection_BaseSequenceIterator*(theSeq: NCollection_BaseSequence;
    isStart: Standard_Boolean): NCollection_BaseSequenceIterator {.constructor,
    importcpp: "NCollection_BaseSequence::Iterator(@)",
    header: "NCollection_BaseSequence.hxx".}
proc Init*(this: var NCollection_BaseSequenceIterator;
          theSeq: NCollection_BaseSequence;
          isStart: Standard_Boolean = Standard_True) {.importcpp: "Init",
    header: "NCollection_BaseSequence.hxx".}
proc Previous*(this: var NCollection_BaseSequenceIterator) {.importcpp: "Previous",
    header: "NCollection_BaseSequence.hxx".}
proc IsEmpty*(this: NCollection_BaseSequence): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "NCollection_BaseSequence.hxx".}
proc Length*(this: NCollection_BaseSequence): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "NCollection_BaseSequence.hxx".}
proc Allocator*(this: NCollection_BaseSequence): handle[NCollection_BaseAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "NCollection_BaseSequence.hxx".}