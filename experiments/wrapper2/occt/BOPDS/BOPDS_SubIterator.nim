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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BOPDS_PDS, BOPDS_Pair, BOPDS_VectorOfPair,
  ../NCollection/NCollection_BaseAllocator, ../TColStd/TColStd_ListOfInteger,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of BOPDS_DS"
type
  BOPDS_SubIterator* {.importcpp: "BOPDS_SubIterator",
                      header: "BOPDS_SubIterator.hxx", bycopy.} = object ## ! Empty constructor
                                                                    ## ! Performs intersection of bounding boxes


proc constructBOPDS_SubIterator*(): BOPDS_SubIterator {.constructor,
    importcpp: "BOPDS_SubIterator(@)", header: "BOPDS_SubIterator.hxx".}
proc destroyBOPDS_SubIterator*(this: var BOPDS_SubIterator) {.
    importcpp: "#.~BOPDS_SubIterator()", header: "BOPDS_SubIterator.hxx".}
proc constructBOPDS_SubIterator*(theAllocator: handle[NCollection_BaseAllocator]): BOPDS_SubIterator {.
    constructor, importcpp: "BOPDS_SubIterator(@)", header: "BOPDS_SubIterator.hxx".}
proc SetDS*(this: var BOPDS_SubIterator; pDS: BOPDS_PDS) {.importcpp: "SetDS",
    header: "BOPDS_SubIterator.hxx".}
proc DS*(this: BOPDS_SubIterator): BOPDS_DS {.noSideEffect, importcpp: "DS",
    header: "BOPDS_SubIterator.hxx".}
proc SetSubSet1*(this: var BOPDS_SubIterator; theLI: TColStd_ListOfInteger) {.
    importcpp: "SetSubSet1", header: "BOPDS_SubIterator.hxx".}
proc SubSet1*(this: BOPDS_SubIterator): TColStd_ListOfInteger {.noSideEffect,
    importcpp: "SubSet1", header: "BOPDS_SubIterator.hxx".}
proc SetSubSet2*(this: var BOPDS_SubIterator; theLI: TColStd_ListOfInteger) {.
    importcpp: "SetSubSet2", header: "BOPDS_SubIterator.hxx".}
proc SubSet2*(this: BOPDS_SubIterator): TColStd_ListOfInteger {.noSideEffect,
    importcpp: "SubSet2", header: "BOPDS_SubIterator.hxx".}
proc Initialize*(this: var BOPDS_SubIterator) {.importcpp: "Initialize",
    header: "BOPDS_SubIterator.hxx".}
proc More*(this: BOPDS_SubIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "BOPDS_SubIterator.hxx".}
proc Next*(this: var BOPDS_SubIterator) {.importcpp: "Next",
                                      header: "BOPDS_SubIterator.hxx".}
proc Value*(this: BOPDS_SubIterator; theIndex1: var Standard_Integer;
           theIndex2: var Standard_Integer) {.noSideEffect, importcpp: "Value",
    header: "BOPDS_SubIterator.hxx".}
proc Prepare*(this: var BOPDS_SubIterator) {.importcpp: "Prepare",
    header: "BOPDS_SubIterator.hxx".}
proc ExpectedLength*(this: BOPDS_SubIterator): Standard_Integer {.noSideEffect,
    importcpp: "ExpectedLength", header: "BOPDS_SubIterator.hxx".}