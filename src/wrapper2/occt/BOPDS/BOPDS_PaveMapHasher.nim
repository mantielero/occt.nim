##  Created by: Eugeny MALTCHIKOV
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
type
  BOPDS_PaveMapHasher* {.importcpp: "BOPDS_PaveMapHasher",
                        header: "BOPDS_PaveMapHasher.hxx", bycopy.} = object ## ! Computes a hash code for the given pave, in the range [1,
                                                                        ## theUpperBound]
                                                                        ## ! @param thePave the pave which hash code is to be computed
                                                                        ## ! @param
                                                                        ## theUpperBound the upper bound of the range a
                                                                        ## computing hash code must be within
                                                                        ## ! @return a computed hash code, in the range [1,
                                                                        ## theUpperBound]


proc hashCode*(thePave: BOPDS_Pave; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "BOPDS_PaveMapHasher::HashCode(@)",
    header: "BOPDS_PaveMapHasher.hxx".}
proc isEqual*(aPave1: BOPDS_Pave; aPave2: BOPDS_Pave): StandardBoolean {.
    importcpp: "BOPDS_PaveMapHasher::IsEqual(@)",
    header: "BOPDS_PaveMapHasher.hxx".}

