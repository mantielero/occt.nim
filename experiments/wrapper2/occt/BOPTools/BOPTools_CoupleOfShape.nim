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

## =======================================================================
## class :
## purpose  :
## =======================================================================

type
  BOPToolsCoupleOfShape* {.importcpp: "BOPTools_CoupleOfShape",
                          header: "BOPTools_CoupleOfShape.hxx", bycopy.} = object


proc constructBOPToolsCoupleOfShape*(): BOPToolsCoupleOfShape {.constructor,
    importcpp: "BOPTools_CoupleOfShape(@)", header: "BOPTools_CoupleOfShape.hxx".}
proc destroyBOPToolsCoupleOfShape*(this: var BOPToolsCoupleOfShape) {.
    importcpp: "#.~BOPTools_CoupleOfShape()", header: "BOPTools_CoupleOfShape.hxx".}
proc setShape1*(this: var BOPToolsCoupleOfShape; theShape: TopoDS_Shape) {.
    importcpp: "SetShape1", header: "BOPTools_CoupleOfShape.hxx".}
proc shape1*(this: BOPToolsCoupleOfShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape1", header: "BOPTools_CoupleOfShape.hxx".}
proc setShape2*(this: var BOPToolsCoupleOfShape; theShape: TopoDS_Shape) {.
    importcpp: "SetShape2", header: "BOPTools_CoupleOfShape.hxx".}
proc shape2*(this: BOPToolsCoupleOfShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape2", header: "BOPTools_CoupleOfShape.hxx".}

























