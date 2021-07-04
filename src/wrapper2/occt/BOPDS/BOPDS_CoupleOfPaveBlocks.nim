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
  BOPDS_PaveBlock

## *
##  The Class BOPDS_CoupleOfPaveBlocks is to store
##  the information about two pave blocks
##  and some satellite information
##
##
## =======================================================================
## class : BOPDS_CoupleOfPaveBlocks
## purpose  :
## =======================================================================

type
  BOPDS_CoupleOfPaveBlocks* {.importcpp: "BOPDS_CoupleOfPaveBlocks",
                             header: "BOPDS_CoupleOfPaveBlocks.hxx", bycopy.} = object ## *
                                                                                  ##  Constructor
                                                                                  ##


proc constructBOPDS_CoupleOfPaveBlocks*(): BOPDS_CoupleOfPaveBlocks {.constructor,
    importcpp: "BOPDS_CoupleOfPaveBlocks(@)",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc constructBOPDS_CoupleOfPaveBlocks*(thePB1: handle[BOPDS_PaveBlock];
                                       thePB2: handle[BOPDS_PaveBlock]): BOPDS_CoupleOfPaveBlocks {.
    constructor, importcpp: "BOPDS_CoupleOfPaveBlocks(@)",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc destroyBOPDS_CoupleOfPaveBlocks*(this: var BOPDS_CoupleOfPaveBlocks) {.
    importcpp: "#.~BOPDS_CoupleOfPaveBlocks()",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc SetIndex*(this: var BOPDS_CoupleOfPaveBlocks; theIndex: Standard_Integer) {.
    importcpp: "SetIndex", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc Index*(this: BOPDS_CoupleOfPaveBlocks): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc SetIndexInterf*(this: var BOPDS_CoupleOfPaveBlocks; theIndex: Standard_Integer) {.
    importcpp: "SetIndexInterf", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc IndexInterf*(this: BOPDS_CoupleOfPaveBlocks): Standard_Integer {.noSideEffect,
    importcpp: "IndexInterf", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc SetPaveBlocks*(this: var BOPDS_CoupleOfPaveBlocks;
                   thePB1: handle[BOPDS_PaveBlock];
                   thePB2: handle[BOPDS_PaveBlock]) {.importcpp: "SetPaveBlocks",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc PaveBlocks*(this: BOPDS_CoupleOfPaveBlocks;
                thePB1: var handle[BOPDS_PaveBlock];
                thePB2: var handle[BOPDS_PaveBlock]) {.noSideEffect,
    importcpp: "PaveBlocks", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc SetPaveBlock1*(this: var BOPDS_CoupleOfPaveBlocks;
                   thePB: handle[BOPDS_PaveBlock]) {.importcpp: "SetPaveBlock1",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc PaveBlock1*(this: BOPDS_CoupleOfPaveBlocks): handle[BOPDS_PaveBlock] {.
    noSideEffect, importcpp: "PaveBlock1", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc SetPaveBlock2*(this: var BOPDS_CoupleOfPaveBlocks;
                   thePB: handle[BOPDS_PaveBlock]) {.importcpp: "SetPaveBlock2",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc PaveBlock2*(this: BOPDS_CoupleOfPaveBlocks): handle[BOPDS_PaveBlock] {.
    noSideEffect, importcpp: "PaveBlock2", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc SetTolerance*(this: var BOPDS_CoupleOfPaveBlocks; theTol: Standard_Real) {.
    importcpp: "SetTolerance", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc Tolerance*(this: BOPDS_CoupleOfPaveBlocks): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
