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

## ! A class making a chamfer between two linear edges.

type
  ChFi2dChamferAPI* {.importcpp: "ChFi2d_ChamferAPI",
                     header: "ChFi2d_ChamferAPI.hxx", bycopy.} = object ## ! An empty constructor.


proc constructChFi2dChamferAPI*(): ChFi2dChamferAPI {.constructor,
    importcpp: "ChFi2d_ChamferAPI(@)", header: "ChFi2d_ChamferAPI.hxx".}
proc constructChFi2dChamferAPI*(theWire: TopoDS_Wire): ChFi2dChamferAPI {.
    constructor, importcpp: "ChFi2d_ChamferAPI(@)", header: "ChFi2d_ChamferAPI.hxx".}
proc constructChFi2dChamferAPI*(theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge): ChFi2dChamferAPI {.
    constructor, importcpp: "ChFi2d_ChamferAPI(@)", header: "ChFi2d_ChamferAPI.hxx".}
proc init*(this: var ChFi2dChamferAPI; theWire: TopoDS_Wire) {.importcpp: "Init",
    header: "ChFi2d_ChamferAPI.hxx".}
proc init*(this: var ChFi2dChamferAPI; theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge) {.
    importcpp: "Init", header: "ChFi2d_ChamferAPI.hxx".}
proc perform*(this: var ChFi2dChamferAPI): StandardBoolean {.importcpp: "Perform",
    header: "ChFi2d_ChamferAPI.hxx".}
proc result*(this: var ChFi2dChamferAPI; theEdge1: var TopoDS_Edge;
            theEdge2: var TopoDS_Edge; theLength1: StandardReal;
            theLength2: StandardReal): TopoDS_Edge {.importcpp: "Result",
    header: "ChFi2d_ChamferAPI.hxx".}