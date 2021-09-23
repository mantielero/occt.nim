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
  ../Standard/Standard, ../Standard/Standard_Type, ../Bnd/Bnd_Box,
  BOPDS_ListOfPave, BOPDS_ListOfPaveBlock, BOPDS_Pave,
  ../NCollection/NCollection_BaseAllocator, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Transient, ../TColStd/TColStd_MapOfInteger

discard "forward decl of BOPDS_Pave"
discard "forward decl of Bnd_Box"
discard "forward decl of BOPDS_PaveBlock"
discard "forward decl of BOPDS_PaveBlock"
type
  Handle_BOPDS_PaveBlock* = handle[BOPDS_PaveBlock]

## ! The class BOPDS_PaveBlock is to store
## ! the information about pave block on an edge.
## ! Two adjacent paves on edge make up pave block.

type
  BOPDS_PaveBlock* {.importcpp: "BOPDS_PaveBlock", header: "BOPDS_PaveBlock.hxx",
                    bycopy.} = object of Standard_Transient ## ! Empty contructor


proc constructBOPDS_PaveBlock*(): BOPDS_PaveBlock {.constructor,
    importcpp: "BOPDS_PaveBlock(@)", header: "BOPDS_PaveBlock.hxx".}
proc constructBOPDS_PaveBlock*(theAllocator: handle[NCollection_BaseAllocator]): BOPDS_PaveBlock {.
    constructor, importcpp: "BOPDS_PaveBlock(@)", header: "BOPDS_PaveBlock.hxx".}
proc SetPave1*(this: var BOPDS_PaveBlock; thePave: BOPDS_Pave) {.
    importcpp: "SetPave1", header: "BOPDS_PaveBlock.hxx".}
proc Pave1*(this: BOPDS_PaveBlock): BOPDS_Pave {.noSideEffect, importcpp: "Pave1",
    header: "BOPDS_PaveBlock.hxx".}
proc SetPave2*(this: var BOPDS_PaveBlock; thePave: BOPDS_Pave) {.
    importcpp: "SetPave2", header: "BOPDS_PaveBlock.hxx".}
proc Pave2*(this: BOPDS_PaveBlock): BOPDS_Pave {.noSideEffect, importcpp: "Pave2",
    header: "BOPDS_PaveBlock.hxx".}
proc SetEdge*(this: var BOPDS_PaveBlock; theEdge: Standard_Integer) {.
    importcpp: "SetEdge", header: "BOPDS_PaveBlock.hxx".}
proc Edge*(this: BOPDS_PaveBlock): Standard_Integer {.noSideEffect,
    importcpp: "Edge", header: "BOPDS_PaveBlock.hxx".}
proc HasEdge*(this: BOPDS_PaveBlock): Standard_Boolean {.noSideEffect,
    importcpp: "HasEdge", header: "BOPDS_PaveBlock.hxx".}
proc HasEdge*(this: BOPDS_PaveBlock; theEdge: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasEdge", header: "BOPDS_PaveBlock.hxx".}
proc SetOriginalEdge*(this: var BOPDS_PaveBlock; theEdge: Standard_Integer) {.
    importcpp: "SetOriginalEdge", header: "BOPDS_PaveBlock.hxx".}
proc OriginalEdge*(this: BOPDS_PaveBlock): Standard_Integer {.noSideEffect,
    importcpp: "OriginalEdge", header: "BOPDS_PaveBlock.hxx".}
proc IsSplitEdge*(this: BOPDS_PaveBlock): Standard_Boolean {.noSideEffect,
    importcpp: "IsSplitEdge", header: "BOPDS_PaveBlock.hxx".}
proc Range*(this: BOPDS_PaveBlock; theT1: var Standard_Real; theT2: var Standard_Real) {.
    noSideEffect, importcpp: "Range", header: "BOPDS_PaveBlock.hxx".}
proc HasSameBounds*(this: BOPDS_PaveBlock; theOther: handle[BOPDS_PaveBlock]): Standard_Boolean {.
    noSideEffect, importcpp: "HasSameBounds", header: "BOPDS_PaveBlock.hxx".}
proc Indices*(this: BOPDS_PaveBlock; theIndex1: var Standard_Integer;
             theIndex2: var Standard_Integer) {.noSideEffect, importcpp: "Indices",
    header: "BOPDS_PaveBlock.hxx".}
proc IsToUpdate*(this: BOPDS_PaveBlock): Standard_Boolean {.noSideEffect,
    importcpp: "IsToUpdate", header: "BOPDS_PaveBlock.hxx".}
proc AppendExtPave*(this: var BOPDS_PaveBlock; thePave: BOPDS_Pave) {.
    importcpp: "AppendExtPave", header: "BOPDS_PaveBlock.hxx".}
proc AppendExtPave1*(this: var BOPDS_PaveBlock; thePave: BOPDS_Pave) {.
    importcpp: "AppendExtPave1", header: "BOPDS_PaveBlock.hxx".}
proc RemoveExtPave*(this: var BOPDS_PaveBlock; theVertNum: Standard_Integer) {.
    importcpp: "RemoveExtPave", header: "BOPDS_PaveBlock.hxx".}
proc ExtPaves*(this: BOPDS_PaveBlock): BOPDS_ListOfPave {.noSideEffect,
    importcpp: "ExtPaves", header: "BOPDS_PaveBlock.hxx".}
proc ChangeExtPaves*(this: var BOPDS_PaveBlock): var BOPDS_ListOfPave {.
    importcpp: "ChangeExtPaves", header: "BOPDS_PaveBlock.hxx".}
proc Update*(this: var BOPDS_PaveBlock; theLPB: var BOPDS_ListOfPaveBlock;
            theFlag: Standard_Boolean = Standard_True) {.importcpp: "Update",
    header: "BOPDS_PaveBlock.hxx".}
proc ContainsParameter*(this: BOPDS_PaveBlock; thePrm: Standard_Real;
                       theTol: Standard_Real; theInd: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ContainsParameter", header: "BOPDS_PaveBlock.hxx".}
proc SetShrunkData*(this: var BOPDS_PaveBlock; theTS1: Standard_Real;
                   theTS2: Standard_Real; theBox: Bnd_Box;
                   theIsSplittable: Standard_Boolean) {.
    importcpp: "SetShrunkData", header: "BOPDS_PaveBlock.hxx".}
proc ShrunkData*(this: BOPDS_PaveBlock; theTS1: var Standard_Real;
                theTS2: var Standard_Real; theBox: var Bnd_Box;
                theIsSplittable: var Standard_Boolean) {.noSideEffect,
    importcpp: "ShrunkData", header: "BOPDS_PaveBlock.hxx".}
proc HasShrunkData*(this: BOPDS_PaveBlock): Standard_Boolean {.noSideEffect,
    importcpp: "HasShrunkData", header: "BOPDS_PaveBlock.hxx".}
proc Dump*(this: BOPDS_PaveBlock) {.noSideEffect, importcpp: "Dump",
                                 header: "BOPDS_PaveBlock.hxx".}
proc IsSplittable*(this: BOPDS_PaveBlock): Standard_Boolean {.noSideEffect,
    importcpp: "IsSplittable", header: "BOPDS_PaveBlock.hxx".}
type
  BOPDS_PaveBlockbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BOPDS_PaveBlock::get_type_name(@)",
                              header: "BOPDS_PaveBlock.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BOPDS_PaveBlock::get_type_descriptor(@)",
    header: "BOPDS_PaveBlock.hxx".}
proc DynamicType*(this: BOPDS_PaveBlock): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BOPDS_PaveBlock.hxx".}