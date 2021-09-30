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

## ! description of a directory componant which can be either
## ! undefined (let Void), defined as a Reference to an entity,
## ! or as a Rank, integer value adressing a builtin table
## ! The entity reference is not included here, only reference
## ! status is kept (because entity type must be adapted)

type
  IGESDataDefSwitch* {.importcpp: "IGESData_DefSwitch",
                      header: "IGESData_DefSwitch.hxx", bycopy.} = object ## ! creates a DefSwitch as Void


proc constructIGESDataDefSwitch*(): IGESDataDefSwitch {.constructor,
    importcpp: "IGESData_DefSwitch(@)", header: "IGESData_DefSwitch.hxx".}
proc setVoid*(this: var IGESDataDefSwitch) {.importcpp: "SetVoid",
    header: "IGESData_DefSwitch.hxx".}
proc setReference*(this: var IGESDataDefSwitch) {.importcpp: "SetReference",
    header: "IGESData_DefSwitch.hxx".}
proc setRank*(this: var IGESDataDefSwitch; val: cint) {.importcpp: "SetRank",
    header: "IGESData_DefSwitch.hxx".}
proc defType*(this: IGESDataDefSwitch): IGESDataDefType {.noSideEffect,
    importcpp: "DefType", header: "IGESData_DefSwitch.hxx".}
proc value*(this: IGESDataDefSwitch): cint {.noSideEffect, importcpp: "Value",
    header: "IGESData_DefSwitch.hxx".}

























