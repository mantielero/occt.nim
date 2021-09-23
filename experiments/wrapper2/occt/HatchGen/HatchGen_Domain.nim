##  Created on: 1993-11-05
##  Created by: Jean Marc LACHAUME
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  HatchGen_PointOnHatching, ../Standard/Standard_Integer

discard "forward decl of Standard_DomainError"
discard "forward decl of HatchGen_PointOnHatching"
type
  HatchGen_Domain* {.importcpp: "HatchGen_Domain", header: "HatchGen_Domain.hxx",
                    bycopy.} = object ## ! Creates an infinite domain.


proc constructHatchGen_Domain*(): HatchGen_Domain {.constructor,
    importcpp: "HatchGen_Domain(@)", header: "HatchGen_Domain.hxx".}
proc constructHatchGen_Domain*(P1: HatchGen_PointOnHatching;
                              P2: HatchGen_PointOnHatching): HatchGen_Domain {.
    constructor, importcpp: "HatchGen_Domain(@)", header: "HatchGen_Domain.hxx".}
proc constructHatchGen_Domain*(P: HatchGen_PointOnHatching; First: Standard_Boolean): HatchGen_Domain {.
    constructor, importcpp: "HatchGen_Domain(@)", header: "HatchGen_Domain.hxx".}
proc SetPoints*(this: var HatchGen_Domain; P1: HatchGen_PointOnHatching;
               P2: HatchGen_PointOnHatching) {.importcpp: "SetPoints",
    header: "HatchGen_Domain.hxx".}
proc SetPoints*(this: var HatchGen_Domain) {.importcpp: "SetPoints",
    header: "HatchGen_Domain.hxx".}
proc SetFirstPoint*(this: var HatchGen_Domain; P: HatchGen_PointOnHatching) {.
    importcpp: "SetFirstPoint", header: "HatchGen_Domain.hxx".}
proc SetFirstPoint*(this: var HatchGen_Domain) {.importcpp: "SetFirstPoint",
    header: "HatchGen_Domain.hxx".}
proc SetSecondPoint*(this: var HatchGen_Domain; P: HatchGen_PointOnHatching) {.
    importcpp: "SetSecondPoint", header: "HatchGen_Domain.hxx".}
proc SetSecondPoint*(this: var HatchGen_Domain) {.importcpp: "SetSecondPoint",
    header: "HatchGen_Domain.hxx".}
proc HasFirstPoint*(this: HatchGen_Domain): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "HatchGen_Domain.hxx".}
proc FirstPoint*(this: HatchGen_Domain): HatchGen_PointOnHatching {.noSideEffect,
    importcpp: "FirstPoint", header: "HatchGen_Domain.hxx".}
proc HasSecondPoint*(this: HatchGen_Domain): Standard_Boolean {.noSideEffect,
    importcpp: "HasSecondPoint", header: "HatchGen_Domain.hxx".}
proc SecondPoint*(this: HatchGen_Domain): HatchGen_PointOnHatching {.noSideEffect,
    importcpp: "SecondPoint", header: "HatchGen_Domain.hxx".}
proc Dump*(this: HatchGen_Domain; Index: Standard_Integer = 0) {.noSideEffect,
    importcpp: "Dump", header: "HatchGen_Domain.hxx".}