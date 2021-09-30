##  Created by: Peter KURNEV
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of BOPDS_PaveBlock"
discard "forward decl of BOPDS_CommonBlock"
discard "forward decl of BOPDS_CommonBlock"
type
  HandleC1C1* = Handle[BOPDS_CommonBlock]

## ! The class BOPDS_CommonBlock is to store the information
## ! about pave blocks that have geometrical coincidence
## ! (in terms of a tolerance) with:<br>
## ! a) other pave block(s);<br>
## ! b) face(s).<br>
## ! First pave block in the common block (real pave block)
## ! is always a pave block with the minimal index of the original edge.

type
  BOPDS_CommonBlock* {.importcpp: "BOPDS_CommonBlock",
                      header: "BOPDS_CommonBlock.hxx", bycopy.} = object of StandardTransient ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## contructor
    ## !< Pave blocks of the common block
    ## !< Faces on which the pave blocks are lying
    ## !< Tolerance of the common block


proc constructBOPDS_CommonBlock*(): BOPDS_CommonBlock {.constructor,
    importcpp: "BOPDS_CommonBlock(@)", header: "BOPDS_CommonBlock.hxx".}
proc constructBOPDS_CommonBlock*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_CommonBlock {.
    constructor, importcpp: "BOPDS_CommonBlock(@)", header: "BOPDS_CommonBlock.hxx".}
proc addPaveBlock*(this: var BOPDS_CommonBlock; aPB: Handle[BOPDS_PaveBlock]) {.
    importcpp: "AddPaveBlock", header: "BOPDS_CommonBlock.hxx".}
proc setPaveBlocks*(this: var BOPDS_CommonBlock; aLPB: BOPDS_ListOfPaveBlock) {.
    importcpp: "SetPaveBlocks", header: "BOPDS_CommonBlock.hxx".}
proc addFace*(this: var BOPDS_CommonBlock; aF: cint) {.importcpp: "AddFace",
    header: "BOPDS_CommonBlock.hxx".}
proc setFaces*(this: var BOPDS_CommonBlock; aLF: TColStdListOfInteger) {.
    importcpp: "SetFaces", header: "BOPDS_CommonBlock.hxx".}
proc appendFaces*(this: var BOPDS_CommonBlock; aLF: var TColStdListOfInteger) {.
    importcpp: "AppendFaces", header: "BOPDS_CommonBlock.hxx".}
proc paveBlocks*(this: BOPDS_CommonBlock): BOPDS_ListOfPaveBlock {.noSideEffect,
    importcpp: "PaveBlocks", header: "BOPDS_CommonBlock.hxx".}
proc faces*(this: BOPDS_CommonBlock): TColStdListOfInteger {.noSideEffect,
    importcpp: "Faces", header: "BOPDS_CommonBlock.hxx".}
proc paveBlock1*(this: BOPDS_CommonBlock): Handle[BOPDS_PaveBlock] {.noSideEffect,
    importcpp: "PaveBlock1", header: "BOPDS_CommonBlock.hxx".}
proc paveBlockOnEdge*(this: var BOPDS_CommonBlock; theIndex: cint): var Handle[
    BOPDS_PaveBlock] {.importcpp: "PaveBlockOnEdge",
                      header: "BOPDS_CommonBlock.hxx".}
proc isPaveBlockOnFace*(this: BOPDS_CommonBlock; theIndex: cint): bool {.noSideEffect,
    importcpp: "IsPaveBlockOnFace", header: "BOPDS_CommonBlock.hxx".}
proc isPaveBlockOnEdge*(this: BOPDS_CommonBlock; theIndex: cint): bool {.noSideEffect,
    importcpp: "IsPaveBlockOnEdge", header: "BOPDS_CommonBlock.hxx".}
proc contains*(this: BOPDS_CommonBlock; thePB: Handle[BOPDS_PaveBlock]): bool {.
    noSideEffect, importcpp: "Contains", header: "BOPDS_CommonBlock.hxx".}
proc contains*(this: BOPDS_CommonBlock; theF: cint): bool {.noSideEffect,
    importcpp: "Contains", header: "BOPDS_CommonBlock.hxx".}
proc setEdge*(this: var BOPDS_CommonBlock; theEdge: cint) {.importcpp: "SetEdge",
    header: "BOPDS_CommonBlock.hxx".}
proc edge*(this: BOPDS_CommonBlock): cint {.noSideEffect, importcpp: "Edge",
                                        header: "BOPDS_CommonBlock.hxx".}
proc dump*(this: BOPDS_CommonBlock) {.noSideEffect, importcpp: "Dump",
                                   header: "BOPDS_CommonBlock.hxx".}
proc setRealPaveBlock*(this: var BOPDS_CommonBlock; thePB: Handle[BOPDS_PaveBlock]) {.
    importcpp: "SetRealPaveBlock", header: "BOPDS_CommonBlock.hxx".}
proc setTolerance*(this: var BOPDS_CommonBlock; theTol: cfloat) {.
    importcpp: "SetTolerance", header: "BOPDS_CommonBlock.hxx".}
proc tolerance*(this: BOPDS_CommonBlock): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "BOPDS_CommonBlock.hxx".}
type
  BOPDS_CommonBlockbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BOPDS_CommonBlock::get_type_name(@)",
                            header: "BOPDS_CommonBlock.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BOPDS_CommonBlock::get_type_descriptor(@)",
    header: "BOPDS_CommonBlock.hxx".}
proc dynamicType*(this: BOPDS_CommonBlock): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BOPDS_CommonBlock.hxx".}

























