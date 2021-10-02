when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
  NCollection_SeqNode* {.importcpp: "NCollection_SeqNode",
                        header: "NCollection_BaseSequence.hxx", bycopy.} = object ##  define new operator for use with NCollection allocators


proc constructNCollection_SeqNode*(): NCollection_SeqNode {.cdecl, constructor,
    importcpp: "NCollection_SeqNode(@)", dynlib: tkernel.}
proc Next*(this: NCollection_SeqNode): ptr NCollection_SeqNode {.noSideEffect, cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc Previous*(this: NCollection_SeqNode): ptr NCollection_SeqNode {.noSideEffect,
    cdecl, importcpp: "Previous", dynlib: tkernel.}
proc SetNext*(this: var NCollection_SeqNode; theNext: ptr NCollection_SeqNode) {.cdecl,
    importcpp: "SetNext", dynlib: tkernel.}
proc SetPrevious*(this: var NCollection_SeqNode; thePrev: ptr NCollection_SeqNode) {.
    cdecl, importcpp: "SetPrevious", dynlib: tkernel.}
type
  NCollection_DelSeqNode* = proc (a1: ptr NCollection_SeqNode;
                               theAl: var handle[NCollection_BaseAllocator]) {.
      cdecl.}

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
    cdecl, constructor, importcpp: "NCollection_BaseSequence::Iterator(@)",
    dynlib: tkernel.}
proc constructNCollection_BaseSequenceIterator*(theSeq: NCollection_BaseSequence;
    isStart: bool): NCollection_BaseSequenceIterator {.cdecl, constructor,
    importcpp: "NCollection_BaseSequence::Iterator(@)", dynlib: tkernel.}
proc Init*(this: var NCollection_BaseSequenceIterator;
          theSeq: NCollection_BaseSequence; isStart: bool = Standard_True) {.cdecl,
    importcpp: "Init", dynlib: tkernel.}
proc Previous*(this: var NCollection_BaseSequenceIterator) {.cdecl,
    importcpp: "Previous", dynlib: tkernel.}
proc IsEmpty*(this: NCollection_BaseSequence): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc Length*(this: NCollection_BaseSequence): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkernel.}
proc Allocator*(this: NCollection_BaseSequence): handle[NCollection_BaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", dynlib: tkernel.}