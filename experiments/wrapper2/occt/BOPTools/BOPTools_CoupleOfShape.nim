##  Created by: Peter KURNEV
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
  ../TopoDS/TopoDS_Shape

## =======================================================================
## class :
## purpose  :
## =======================================================================

type
  BOPTools_CoupleOfShape* {.importcpp: "BOPTools_CoupleOfShape",
                           header: "BOPTools_CoupleOfShape.hxx", bycopy.} = object


proc constructBOPTools_CoupleOfShape*(): BOPTools_CoupleOfShape {.constructor,
    importcpp: "BOPTools_CoupleOfShape(@)", header: "BOPTools_CoupleOfShape.hxx".}
proc destroyBOPTools_CoupleOfShape*(this: var BOPTools_CoupleOfShape) {.
    importcpp: "#.~BOPTools_CoupleOfShape()", header: "BOPTools_CoupleOfShape.hxx".}
proc SetShape1*(this: var BOPTools_CoupleOfShape; theShape: TopoDS_Shape) {.
    importcpp: "SetShape1", header: "BOPTools_CoupleOfShape.hxx".}
proc Shape1*(this: BOPTools_CoupleOfShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape1", header: "BOPTools_CoupleOfShape.hxx".}
proc SetShape2*(this: var BOPTools_CoupleOfShape; theShape: TopoDS_Shape) {.
    importcpp: "SetShape2", header: "BOPTools_CoupleOfShape.hxx".}
proc Shape2*(this: BOPTools_CoupleOfShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape2", header: "BOPTools_CoupleOfShape.hxx".}