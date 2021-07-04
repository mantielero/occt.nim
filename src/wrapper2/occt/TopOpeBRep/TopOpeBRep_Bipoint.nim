##  Created on: 1997-01-09
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1997-1999 Matra Datavision
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

type
  TopOpeBRep_Bipoint* {.importcpp: "TopOpeBRep_Bipoint",
                       header: "TopOpeBRep_Bipoint.hxx", bycopy.} = object


proc constructTopOpeBRep_Bipoint*(): TopOpeBRep_Bipoint {.constructor,
    importcpp: "TopOpeBRep_Bipoint(@)", header: "TopOpeBRep_Bipoint.hxx".}
proc constructTopOpeBRep_Bipoint*(I1: Standard_Integer; I2: Standard_Integer): TopOpeBRep_Bipoint {.
    constructor, importcpp: "TopOpeBRep_Bipoint(@)",
    header: "TopOpeBRep_Bipoint.hxx".}
proc I1*(this: TopOpeBRep_Bipoint): Standard_Integer {.noSideEffect, importcpp: "I1",
    header: "TopOpeBRep_Bipoint.hxx".}
proc I2*(this: TopOpeBRep_Bipoint): Standard_Integer {.noSideEffect, importcpp: "I2",
    header: "TopOpeBRep_Bipoint.hxx".}