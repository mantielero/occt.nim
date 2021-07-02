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

discard "forward decl of Standard_DomainError"
discard "forward decl of HatchGen_PointOnHatching"
type
  HatchGenDomain* {.importcpp: "HatchGen_Domain", header: "HatchGen_Domain.hxx",
                   bycopy.} = object ## ! Creates an infinite domain.


proc constructHatchGenDomain*(): HatchGenDomain {.constructor,
    importcpp: "HatchGen_Domain(@)", header: "HatchGen_Domain.hxx".}
proc constructHatchGenDomain*(p1: HatchGenPointOnHatching;
                             p2: HatchGenPointOnHatching): HatchGenDomain {.
    constructor, importcpp: "HatchGen_Domain(@)", header: "HatchGen_Domain.hxx".}
proc constructHatchGenDomain*(p: HatchGenPointOnHatching; first: StandardBoolean): HatchGenDomain {.
    constructor, importcpp: "HatchGen_Domain(@)", header: "HatchGen_Domain.hxx".}
proc setPoints*(this: var HatchGenDomain; p1: HatchGenPointOnHatching;
               p2: HatchGenPointOnHatching) {.importcpp: "SetPoints",
    header: "HatchGen_Domain.hxx".}
proc setPoints*(this: var HatchGenDomain) {.importcpp: "SetPoints",
                                        header: "HatchGen_Domain.hxx".}
proc setFirstPoint*(this: var HatchGenDomain; p: HatchGenPointOnHatching) {.
    importcpp: "SetFirstPoint", header: "HatchGen_Domain.hxx".}
proc setFirstPoint*(this: var HatchGenDomain) {.importcpp: "SetFirstPoint",
    header: "HatchGen_Domain.hxx".}
proc setSecondPoint*(this: var HatchGenDomain; p: HatchGenPointOnHatching) {.
    importcpp: "SetSecondPoint", header: "HatchGen_Domain.hxx".}
proc setSecondPoint*(this: var HatchGenDomain) {.importcpp: "SetSecondPoint",
    header: "HatchGen_Domain.hxx".}
proc hasFirstPoint*(this: HatchGenDomain): StandardBoolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "HatchGen_Domain.hxx".}
proc firstPoint*(this: HatchGenDomain): HatchGenPointOnHatching {.noSideEffect,
    importcpp: "FirstPoint", header: "HatchGen_Domain.hxx".}
proc hasSecondPoint*(this: HatchGenDomain): StandardBoolean {.noSideEffect,
    importcpp: "HasSecondPoint", header: "HatchGen_Domain.hxx".}
proc secondPoint*(this: HatchGenDomain): HatchGenPointOnHatching {.noSideEffect,
    importcpp: "SecondPoint", header: "HatchGen_Domain.hxx".}
proc dump*(this: HatchGenDomain; index: StandardInteger = 0) {.noSideEffect,
    importcpp: "Dump", header: "HatchGen_Domain.hxx".}

