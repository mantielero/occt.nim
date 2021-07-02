##  Created on: 2013-06-06
##  Created by: Vlad ROMASHKO
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! An interface class for 2D fillets.
## ! Open CASCADE provides two algorithms for 2D fillets:
## !     ChFi2d_Builder - it constructs a fillet or chamfer
## !                      for linear and circular edges of a face.
## !     ChFi2d_FilletAPI - it encapsulates two algorithms:
## !         ChFi2d_AnaFilletAlgo - analytical constructor of the fillet.
## !                                It works only for linear and circular edges,
## !                                having a common point.
## !         ChFi2d_FilletAlgo - iteration recursive method constructing
## !                             the fillet edge for any type of edges including
## !                             ellipses and b-splines.
## !                             The edges may even have no common point.
## !
## ! The algorithms ChFi2d_AnaFilletAlgo and ChFi2d_FilletAlgo may be used directly
## ! or via this ChFi2d_FilletAPI class. This class chooses an appropriate algorithm
## ! analyzing the arguments (a wire or two edges).

type
  ChFi2dFilletAPI* {.importcpp: "ChFi2d_FilletAPI", header: "ChFi2d_FilletAPI.hxx",
                    bycopy.} = object ## ! An empty constructor of the fillet algorithm.
                                   ## ! Call a method Init() to initialize the algorithm
                                   ## ! before calling of a Perform() method.
                                   ##  Decides whether the input parameters may use an analytical algorithm
                                   ##  for calculation of the fillets, or an iteration-recursive method is needed.
                                   ##  The analytical solution is applicable for linear and circular edges
                                   ##  having a common point.


proc constructChFi2dFilletAPI*(): ChFi2dFilletAPI {.constructor,
    importcpp: "ChFi2d_FilletAPI(@)", header: "ChFi2d_FilletAPI.hxx".}
proc constructChFi2dFilletAPI*(theWire: TopoDS_Wire; thePlane: GpPln): ChFi2dFilletAPI {.
    constructor, importcpp: "ChFi2d_FilletAPI(@)", header: "ChFi2d_FilletAPI.hxx".}
proc constructChFi2dFilletAPI*(theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge;
                              thePlane: GpPln): ChFi2dFilletAPI {.constructor,
    importcpp: "ChFi2d_FilletAPI(@)", header: "ChFi2d_FilletAPI.hxx".}
proc init*(this: var ChFi2dFilletAPI; theWire: TopoDS_Wire; thePlane: GpPln) {.
    importcpp: "Init", header: "ChFi2d_FilletAPI.hxx".}
proc init*(this: var ChFi2dFilletAPI; theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge;
          thePlane: GpPln) {.importcpp: "Init", header: "ChFi2d_FilletAPI.hxx".}
proc perform*(this: var ChFi2dFilletAPI; theRadius: StandardReal): StandardBoolean {.
    importcpp: "Perform", header: "ChFi2d_FilletAPI.hxx".}
proc nbResults*(this: var ChFi2dFilletAPI; thePoint: GpPnt): StandardInteger {.
    importcpp: "NbResults", header: "ChFi2d_FilletAPI.hxx".}
proc result*(this: var ChFi2dFilletAPI; thePoint: GpPnt; theEdge1: var TopoDS_Edge;
            theEdge2: var TopoDS_Edge; iSolution: StandardInteger = -1): TopoDS_Edge {.
    importcpp: "Result", header: "ChFi2d_FilletAPI.hxx".}

