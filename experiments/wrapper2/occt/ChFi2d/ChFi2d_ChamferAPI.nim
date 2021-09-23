##  Created on: 2013-05-20
##  Created by: Mikhail PONIKAROV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Wire, ../Geom/Geom_Curve

## ! A class making a chamfer between two linear edges.

type
  ChFi2d_ChamferAPI* {.importcpp: "ChFi2d_ChamferAPI",
                      header: "ChFi2d_ChamferAPI.hxx", bycopy.} = object ## ! An empty constructor.


proc constructChFi2d_ChamferAPI*(): ChFi2d_ChamferAPI {.constructor,
    importcpp: "ChFi2d_ChamferAPI(@)", header: "ChFi2d_ChamferAPI.hxx".}
proc constructChFi2d_ChamferAPI*(theWire: TopoDS_Wire): ChFi2d_ChamferAPI {.
    constructor, importcpp: "ChFi2d_ChamferAPI(@)", header: "ChFi2d_ChamferAPI.hxx".}
proc constructChFi2d_ChamferAPI*(theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge): ChFi2d_ChamferAPI {.
    constructor, importcpp: "ChFi2d_ChamferAPI(@)", header: "ChFi2d_ChamferAPI.hxx".}
proc Init*(this: var ChFi2d_ChamferAPI; theWire: TopoDS_Wire) {.importcpp: "Init",
    header: "ChFi2d_ChamferAPI.hxx".}
proc Init*(this: var ChFi2d_ChamferAPI; theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge) {.
    importcpp: "Init", header: "ChFi2d_ChamferAPI.hxx".}
proc Perform*(this: var ChFi2d_ChamferAPI): Standard_Boolean {.importcpp: "Perform",
    header: "ChFi2d_ChamferAPI.hxx".}
proc Result*(this: var ChFi2d_ChamferAPI; theEdge1: var TopoDS_Edge;
            theEdge2: var TopoDS_Edge; theLength1: Standard_Real;
            theLength2: Standard_Real): TopoDS_Edge {.importcpp: "Result",
    header: "ChFi2d_ChamferAPI.hxx".}