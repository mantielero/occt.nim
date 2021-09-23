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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

## ! The class BOPDS_IndexRange is to store
## ! the information about range of two indices

type
  BOPDS_IndexRange* {.importcpp: "BOPDS_IndexRange",
                     header: "BOPDS_IndexRange.hxx", bycopy.} = object ## ! Empty contructor


proc constructBOPDS_IndexRange*(): BOPDS_IndexRange {.constructor,
    importcpp: "BOPDS_IndexRange(@)", header: "BOPDS_IndexRange.hxx".}
proc SetFirst*(this: var BOPDS_IndexRange; theI1: Standard_Integer) {.
    importcpp: "SetFirst", header: "BOPDS_IndexRange.hxx".}
proc SetLast*(this: var BOPDS_IndexRange; theI2: Standard_Integer) {.
    importcpp: "SetLast", header: "BOPDS_IndexRange.hxx".}
proc First*(this: BOPDS_IndexRange): Standard_Integer {.noSideEffect,
    importcpp: "First", header: "BOPDS_IndexRange.hxx".}
proc Last*(this: BOPDS_IndexRange): Standard_Integer {.noSideEffect,
    importcpp: "Last", header: "BOPDS_IndexRange.hxx".}
proc SetIndices*(this: var BOPDS_IndexRange; theI1: Standard_Integer;
                theI2: Standard_Integer) {.importcpp: "SetIndices",
    header: "BOPDS_IndexRange.hxx".}
proc Indices*(this: BOPDS_IndexRange; theI1: var Standard_Integer;
             theI2: var Standard_Integer) {.noSideEffect, importcpp: "Indices",
    header: "BOPDS_IndexRange.hxx".}
proc Contains*(this: BOPDS_IndexRange; theIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "BOPDS_IndexRange.hxx".}
proc Dump*(this: BOPDS_IndexRange) {.noSideEffect, importcpp: "Dump",
                                  header: "BOPDS_IndexRange.hxx".}