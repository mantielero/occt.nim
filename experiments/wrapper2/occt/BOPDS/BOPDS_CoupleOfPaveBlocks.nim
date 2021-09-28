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
proc constructBOPDS_CoupleOfPaveBlocks*(thePB1: Handle[BOPDS_PaveBlock];
                                       thePB2: Handle[BOPDS_PaveBlock]): BOPDS_CoupleOfPaveBlocks {.
    constructor, importcpp: "BOPDS_CoupleOfPaveBlocks(@)",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc destroyBOPDS_CoupleOfPaveBlocks*(this: var BOPDS_CoupleOfPaveBlocks) {.
    importcpp: "#.~BOPDS_CoupleOfPaveBlocks()",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc setIndex*(this: var BOPDS_CoupleOfPaveBlocks; theIndex: cint) {.
    importcpp: "SetIndex", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc index*(this: BOPDS_CoupleOfPaveBlocks): cint {.noSideEffect, importcpp: "Index",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc setIndexInterf*(this: var BOPDS_CoupleOfPaveBlocks; theIndex: cint) {.
    importcpp: "SetIndexInterf", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc indexInterf*(this: BOPDS_CoupleOfPaveBlocks): cint {.noSideEffect,
    importcpp: "IndexInterf", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc setPaveBlocks*(this: var BOPDS_CoupleOfPaveBlocks;
                   thePB1: Handle[BOPDS_PaveBlock];
                   thePB2: Handle[BOPDS_PaveBlock]) {.importcpp: "SetPaveBlocks",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc paveBlocks*(this: BOPDS_CoupleOfPaveBlocks;
                thePB1: var Handle[BOPDS_PaveBlock];
                thePB2: var Handle[BOPDS_PaveBlock]) {.noSideEffect,
    importcpp: "PaveBlocks", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc setPaveBlock1*(this: var BOPDS_CoupleOfPaveBlocks;
                   thePB: Handle[BOPDS_PaveBlock]) {.importcpp: "SetPaveBlock1",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc paveBlock1*(this: BOPDS_CoupleOfPaveBlocks): Handle[BOPDS_PaveBlock] {.
    noSideEffect, importcpp: "PaveBlock1", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc setPaveBlock2*(this: var BOPDS_CoupleOfPaveBlocks;
                   thePB: Handle[BOPDS_PaveBlock]) {.importcpp: "SetPaveBlock2",
    header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc paveBlock2*(this: BOPDS_CoupleOfPaveBlocks): Handle[BOPDS_PaveBlock] {.
    noSideEffect, importcpp: "PaveBlock2", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc setTolerance*(this: var BOPDS_CoupleOfPaveBlocks; theTol: cfloat) {.
    importcpp: "SetTolerance", header: "BOPDS_CoupleOfPaveBlocks.hxx".}
proc tolerance*(this: BOPDS_CoupleOfPaveBlocks): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "BOPDS_CoupleOfPaveBlocks.hxx".}


























