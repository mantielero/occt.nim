##  Created on: 1995-09-13
##  Created by: Marie Jose MARTZ
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real

discard "forward decl of IGESData_IGESModel"
type
  GeomToIGES_GeomEntity* {.importcpp: "GeomToIGES_GeomEntity",
                          header: "GeomToIGES_GeomEntity.hxx", bycopy.} = object ## !
                                                                            ## Creates a tool
                                                                            ## GeomEntity


proc constructGeomToIGES_GeomEntity*(): GeomToIGES_GeomEntity {.constructor,
    importcpp: "GeomToIGES_GeomEntity(@)", header: "GeomToIGES_GeomEntity.hxx".}
proc constructGeomToIGES_GeomEntity*(GE: GeomToIGES_GeomEntity): GeomToIGES_GeomEntity {.
    constructor, importcpp: "GeomToIGES_GeomEntity(@)",
    header: "GeomToIGES_GeomEntity.hxx".}
proc SetModel*(this: var GeomToIGES_GeomEntity; model: handle[IGESData_IGESModel]) {.
    importcpp: "SetModel", header: "GeomToIGES_GeomEntity.hxx".}
proc GetModel*(this: GeomToIGES_GeomEntity): handle[IGESData_IGESModel] {.
    noSideEffect, importcpp: "GetModel", header: "GeomToIGES_GeomEntity.hxx".}
proc SetUnit*(this: var GeomToIGES_GeomEntity; unit: Standard_Real) {.
    importcpp: "SetUnit", header: "GeomToIGES_GeomEntity.hxx".}
proc GetUnit*(this: GeomToIGES_GeomEntity): Standard_Real {.noSideEffect,
    importcpp: "GetUnit", header: "GeomToIGES_GeomEntity.hxx".}