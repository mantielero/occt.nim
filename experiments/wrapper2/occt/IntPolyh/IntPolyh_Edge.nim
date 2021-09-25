##  Created on: 1999-03-05
##  Created by: Fabrice SERVANT
##  Copyright (c) 1999 Matra Datavision
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

## ! The class represents the edge built between the two IntPolyh points.<br>
## ! It is linked to two IntPolyh triangles.

type
  IntPolyhEdge* {.importcpp: "IntPolyh_Edge", header: "IntPolyh_Edge.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructor


proc constructIntPolyhEdge*(): IntPolyhEdge {.constructor,
    importcpp: "IntPolyh_Edge(@)", header: "IntPolyh_Edge.hxx".}
proc constructIntPolyhEdge*(thePoint1: int; thePoint2: int; theTriangle1: int;
                           theTriangle2: int): IntPolyhEdge {.constructor,
    importcpp: "IntPolyh_Edge(@)", header: "IntPolyh_Edge.hxx".}
proc firstPoint*(this: IntPolyhEdge): int {.noSideEffect, importcpp: "FirstPoint",
                                        header: "IntPolyh_Edge.hxx".}
proc secondPoint*(this: IntPolyhEdge): int {.noSideEffect, importcpp: "SecondPoint",
    header: "IntPolyh_Edge.hxx".}
proc firstTriangle*(this: IntPolyhEdge): int {.noSideEffect,
    importcpp: "FirstTriangle", header: "IntPolyh_Edge.hxx".}
proc secondTriangle*(this: IntPolyhEdge): int {.noSideEffect,
    importcpp: "SecondTriangle", header: "IntPolyh_Edge.hxx".}
proc setFirstPoint*(this: var IntPolyhEdge; thePoint: int) {.
    importcpp: "SetFirstPoint", header: "IntPolyh_Edge.hxx".}
proc setSecondPoint*(this: var IntPolyhEdge; thePoint: int) {.
    importcpp: "SetSecondPoint", header: "IntPolyh_Edge.hxx".}
proc setFirstTriangle*(this: var IntPolyhEdge; theTriangle: int) {.
    importcpp: "SetFirstTriangle", header: "IntPolyh_Edge.hxx".}
proc setSecondTriangle*(this: var IntPolyhEdge; theTriangle: int) {.
    importcpp: "SetSecondTriangle", header: "IntPolyh_Edge.hxx".}
proc dump*(this: IntPolyhEdge; v: int) {.noSideEffect, importcpp: "Dump",
                                    header: "IntPolyh_Edge.hxx".}
