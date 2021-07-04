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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

## ! The class represents the edge built between the two IntPolyh points.<br>
## ! It is linked to two IntPolyh triangles.

type
  IntPolyh_Edge* {.importcpp: "IntPolyh_Edge", header: "IntPolyh_Edge.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Constructor


proc constructIntPolyh_Edge*(): IntPolyh_Edge {.constructor,
    importcpp: "IntPolyh_Edge(@)", header: "IntPolyh_Edge.hxx".}
proc constructIntPolyh_Edge*(thePoint1: Standard_Integer;
                            thePoint2: Standard_Integer;
                            theTriangle1: Standard_Integer;
                            theTriangle2: Standard_Integer): IntPolyh_Edge {.
    constructor, importcpp: "IntPolyh_Edge(@)", header: "IntPolyh_Edge.hxx".}
proc FirstPoint*(this: IntPolyh_Edge): Standard_Integer {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPolyh_Edge.hxx".}
proc SecondPoint*(this: IntPolyh_Edge): Standard_Integer {.noSideEffect,
    importcpp: "SecondPoint", header: "IntPolyh_Edge.hxx".}
proc FirstTriangle*(this: IntPolyh_Edge): Standard_Integer {.noSideEffect,
    importcpp: "FirstTriangle", header: "IntPolyh_Edge.hxx".}
proc SecondTriangle*(this: IntPolyh_Edge): Standard_Integer {.noSideEffect,
    importcpp: "SecondTriangle", header: "IntPolyh_Edge.hxx".}
proc SetFirstPoint*(this: var IntPolyh_Edge; thePoint: Standard_Integer) {.
    importcpp: "SetFirstPoint", header: "IntPolyh_Edge.hxx".}
proc SetSecondPoint*(this: var IntPolyh_Edge; thePoint: Standard_Integer) {.
    importcpp: "SetSecondPoint", header: "IntPolyh_Edge.hxx".}
proc SetFirstTriangle*(this: var IntPolyh_Edge; theTriangle: Standard_Integer) {.
    importcpp: "SetFirstTriangle", header: "IntPolyh_Edge.hxx".}
proc SetSecondTriangle*(this: var IntPolyh_Edge; theTriangle: Standard_Integer) {.
    importcpp: "SetSecondTriangle", header: "IntPolyh_Edge.hxx".}
proc Dump*(this: IntPolyh_Edge; v: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "IntPolyh_Edge.hxx".}