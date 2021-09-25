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

## ! The class BOPDS_IndexRange is to store
## ! the information about range of two indices

type
  BOPDS_IndexRange* {.importcpp: "BOPDS_IndexRange",
                     header: "BOPDS_IndexRange.hxx", bycopy.} = object ## ! Empty contructor


proc constructBOPDS_IndexRange*(): BOPDS_IndexRange {.constructor,
    importcpp: "BOPDS_IndexRange(@)", header: "BOPDS_IndexRange.hxx".}
proc setFirst*(this: var BOPDS_IndexRange; theI1: int) {.importcpp: "SetFirst",
    header: "BOPDS_IndexRange.hxx".}
proc setLast*(this: var BOPDS_IndexRange; theI2: int) {.importcpp: "SetLast",
    header: "BOPDS_IndexRange.hxx".}
proc first*(this: BOPDS_IndexRange): int {.noSideEffect, importcpp: "First",
                                       header: "BOPDS_IndexRange.hxx".}
proc last*(this: BOPDS_IndexRange): int {.noSideEffect, importcpp: "Last",
                                      header: "BOPDS_IndexRange.hxx".}
proc setIndices*(this: var BOPDS_IndexRange; theI1: int; theI2: int) {.
    importcpp: "SetIndices", header: "BOPDS_IndexRange.hxx".}
proc indices*(this: BOPDS_IndexRange; theI1: var int; theI2: var int) {.noSideEffect,
    importcpp: "Indices", header: "BOPDS_IndexRange.hxx".}
proc contains*(this: BOPDS_IndexRange; theIndex: int): bool {.noSideEffect,
    importcpp: "Contains", header: "BOPDS_IndexRange.hxx".}
proc dump*(this: BOPDS_IndexRange) {.noSideEffect, importcpp: "Dump",
                                  header: "BOPDS_IndexRange.hxx".}
