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

import
  ../Standard/Standard, ../Standard/Standard_Type, BOPDS_ListOfPaveBlock,
  ../NCollection/NCollection_BaseAllocator, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient,
  ../TColStd/TColStd_ListOfInteger

discard "forward decl of BOPDS_PaveBlock"
discard "forward decl of BOPDS_CommonBlock"
discard "forward decl of BOPDS_CommonBlock"
type
  Handle_BOPDS_CommonBlock* = handle[BOPDS_CommonBlock]

## ! The class BOPDS_CommonBlock is to store the information
## ! about pave blocks that have geometrical coincidence
## ! (in terms of a tolerance) with:<br>
## ! a) other pave block(s);<br>
## ! b) face(s).<br>
## ! First pave block in the common block (real pave block)
## ! is always a pave block with the minimal index of the original edge.

type
  BOPDS_CommonBlock* {.importcpp: "BOPDS_CommonBlock",
                      header: "BOPDS_CommonBlock.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## contructor
    ## !< Pave blocks of the common block
    ## !< Faces on which the pave blocks are lying
    ## !< Tolerance of the common block


proc constructBOPDS_CommonBlock*(): BOPDS_CommonBlock {.constructor,
    importcpp: "BOPDS_CommonBlock(@)", header: "BOPDS_CommonBlock.hxx".}
proc constructBOPDS_CommonBlock*(theAllocator: handle[NCollection_BaseAllocator]): BOPDS_CommonBlock {.
    constructor, importcpp: "BOPDS_CommonBlock(@)", header: "BOPDS_CommonBlock.hxx".}
proc AddPaveBlock*(this: var BOPDS_CommonBlock; aPB: handle[BOPDS_PaveBlock]) {.
    importcpp: "AddPaveBlock", header: "BOPDS_CommonBlock.hxx".}
proc SetPaveBlocks*(this: var BOPDS_CommonBlock; aLPB: BOPDS_ListOfPaveBlock) {.
    importcpp: "SetPaveBlocks", header: "BOPDS_CommonBlock.hxx".}
proc AddFace*(this: var BOPDS_CommonBlock; aF: Standard_Integer) {.
    importcpp: "AddFace", header: "BOPDS_CommonBlock.hxx".}
proc SetFaces*(this: var BOPDS_CommonBlock; aLF: TColStd_ListOfInteger) {.
    importcpp: "SetFaces", header: "BOPDS_CommonBlock.hxx".}
proc AppendFaces*(this: var BOPDS_CommonBlock; aLF: var TColStd_ListOfInteger) {.
    importcpp: "AppendFaces", header: "BOPDS_CommonBlock.hxx".}
proc PaveBlocks*(this: BOPDS_CommonBlock): BOPDS_ListOfPaveBlock {.noSideEffect,
    importcpp: "PaveBlocks", header: "BOPDS_CommonBlock.hxx".}
proc Faces*(this: BOPDS_CommonBlock): TColStd_ListOfInteger {.noSideEffect,
    importcpp: "Faces", header: "BOPDS_CommonBlock.hxx".}
proc PaveBlock1*(this: BOPDS_CommonBlock): handle[BOPDS_PaveBlock] {.noSideEffect,
    importcpp: "PaveBlock1", header: "BOPDS_CommonBlock.hxx".}
proc PaveBlockOnEdge*(this: var BOPDS_CommonBlock; theIndex: Standard_Integer): var handle[
    BOPDS_PaveBlock] {.importcpp: "PaveBlockOnEdge",
                      header: "BOPDS_CommonBlock.hxx".}
proc IsPaveBlockOnFace*(this: BOPDS_CommonBlock; theIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsPaveBlockOnFace", header: "BOPDS_CommonBlock.hxx".}
proc IsPaveBlockOnEdge*(this: BOPDS_CommonBlock; theIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsPaveBlockOnEdge", header: "BOPDS_CommonBlock.hxx".}
proc Contains*(this: BOPDS_CommonBlock; thePB: handle[BOPDS_PaveBlock]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "BOPDS_CommonBlock.hxx".}
proc Contains*(this: BOPDS_CommonBlock; theF: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "BOPDS_CommonBlock.hxx".}
proc SetEdge*(this: var BOPDS_CommonBlock; theEdge: Standard_Integer) {.
    importcpp: "SetEdge", header: "BOPDS_CommonBlock.hxx".}
proc Edge*(this: BOPDS_CommonBlock): Standard_Integer {.noSideEffect,
    importcpp: "Edge", header: "BOPDS_CommonBlock.hxx".}
proc Dump*(this: BOPDS_CommonBlock) {.noSideEffect, importcpp: "Dump",
                                   header: "BOPDS_CommonBlock.hxx".}
proc SetRealPaveBlock*(this: var BOPDS_CommonBlock; thePB: handle[BOPDS_PaveBlock]) {.
    importcpp: "SetRealPaveBlock", header: "BOPDS_CommonBlock.hxx".}
proc SetTolerance*(this: var BOPDS_CommonBlock; theTol: Standard_Real) {.
    importcpp: "SetTolerance", header: "BOPDS_CommonBlock.hxx".}
proc Tolerance*(this: BOPDS_CommonBlock): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BOPDS_CommonBlock.hxx".}
type
  BOPDS_CommonBlockbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BOPDS_CommonBlock::get_type_name(@)",
                              header: "BOPDS_CommonBlock.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BOPDS_CommonBlock::get_type_descriptor(@)",
    header: "BOPDS_CommonBlock.hxx".}
proc DynamicType*(this: BOPDS_CommonBlock): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BOPDS_CommonBlock.hxx".}