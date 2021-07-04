##  Created on: 1992-04-06
##  Created by: Christian CAILLET
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer, IGESData_DefType

## ! description of a directory componant which can be either
## ! undefined (let Void), defined as a Reference to an entity,
## ! or as a Rank, integer value adressing a builtin table
## ! The entity reference is not included here, only reference
## ! status is kept (because entity type must be adapted)

type
  IGESData_DefSwitch* {.importcpp: "IGESData_DefSwitch",
                       header: "IGESData_DefSwitch.hxx", bycopy.} = object ## ! creates a DefSwitch as Void


proc constructIGESData_DefSwitch*(): IGESData_DefSwitch {.constructor,
    importcpp: "IGESData_DefSwitch(@)", header: "IGESData_DefSwitch.hxx".}
proc SetVoid*(this: var IGESData_DefSwitch) {.importcpp: "SetVoid",
    header: "IGESData_DefSwitch.hxx".}
proc SetReference*(this: var IGESData_DefSwitch) {.importcpp: "SetReference",
    header: "IGESData_DefSwitch.hxx".}
proc SetRank*(this: var IGESData_DefSwitch; val: Standard_Integer) {.
    importcpp: "SetRank", header: "IGESData_DefSwitch.hxx".}
proc DefType*(this: IGESData_DefSwitch): IGESData_DefType {.noSideEffect,
    importcpp: "DefType", header: "IGESData_DefSwitch.hxx".}
proc Value*(this: IGESData_DefSwitch): Standard_Integer {.noSideEffect,
    importcpp: "Value", header: "IGESData_DefSwitch.hxx".}