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

discard "forward decl of BOPDS_DS"
type
  BOPDS_SubIterator* {.importcpp: "BOPDS_SubIterator",
                      header: "BOPDS_SubIterator.hxx", bycopy.} = object ## ! Empty constructor
                                                                    ## ! Performs intersection of bounding boxes


proc constructBOPDS_SubIterator*(): BOPDS_SubIterator {.constructor,
    importcpp: "BOPDS_SubIterator(@)", header: "BOPDS_SubIterator.hxx".}
proc destroyBOPDS_SubIterator*(this: var BOPDS_SubIterator) {.
    importcpp: "#.~BOPDS_SubIterator()", header: "BOPDS_SubIterator.hxx".}
proc constructBOPDS_SubIterator*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_SubIterator {.
    constructor, importcpp: "BOPDS_SubIterator(@)", header: "BOPDS_SubIterator.hxx".}
proc setDS*(this: var BOPDS_SubIterator; pDS: Bopds_Pds) {.importcpp: "SetDS",
    header: "BOPDS_SubIterator.hxx".}
proc ds*(this: BOPDS_SubIterator): Bopds_Ds {.noSideEffect, importcpp: "DS",
    header: "BOPDS_SubIterator.hxx".}
proc setSubSet1*(this: var BOPDS_SubIterator; theLI: TColStdListOfInteger) {.
    importcpp: "SetSubSet1", header: "BOPDS_SubIterator.hxx".}
proc subSet1*(this: BOPDS_SubIterator): TColStdListOfInteger {.noSideEffect,
    importcpp: "SubSet1", header: "BOPDS_SubIterator.hxx".}
proc setSubSet2*(this: var BOPDS_SubIterator; theLI: TColStdListOfInteger) {.
    importcpp: "SetSubSet2", header: "BOPDS_SubIterator.hxx".}
proc subSet2*(this: BOPDS_SubIterator): TColStdListOfInteger {.noSideEffect,
    importcpp: "SubSet2", header: "BOPDS_SubIterator.hxx".}
proc initialize*(this: var BOPDS_SubIterator) {.importcpp: "Initialize",
    header: "BOPDS_SubIterator.hxx".}
proc more*(this: BOPDS_SubIterator): bool {.noSideEffect, importcpp: "More",
                                        header: "BOPDS_SubIterator.hxx".}
proc next*(this: var BOPDS_SubIterator) {.importcpp: "Next",
                                      header: "BOPDS_SubIterator.hxx".}
proc value*(this: BOPDS_SubIterator; theIndex1: var int; theIndex2: var int) {.
    noSideEffect, importcpp: "Value", header: "BOPDS_SubIterator.hxx".}
proc prepare*(this: var BOPDS_SubIterator) {.importcpp: "Prepare",
    header: "BOPDS_SubIterator.hxx".}
proc expectedLength*(this: BOPDS_SubIterator): int {.noSideEffect,
    importcpp: "ExpectedLength", header: "BOPDS_SubIterator.hxx".}
