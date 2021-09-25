##  Created on: 1994-04-01
##  Created by: Yves FRICAUD
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

discard "forward decl of Bisector_PointOnBis"
discard "forward decl of gp_Trsf2d"
type
  BisectorPolyBis* {.importcpp: "Bisector_PolyBis", header: "Bisector_PolyBis.hxx",
                    bycopy.} = object


proc constructBisectorPolyBis*(): BisectorPolyBis {.constructor,
    importcpp: "Bisector_PolyBis(@)", header: "Bisector_PolyBis.hxx".}
proc append*(this: var BisectorPolyBis; point: BisectorPointOnBis) {.
    importcpp: "Append", header: "Bisector_PolyBis.hxx".}
proc length*(this: BisectorPolyBis): int {.noSideEffect, importcpp: "Length",
                                       header: "Bisector_PolyBis.hxx".}
proc isEmpty*(this: BisectorPolyBis): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "Bisector_PolyBis.hxx".}
proc value*(this: BisectorPolyBis; index: int): BisectorPointOnBis {.noSideEffect,
    importcpp: "Value", header: "Bisector_PolyBis.hxx".}
proc first*(this: BisectorPolyBis): BisectorPointOnBis {.noSideEffect,
    importcpp: "First", header: "Bisector_PolyBis.hxx".}
proc last*(this: BisectorPolyBis): BisectorPointOnBis {.noSideEffect,
    importcpp: "Last", header: "Bisector_PolyBis.hxx".}
proc interval*(this: BisectorPolyBis; u: float): int {.noSideEffect,
    importcpp: "Interval", header: "Bisector_PolyBis.hxx".}
proc transform*(this: var BisectorPolyBis; t: Trsf2d) {.importcpp: "Transform",
    header: "Bisector_PolyBis.hxx".}
