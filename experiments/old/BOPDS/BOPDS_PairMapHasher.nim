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

discard "forward decl of BOPDS_Pair"
type
  BOPDS_PairMapHasher* {.importcpp: "BOPDS_PairMapHasher",
                        header: "BOPDS_PairMapHasher.hxx", bycopy.} = object ## ! Computes a hash code for the given pair, in the range [1,
                                                                        ## theUpperBound]
                                                                        ## ! @param thePair the pair which hash code is to be computed
                                                                        ## ! @param
                                                                        ## theUpperBound the upper bound of the range a
                                                                        ## computing hash code must be within
                                                                        ## ! @return a computed hash code, in the range [1,
                                                                        ## theUpperBound]


proc hashCode*(thePair: BOPDS_Pair; theUpperBound: cint): cint {.
    importcpp: "BOPDS_PairMapHasher::HashCode(@)",
    header: "BOPDS_PairMapHasher.hxx".}
proc isEqual*(thePair1: BOPDS_Pair; thePair2: BOPDS_Pair): bool {.
    importcpp: "BOPDS_PairMapHasher::IsEqual(@)",
    header: "BOPDS_PairMapHasher.hxx".}

























