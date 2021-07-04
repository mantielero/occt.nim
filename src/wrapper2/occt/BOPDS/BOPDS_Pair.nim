##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2017 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle

## ! The class is to provide the pair of indices of interfering shapes.

type
  BOPDS_Pair* {.importcpp: "BOPDS_Pair", header: "BOPDS_Pair.hxx", bycopy.} = object


proc constructBOPDS_Pair*(): BOPDS_Pair {.constructor, importcpp: "BOPDS_Pair(@)",
                                       header: "BOPDS_Pair.hxx".}
proc constructBOPDS_Pair*(theIndex1: Standard_Integer; theIndex2: Standard_Integer): BOPDS_Pair {.
    constructor, importcpp: "BOPDS_Pair(@)", header: "BOPDS_Pair.hxx".}
proc destroyBOPDS_Pair*(this: var BOPDS_Pair) {.importcpp: "#.~BOPDS_Pair()",
    header: "BOPDS_Pair.hxx".}
proc SetIndices*(this: var BOPDS_Pair; theIndex1: Standard_Integer;
                theIndex2: Standard_Integer) {.importcpp: "SetIndices",
    header: "BOPDS_Pair.hxx".}
proc Indices*(this: BOPDS_Pair; theIndex1: var Standard_Integer;
             theIndex2: var Standard_Integer) {.noSideEffect, importcpp: "Indices",
    header: "BOPDS_Pair.hxx".}
proc `<`*(this: BOPDS_Pair; theOther: BOPDS_Pair): Standard_Boolean {.noSideEffect,
    importcpp: "(# < #)", header: "BOPDS_Pair.hxx".}
proc IsEqual*(this: BOPDS_Pair; theOther: BOPDS_Pair): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "BOPDS_Pair.hxx".}
proc HashCode*(this: BOPDS_Pair; theUpperBound: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "HashCode", header: "BOPDS_Pair.hxx".}