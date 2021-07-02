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

## ! The class is to provide the pair of indices of interfering shapes.

type
  BOPDS_Pair* {.importcpp: "BOPDS_Pair", header: "BOPDS_Pair.hxx", bycopy.} = object


proc constructBOPDS_Pair*(): BOPDS_Pair {.constructor, importcpp: "BOPDS_Pair(@)",
                                       header: "BOPDS_Pair.hxx".}
proc constructBOPDS_Pair*(theIndex1: StandardInteger; theIndex2: StandardInteger): BOPDS_Pair {.
    constructor, importcpp: "BOPDS_Pair(@)", header: "BOPDS_Pair.hxx".}
proc destroyBOPDS_Pair*(this: var BOPDS_Pair) {.importcpp: "#.~BOPDS_Pair()",
    header: "BOPDS_Pair.hxx".}
proc setIndices*(this: var BOPDS_Pair; theIndex1: StandardInteger;
                theIndex2: StandardInteger) {.importcpp: "SetIndices",
    header: "BOPDS_Pair.hxx".}
proc indices*(this: BOPDS_Pair; theIndex1: var StandardInteger;
             theIndex2: var StandardInteger) {.noSideEffect, importcpp: "Indices",
    header: "BOPDS_Pair.hxx".}
proc `<`*(this: BOPDS_Pair; theOther: BOPDS_Pair): StandardBoolean {.noSideEffect,
    importcpp: "(# < #)", header: "BOPDS_Pair.hxx".}
proc isEqual*(this: BOPDS_Pair; theOther: BOPDS_Pair): StandardBoolean {.noSideEffect,
    importcpp: "IsEqual", header: "BOPDS_Pair.hxx".}
proc hashCode*(this: BOPDS_Pair; theUpperBound: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "HashCode", header: "BOPDS_Pair.hxx".}

