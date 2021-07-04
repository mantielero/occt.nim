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
  Geom2dToIGES_Geom2dEntity* {.importcpp: "Geom2dToIGES_Geom2dEntity",
                              header: "Geom2dToIGES_Geom2dEntity.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Creates
                                                                                    ## a
                                                                                    ## tool
                                                                                    ## Geom2dEntity


proc constructGeom2dToIGES_Geom2dEntity*(): Geom2dToIGES_Geom2dEntity {.
    constructor, importcpp: "Geom2dToIGES_Geom2dEntity(@)",
    header: "Geom2dToIGES_Geom2dEntity.hxx".}
proc constructGeom2dToIGES_Geom2dEntity*(GE: Geom2dToIGES_Geom2dEntity): Geom2dToIGES_Geom2dEntity {.
    constructor, importcpp: "Geom2dToIGES_Geom2dEntity(@)",
    header: "Geom2dToIGES_Geom2dEntity.hxx".}
proc SetModel*(this: var Geom2dToIGES_Geom2dEntity;
              model: handle[IGESData_IGESModel]) {.importcpp: "SetModel",
    header: "Geom2dToIGES_Geom2dEntity.hxx".}
proc GetModel*(this: Geom2dToIGES_Geom2dEntity): handle[IGESData_IGESModel] {.
    noSideEffect, importcpp: "GetModel", header: "Geom2dToIGES_Geom2dEntity.hxx".}
proc SetUnit*(this: var Geom2dToIGES_Geom2dEntity; unit: Standard_Real) {.
    importcpp: "SetUnit", header: "Geom2dToIGES_Geom2dEntity.hxx".}
proc GetUnit*(this: Geom2dToIGES_Geom2dEntity): Standard_Real {.noSideEffect,
    importcpp: "GetUnit", header: "Geom2dToIGES_Geom2dEntity.hxx".}