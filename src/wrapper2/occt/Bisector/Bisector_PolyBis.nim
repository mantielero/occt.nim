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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Bisector_PointOnBis, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Bisector_PointOnBis"
discard "forward decl of gp_Trsf2d"
type
  Bisector_PolyBis* {.importcpp: "Bisector_PolyBis",
                     header: "Bisector_PolyBis.hxx", bycopy.} = object


proc constructBisector_PolyBis*(): Bisector_PolyBis {.constructor,
    importcpp: "Bisector_PolyBis(@)", header: "Bisector_PolyBis.hxx".}
proc Append*(this: var Bisector_PolyBis; Point: Bisector_PointOnBis) {.
    importcpp: "Append", header: "Bisector_PolyBis.hxx".}
proc Length*(this: Bisector_PolyBis): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "Bisector_PolyBis.hxx".}
proc IsEmpty*(this: Bisector_PolyBis): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Bisector_PolyBis.hxx".}
proc Value*(this: Bisector_PolyBis; Index: Standard_Integer): Bisector_PointOnBis {.
    noSideEffect, importcpp: "Value", header: "Bisector_PolyBis.hxx".}
proc First*(this: Bisector_PolyBis): Bisector_PointOnBis {.noSideEffect,
    importcpp: "First", header: "Bisector_PolyBis.hxx".}
proc Last*(this: Bisector_PolyBis): Bisector_PointOnBis {.noSideEffect,
    importcpp: "Last", header: "Bisector_PolyBis.hxx".}
proc Interval*(this: Bisector_PolyBis; U: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "Interval", header: "Bisector_PolyBis.hxx".}
proc Transform*(this: var Bisector_PolyBis; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Bisector_PolyBis.hxx".}