##  Created on: 1994-11-04
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Transfer_Finder"
type
  Transfer_FindHasher* {.importcpp: "Transfer_FindHasher",
                        header: "Transfer_FindHasher.hxx", bycopy.} = object ## ! Returns hash code for the given finder, in the range [1,
                                                                        ## theUpperBound].
                                                                        ## ! Asks the finder its hash code, then
                                                                        ## transforms it to be in the required range
                                                                        ## ! @param
                                                                        ## theFinder the finder which hash code is to be computed
                                                                        ## ! @param
                                                                        ## theUpperBound the upper bound of the range a
                                                                        ## computing hash code must be within
                                                                        ## ! @return a computed hash code, in the range [1,
                                                                        ## theUpperBound]


proc HashCode*(theFinder: handle[Transfer_Finder]; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "Transfer_FindHasher::HashCode(@)",
    header: "Transfer_FindHasher.hxx".}
proc IsEqual*(K1: handle[Transfer_Finder]; K2: handle[Transfer_Finder]): Standard_Boolean {.
    importcpp: "Transfer_FindHasher::IsEqual(@)",
    header: "Transfer_FindHasher.hxx".}