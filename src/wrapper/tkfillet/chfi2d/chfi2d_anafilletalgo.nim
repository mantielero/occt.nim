##  Created on: 2013-05-20
##  Created by: Vlad ROMASHKO
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

## ! An analytical algorithm for calculation of the fillets.
## ! It is implemented for segments and arcs of circle only.

type
  ChFi2dAnaFilletAlgo* {.importcpp: "ChFi2d_AnaFilletAlgo",
                        header: "ChFi2d_AnaFilletAlgo.hxx", bycopy.} = object ## ! An empty
                                                                         ## constructor.
                                                                         ## ! Use the method Init() to
                                                                         ## initialize the class.
                                                                         ##  WW5 method to compute fillet.
                                                                         ##  It returns a
                                                                         ## constructed fillet
                                                                         ## definition:
                                                                         ##      center point (xc, yc)
                                                                         ##      point on the 1st segment
                                                                         ## (xstart, ystart)
                                                                         ##      point on the 2nd segment (xend, yend)
                                                                         ##      is the arc of fillet
                                                                         ## clockwise (cw = true) or
                                                                         ## counterclockwise (cw = false).
    ##  Left neighbour.
    ##  Right neighbour.
    ##  Fillet (result).


proc newChFi2dAnaFilletAlgo*(): ChFi2dAnaFilletAlgo {.cdecl, constructor,
    importcpp: "ChFi2d_AnaFilletAlgo(@)", header: "ChFi2d_AnaFilletAlgo.hxx".}
proc newChFi2dAnaFilletAlgo*(theWire: TopoDS_Wire; thePlane: PlnObj): ChFi2dAnaFilletAlgo {.
    cdecl, constructor, importcpp: "ChFi2d_AnaFilletAlgo(@)", header: "ChFi2d_AnaFilletAlgo.hxx".}
proc newChFi2dAnaFilletAlgo*(theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge;
                            thePlane: PlnObj): ChFi2dAnaFilletAlgo {.cdecl,
    constructor, importcpp: "ChFi2d_AnaFilletAlgo(@)", header: "ChFi2d_AnaFilletAlgo.hxx".}
proc init*(this: var ChFi2dAnaFilletAlgo; theWire: TopoDS_Wire; thePlane: PlnObj) {.cdecl,
    importcpp: "Init", header: "ChFi2d_AnaFilletAlgo.hxx".}
proc init*(this: var ChFi2dAnaFilletAlgo; theEdge1: TopoDS_Edge;
          theEdge2: TopoDS_Edge; thePlane: PlnObj) {.cdecl, importcpp: "Init",
    header: "ChFi2d_AnaFilletAlgo.hxx".}
proc perform*(this: var ChFi2dAnaFilletAlgo; radius: cfloat): bool {.cdecl,
    importcpp: "Perform", header: "ChFi2d_AnaFilletAlgo.hxx".}
proc result*(this: var ChFi2dAnaFilletAlgo; e1: var TopoDS_Edge; e2: var TopoDS_Edge): TopoDS_Edge {.
    cdecl, importcpp: "Result", header: "ChFi2d_AnaFilletAlgo.hxx".}