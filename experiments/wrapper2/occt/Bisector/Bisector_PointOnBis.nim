##  Created on: 1994-01-10
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

discard "forward decl of gp_Pnt2d"
type
  BisectorPointOnBis* {.importcpp: "Bisector_PointOnBis",
                       header: "Bisector_PointOnBis.hxx", bycopy.} = object


proc constructBisectorPointOnBis*(): BisectorPointOnBis {.constructor,
    importcpp: "Bisector_PointOnBis(@)", header: "Bisector_PointOnBis.hxx".}
proc constructBisectorPointOnBis*(param1: cfloat; param2: cfloat; paramBis: cfloat;
                                 distance: cfloat; point: Pnt2d): BisectorPointOnBis {.
    constructor, importcpp: "Bisector_PointOnBis(@)",
    header: "Bisector_PointOnBis.hxx".}
proc paramOnC1*(this: var BisectorPointOnBis; param: cfloat) {.importcpp: "ParamOnC1",
    header: "Bisector_PointOnBis.hxx".}
proc paramOnC2*(this: var BisectorPointOnBis; param: cfloat) {.importcpp: "ParamOnC2",
    header: "Bisector_PointOnBis.hxx".}
proc paramOnBis*(this: var BisectorPointOnBis; param: cfloat) {.
    importcpp: "ParamOnBis", header: "Bisector_PointOnBis.hxx".}
proc distance*(this: var BisectorPointOnBis; distance: cfloat) {.
    importcpp: "Distance", header: "Bisector_PointOnBis.hxx".}
proc isInfinite*(this: var BisectorPointOnBis; infinite: bool) {.
    importcpp: "IsInfinite", header: "Bisector_PointOnBis.hxx".}
proc point*(this: var BisectorPointOnBis; p: Pnt2d) {.importcpp: "Point",
    header: "Bisector_PointOnBis.hxx".}
proc paramOnC1*(this: BisectorPointOnBis): cfloat {.noSideEffect,
    importcpp: "ParamOnC1", header: "Bisector_PointOnBis.hxx".}
proc paramOnC2*(this: BisectorPointOnBis): cfloat {.noSideEffect,
    importcpp: "ParamOnC2", header: "Bisector_PointOnBis.hxx".}
proc paramOnBis*(this: BisectorPointOnBis): cfloat {.noSideEffect,
    importcpp: "ParamOnBis", header: "Bisector_PointOnBis.hxx".}
proc distance*(this: BisectorPointOnBis): cfloat {.noSideEffect,
    importcpp: "Distance", header: "Bisector_PointOnBis.hxx".}
proc point*(this: BisectorPointOnBis): Pnt2d {.noSideEffect, importcpp: "Point",
    header: "Bisector_PointOnBis.hxx".}
proc isInfinite*(this: BisectorPointOnBis): bool {.noSideEffect,
    importcpp: "IsInfinite", header: "Bisector_PointOnBis.hxx".}
proc dump*(this: BisectorPointOnBis) {.noSideEffect, importcpp: "Dump",
                                    header: "Bisector_PointOnBis.hxx".}

























