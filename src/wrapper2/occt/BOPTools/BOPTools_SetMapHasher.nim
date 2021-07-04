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

discard "forward decl of BOPTools_Set"
type
  BOPTools_SetMapHasher* {.importcpp: "BOPTools_SetMapHasher",
                          header: "BOPTools_SetMapHasher.hxx", bycopy.} = object ## !
                                                                            ## Computes a hash code for the
                                                                            ## given set, in the
                                                                            ## range [1,
                                                                            ## theUpperBound]
                                                                            ## !
                                                                            ## @param
                                                                            ## theSet the set
                                                                            ## which hash code is to be
                                                                            ## computed
                                                                            ## !
                                                                            ## @param
                                                                            ## theUpperBound the
                                                                            ## upper
                                                                            ## bound of the
                                                                            ## range a
                                                                            ## computing hash code must be
                                                                            ## within
                                                                            ## !
                                                                            ## @return a
                                                                            ## computed hash
                                                                            ## code, in the
                                                                            ## range [1,
                                                                            ## theUpperBound]


proc HashCode*(theSet: BOPTools_Set; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "BOPTools_SetMapHasher::HashCode(@)",
    header: "BOPTools_SetMapHasher.hxx".}
proc IsEqual*(aSet1: BOPTools_Set; aSet2: BOPTools_Set): Standard_Boolean {.
    importcpp: "BOPTools_SetMapHasher::IsEqual(@)",
    header: "BOPTools_SetMapHasher.hxx".}