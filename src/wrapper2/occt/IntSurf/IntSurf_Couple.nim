##  Created on: 1992-03-25
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

## ! creation d 'un couple de 2 entiers

type
  IntSurf_Couple* {.importcpp: "IntSurf_Couple", header: "IntSurf_Couple.hxx", bycopy.} = object


proc constructIntSurf_Couple*(): IntSurf_Couple {.constructor,
    importcpp: "IntSurf_Couple(@)", header: "IntSurf_Couple.hxx".}
proc constructIntSurf_Couple*(Index1: Standard_Integer; Index2: Standard_Integer): IntSurf_Couple {.
    constructor, importcpp: "IntSurf_Couple(@)", header: "IntSurf_Couple.hxx".}
proc First*(this: IntSurf_Couple): Standard_Integer {.noSideEffect,
    importcpp: "First", header: "IntSurf_Couple.hxx".}
proc Second*(this: IntSurf_Couple): Standard_Integer {.noSideEffect,
    importcpp: "Second", header: "IntSurf_Couple.hxx".}