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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../gp/gp_Pnt2d

discard "forward decl of gp_Pnt2d"
type
  Bisector_PointOnBis* {.importcpp: "Bisector_PointOnBis",
                        header: "Bisector_PointOnBis.hxx", bycopy.} = object


proc constructBisector_PointOnBis*(): Bisector_PointOnBis {.constructor,
    importcpp: "Bisector_PointOnBis(@)", header: "Bisector_PointOnBis.hxx".}
proc constructBisector_PointOnBis*(Param1: Standard_Real; Param2: Standard_Real;
                                  ParamBis: Standard_Real;
                                  Distance: Standard_Real; Point: gp_Pnt2d): Bisector_PointOnBis {.
    constructor, importcpp: "Bisector_PointOnBis(@)",
    header: "Bisector_PointOnBis.hxx".}
proc ParamOnC1*(this: var Bisector_PointOnBis; Param: Standard_Real) {.
    importcpp: "ParamOnC1", header: "Bisector_PointOnBis.hxx".}
proc ParamOnC2*(this: var Bisector_PointOnBis; Param: Standard_Real) {.
    importcpp: "ParamOnC2", header: "Bisector_PointOnBis.hxx".}
proc ParamOnBis*(this: var Bisector_PointOnBis; Param: Standard_Real) {.
    importcpp: "ParamOnBis", header: "Bisector_PointOnBis.hxx".}
proc Distance*(this: var Bisector_PointOnBis; Distance: Standard_Real) {.
    importcpp: "Distance", header: "Bisector_PointOnBis.hxx".}
proc IsInfinite*(this: var Bisector_PointOnBis; Infinite: Standard_Boolean) {.
    importcpp: "IsInfinite", header: "Bisector_PointOnBis.hxx".}
proc Point*(this: var Bisector_PointOnBis; P: gp_Pnt2d) {.importcpp: "Point",
    header: "Bisector_PointOnBis.hxx".}
proc ParamOnC1*(this: Bisector_PointOnBis): Standard_Real {.noSideEffect,
    importcpp: "ParamOnC1", header: "Bisector_PointOnBis.hxx".}
proc ParamOnC2*(this: Bisector_PointOnBis): Standard_Real {.noSideEffect,
    importcpp: "ParamOnC2", header: "Bisector_PointOnBis.hxx".}
proc ParamOnBis*(this: Bisector_PointOnBis): Standard_Real {.noSideEffect,
    importcpp: "ParamOnBis", header: "Bisector_PointOnBis.hxx".}
proc Distance*(this: Bisector_PointOnBis): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "Bisector_PointOnBis.hxx".}
proc Point*(this: Bisector_PointOnBis): gp_Pnt2d {.noSideEffect, importcpp: "Point",
    header: "Bisector_PointOnBis.hxx".}
proc IsInfinite*(this: Bisector_PointOnBis): Standard_Boolean {.noSideEffect,
    importcpp: "IsInfinite", header: "Bisector_PointOnBis.hxx".}
proc Dump*(this: Bisector_PointOnBis) {.noSideEffect, importcpp: "Dump",
                                     header: "Bisector_PointOnBis.hxx".}