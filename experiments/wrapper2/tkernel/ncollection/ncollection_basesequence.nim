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


proc constructNCollectionSeqNode*(): NCollectionSeqNode {.cdecl, constructor,
    importcpp: "NCollection_SeqNode(@)", dynlib: tkernel.}
proc next*(this: NCollectionSeqNode): ptr NCollectionSeqNode {.noSideEffect, cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc previous*(this: NCollectionSeqNode): ptr NCollectionSeqNode {.noSideEffect,
    cdecl, importcpp: "Previous", dynlib: tkernel.}
proc setNext*(this: var NCollectionSeqNode; theNext: ptr NCollectionSeqNode) {.cdecl,
    importcpp: "SetNext", dynlib: tkernel.}
proc setPrevious*(this: var NCollectionSeqNode; thePrev: ptr NCollectionSeqNode) {.
    cdecl, importcpp: "SetPrevious", dynlib: tkernel.}
type
  NCollectionDelSeqNode* = proc (a1: ptr NCollectionSeqNode;
                              theAl: var Handle[NCollectionBaseAllocator]) {.cdecl.}

## *
##  Purpose:     This  is  a base  class  for  the  Sequence.  It  deals with
##               an indexed bidirectional list of NCollection_SeqNode's.
##

type
  NCollectionBaseSequence* {.importcpp: "NCollection_BaseSequence",
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

  NCollectionBaseSequenceIterator* {.importcpp: "NCollection_BaseSequence::Iterator",
                                    header: "NCollection_BaseSequence.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor
    ## !< Pointer to the current node
    ## !< Pointer to the previous node


proc constructNCollectionBaseSequenceIterator*(): NCollectionBaseSequenceIterator {.
    cdecl, constructor, importcpp: "NCollection_BaseSequence::Iterator(@)",
    dynlib: tkernel.}
proc constructNCollectionBaseSequenceIterator*(theSeq: NCollectionBaseSequence;
    isStart: bool): NCollectionBaseSequenceIterator {.cdecl, constructor,
    importcpp: "NCollection_BaseSequence::Iterator(@)", dynlib: tkernel.}
proc init*(this: var NCollectionBaseSequenceIterator;
          theSeq: NCollectionBaseSequence; isStart: bool = true) {.cdecl,
    importcpp: "Init", dynlib: tkernel.}
proc previous*(this: var NCollectionBaseSequenceIterator) {.cdecl,
    importcpp: "Previous", dynlib: tkernel.}
proc isEmpty*(this: NCollectionBaseSequence): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc length*(this: NCollectionBaseSequence): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkernel.}
proc allocator*(this: NCollectionBaseSequence): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", dynlib: tkernel.}