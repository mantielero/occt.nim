import ncollection_types

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



proc newNCollectionSeqNode*(): NCollectionSeqNode {.cdecl, constructor,
    importcpp: "NCollection_SeqNode(@)", header: "NCollection_BaseSequence.hxx".}
proc next*(this: NCollectionSeqNode): ptr NCollectionSeqNode {.noSideEffect, cdecl,
    importcpp: "Next", header: "NCollection_BaseSequence.hxx".}
proc previous*(this: NCollectionSeqNode): ptr NCollectionSeqNode {.noSideEffect,
    cdecl, importcpp: "Previous", header: "NCollection_BaseSequence.hxx".}
proc setNext*(this: var NCollectionSeqNode; theNext: ptr NCollectionSeqNode) {.cdecl,
    importcpp: "SetNext", header: "NCollection_BaseSequence.hxx".}
proc setPrevious*(this: var NCollectionSeqNode; thePrev: ptr NCollectionSeqNode) {.
    cdecl, importcpp: "SetPrevious", header: "NCollection_BaseSequence.hxx".}





proc newNCollectionBaseSequenceIterator*(): NCollectionBaseSequenceIterator {.
    cdecl, constructor, importcpp: "NCollection_BaseSequence::Iterator(@)",
    header: "NCollection_BaseSequence.hxx".}
proc newNCollectionBaseSequenceIterator*(theSeq: NCollectionBaseSequence;
                                        isStart: bool): NCollectionBaseSequenceIterator {.
    cdecl, constructor, importcpp: "NCollection_BaseSequence::Iterator(@)",
    header: "NCollection_BaseSequence.hxx".}
proc init*(this: var NCollectionBaseSequenceIterator;
          theSeq: NCollectionBaseSequence; isStart: bool = true) {.cdecl,
    importcpp: "Init", header: "NCollection_BaseSequence.hxx".}
proc previous*(this: var NCollectionBaseSequenceIterator) {.cdecl,
    importcpp: "Previous", header: "NCollection_BaseSequence.hxx".}
proc isEmpty*(this: NCollectionBaseSequence): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "NCollection_BaseSequence.hxx".}
proc length*(this: NCollectionBaseSequence): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "NCollection_BaseSequence.hxx".}
proc allocator*(this: NCollectionBaseSequence): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", header: "NCollection_BaseSequence.hxx".}
