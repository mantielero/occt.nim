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

discard "forward decl of BOPDS_Pave"
discard "forward decl of Bnd_Box"
discard "forward decl of BOPDS_PaveBlock"
discard "forward decl of BOPDS_PaveBlock"
type
  HandleC1C1* = Handle[BOPDS_PaveBlock]

## ! The class BOPDS_PaveBlock is to store
## ! the information about pave block on an edge.
## ! Two adjacent paves on edge make up pave block.

type
  BOPDS_PaveBlock* {.importcpp: "BOPDS_PaveBlock", header: "BOPDS_PaveBlock.hxx",
                    bycopy.} = object of StandardTransient ## ! Empty contructor


proc constructBOPDS_PaveBlock*(): BOPDS_PaveBlock {.constructor,
    importcpp: "BOPDS_PaveBlock(@)", header: "BOPDS_PaveBlock.hxx".}
proc constructBOPDS_PaveBlock*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_PaveBlock {.
    constructor, importcpp: "BOPDS_PaveBlock(@)", header: "BOPDS_PaveBlock.hxx".}
proc setPave1*(this: var BOPDS_PaveBlock; thePave: BOPDS_Pave) {.
    importcpp: "SetPave1", header: "BOPDS_PaveBlock.hxx".}
proc pave1*(this: BOPDS_PaveBlock): BOPDS_Pave {.noSideEffect, importcpp: "Pave1",
    header: "BOPDS_PaveBlock.hxx".}
proc setPave2*(this: var BOPDS_PaveBlock; thePave: BOPDS_Pave) {.
    importcpp: "SetPave2", header: "BOPDS_PaveBlock.hxx".}
proc pave2*(this: BOPDS_PaveBlock): BOPDS_Pave {.noSideEffect, importcpp: "Pave2",
    header: "BOPDS_PaveBlock.hxx".}
proc setEdge*(this: var BOPDS_PaveBlock; theEdge: cint) {.importcpp: "SetEdge",
    header: "BOPDS_PaveBlock.hxx".}
proc edge*(this: BOPDS_PaveBlock): cint {.noSideEffect, importcpp: "Edge",
                                      header: "BOPDS_PaveBlock.hxx".}
proc hasEdge*(this: BOPDS_PaveBlock): bool {.noSideEffect, importcpp: "HasEdge",
    header: "BOPDS_PaveBlock.hxx".}
proc hasEdge*(this: BOPDS_PaveBlock; theEdge: var cint): bool {.noSideEffect,
    importcpp: "HasEdge", header: "BOPDS_PaveBlock.hxx".}
proc setOriginalEdge*(this: var BOPDS_PaveBlock; theEdge: cint) {.
    importcpp: "SetOriginalEdge", header: "BOPDS_PaveBlock.hxx".}
proc originalEdge*(this: BOPDS_PaveBlock): cint {.noSideEffect,
    importcpp: "OriginalEdge", header: "BOPDS_PaveBlock.hxx".}
proc isSplitEdge*(this: BOPDS_PaveBlock): bool {.noSideEffect,
    importcpp: "IsSplitEdge", header: "BOPDS_PaveBlock.hxx".}
proc range*(this: BOPDS_PaveBlock; theT1: var cfloat; theT2: var cfloat) {.noSideEffect,
    importcpp: "Range", header: "BOPDS_PaveBlock.hxx".}
proc hasSameBounds*(this: BOPDS_PaveBlock; theOther: Handle[BOPDS_PaveBlock]): bool {.
    noSideEffect, importcpp: "HasSameBounds", header: "BOPDS_PaveBlock.hxx".}
proc indices*(this: BOPDS_PaveBlock; theIndex1: var cint; theIndex2: var cint) {.
    noSideEffect, importcpp: "Indices", header: "BOPDS_PaveBlock.hxx".}
proc isToUpdate*(this: BOPDS_PaveBlock): bool {.noSideEffect,
    importcpp: "IsToUpdate", header: "BOPDS_PaveBlock.hxx".}
proc appendExtPave*(this: var BOPDS_PaveBlock; thePave: BOPDS_Pave) {.
    importcpp: "AppendExtPave", header: "BOPDS_PaveBlock.hxx".}
proc appendExtPave1*(this: var BOPDS_PaveBlock; thePave: BOPDS_Pave) {.
    importcpp: "AppendExtPave1", header: "BOPDS_PaveBlock.hxx".}
proc removeExtPave*(this: var BOPDS_PaveBlock; theVertNum: cint) {.
    importcpp: "RemoveExtPave", header: "BOPDS_PaveBlock.hxx".}
proc extPaves*(this: BOPDS_PaveBlock): BOPDS_ListOfPave {.noSideEffect,
    importcpp: "ExtPaves", header: "BOPDS_PaveBlock.hxx".}
proc changeExtPaves*(this: var BOPDS_PaveBlock): var BOPDS_ListOfPave {.
    importcpp: "ChangeExtPaves", header: "BOPDS_PaveBlock.hxx".}
proc update*(this: var BOPDS_PaveBlock; theLPB: var BOPDS_ListOfPaveBlock;
            theFlag: bool = true) {.importcpp: "Update", header: "BOPDS_PaveBlock.hxx".}
proc containsParameter*(this: BOPDS_PaveBlock; thePrm: cfloat; theTol: cfloat;
                       theInd: var cint): bool {.noSideEffect,
    importcpp: "ContainsParameter", header: "BOPDS_PaveBlock.hxx".}
proc setShrunkData*(this: var BOPDS_PaveBlock; theTS1: cfloat; theTS2: cfloat;
                   theBox: BndBox; theIsSplittable: bool) {.
    importcpp: "SetShrunkData", header: "BOPDS_PaveBlock.hxx".}
proc shrunkData*(this: BOPDS_PaveBlock; theTS1: var cfloat; theTS2: var cfloat;
                theBox: var BndBox; theIsSplittable: var bool) {.noSideEffect,
    importcpp: "ShrunkData", header: "BOPDS_PaveBlock.hxx".}
proc hasShrunkData*(this: BOPDS_PaveBlock): bool {.noSideEffect,
    importcpp: "HasShrunkData", header: "BOPDS_PaveBlock.hxx".}
proc dump*(this: BOPDS_PaveBlock) {.noSideEffect, importcpp: "Dump",
                                 header: "BOPDS_PaveBlock.hxx".}
proc isSplittable*(this: BOPDS_PaveBlock): bool {.noSideEffect,
    importcpp: "IsSplittable", header: "BOPDS_PaveBlock.hxx".}
type
  BOPDS_PaveBlockbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BOPDS_PaveBlock::get_type_name(@)",
                            header: "BOPDS_PaveBlock.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BOPDS_PaveBlock::get_type_descriptor(@)",
    header: "BOPDS_PaveBlock.hxx".}
proc dynamicType*(this: BOPDS_PaveBlock): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BOPDS_PaveBlock.hxx".}

























