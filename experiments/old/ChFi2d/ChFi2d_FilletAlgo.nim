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

discard "forward decl of FilletPoint"
type
  ChFi2dFilletAlgo* {.importcpp: "ChFi2d_FilletAlgo",
                     header: "ChFi2d_FilletAlgo.hxx", bycopy.} = object ## ! An empty constructor of the fillet algorithm.
                                                                   ## ! Call a method Init() to initialize the algorithm
                                                                   ## ! before calling of a Perform() method.
                                                                   ## ! Computes the value the function in the current point.
                                                                   ## ! <theLimit> is end parameter of the segment
    ## ! Plane where fillet arc must be created.
    ## ! Underlying curves of the initial edges
    ## ! Start and end parameters of curves of initial edges.
    ## ! List of params where roots were found.
    ## ! sequence of 0 or 1: position of the fillet relatively to the first curve
    ## ! position of the fillet relatively to the first curve
    ## ! are initial edges where exchanged in the beginning: to make first edge
    ## ! more simple and minimize number of iterations
    ## ! Number to avoid infinity recursion: indicates how deep the recursion is performed.


proc constructChFi2dFilletAlgo*(): ChFi2dFilletAlgo {.constructor,
    importcpp: "ChFi2d_FilletAlgo(@)", header: "ChFi2d_FilletAlgo.hxx".}
proc constructChFi2dFilletAlgo*(theWire: TopoDS_Wire; thePlane: Pln): ChFi2dFilletAlgo {.
    constructor, importcpp: "ChFi2d_FilletAlgo(@)", header: "ChFi2d_FilletAlgo.hxx".}
proc constructChFi2dFilletAlgo*(theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge;
                               thePlane: Pln): ChFi2dFilletAlgo {.constructor,
    importcpp: "ChFi2d_FilletAlgo(@)", header: "ChFi2d_FilletAlgo.hxx".}
proc init*(this: var ChFi2dFilletAlgo; theWire: TopoDS_Wire; thePlane: Pln) {.
    importcpp: "Init", header: "ChFi2d_FilletAlgo.hxx".}
proc init*(this: var ChFi2dFilletAlgo; theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge;
          thePlane: Pln) {.importcpp: "Init", header: "ChFi2d_FilletAlgo.hxx".}
proc perform*(this: var ChFi2dFilletAlgo; theRadius: StandardReal): StandardBoolean {.
    importcpp: "Perform", header: "ChFi2d_FilletAlgo.hxx".}
proc nbResults*(this: var ChFi2dFilletAlgo; thePoint: Pnt): int {.
    importcpp: "NbResults", header: "ChFi2d_FilletAlgo.hxx".}
proc result*(this: var ChFi2dFilletAlgo; thePoint: Pnt; theEdge1: var TopoDS_Edge;
            theEdge2: var TopoDS_Edge; iSolution: int = -1): TopoDS_Edge {.
    importcpp: "Result", header: "ChFi2d_FilletAlgo.hxx".}
## ! Private class. Corresponds to the point on the first curve, computed
## ! fillet function and derivative on it.

type
  FilletPoint* {.importcpp: "FilletPoint", header: "ChFi2d_FilletAlgo.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## point
                                                                                      ## on
                                                                                      ## a
                                                                                      ## first
                                                                                      ## curve
                                                                                      ## by
                                                                                      ## parameter
                                                                                      ## on
                                                                                      ## this
                                                                                      ## curve.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Parameter
                                                                                      ## on
                                                                                      ## the
                                                                                      ## first
                                                                                      ## curve
                                                                                      ## (start
                                                                                      ## fillet
                                                                                      ## point).
    ## ! Parameter on the second curve (end fillet point).
    ## ! Values and derivative values of the fillet function.
    ## ! May be several if there are many projections on the second curve.
    ## ! Center of the fillet arc.
    ## ! Flags for storage the validity of solutions. Indexes corresponds to indexes
    ## ! in sequences myV, myD.


proc constructFilletPoint*(theParam: StandardReal): FilletPoint {.constructor,
    importcpp: "FilletPoint(@)", header: "ChFi2d_FilletAlgo.hxx".}
proc setParam*(this: var FilletPoint; theParam: StandardReal) {.importcpp: "setParam",
    header: "ChFi2d_FilletAlgo.hxx".}
proc getParam*(this: FilletPoint): StandardReal {.noSideEffect,
    importcpp: "getParam", header: "ChFi2d_FilletAlgo.hxx".}
proc getNBValues*(this: var FilletPoint): int {.importcpp: "getNBValues",
    header: "ChFi2d_FilletAlgo.hxx".}
proc getValue*(this: var FilletPoint; theIndex: cint): StandardReal {.
    importcpp: "getValue", header: "ChFi2d_FilletAlgo.hxx".}
proc getDiff*(this: var FilletPoint; theIndex: cint): StandardReal {.
    importcpp: "getDiff", header: "ChFi2d_FilletAlgo.hxx".}
proc isValid*(this: var FilletPoint; theIndex: cint): StandardBoolean {.
    importcpp: "isValid", header: "ChFi2d_FilletAlgo.hxx".}
proc getNear*(this: var FilletPoint; theIndex: cint): cint {.importcpp: "getNear",
    header: "ChFi2d_FilletAlgo.hxx".}
proc setParam2*(this: var FilletPoint; theParam2: StandardReal) {.
    importcpp: "setParam2", header: "ChFi2d_FilletAlgo.hxx".}
proc getParam2*(this: var FilletPoint): StandardReal {.importcpp: "getParam2",
    header: "ChFi2d_FilletAlgo.hxx".}
proc setCenter*(this: var FilletPoint; thePoint: Pnt2d) {.importcpp: "setCenter",
    header: "ChFi2d_FilletAlgo.hxx".}
proc getCenter*(this: var FilletPoint): Pnt2d {.importcpp: "getCenter",
    header: "ChFi2d_FilletAlgo.hxx".}
proc appendValue*(this: var FilletPoint; theValue: StandardReal;
                 theValid: StandardBoolean) {.importcpp: "appendValue",
    header: "ChFi2d_FilletAlgo.hxx".}
proc calculateDiff*(this: var FilletPoint; a2: ptr FilletPoint): StandardBoolean {.
    importcpp: "calculateDiff", header: "ChFi2d_FilletAlgo.hxx".}
proc filterPoints*(this: var FilletPoint; a2: ptr FilletPoint) {.
    importcpp: "FilterPoints", header: "ChFi2d_FilletAlgo.hxx".}
proc copy*(this: var FilletPoint): ptr FilletPoint {.importcpp: "Copy",
    header: "ChFi2d_FilletAlgo.hxx".}
proc hasSolution*(this: var FilletPoint; theRadius: StandardReal): int {.
    importcpp: "hasSolution", header: "ChFi2d_FilletAlgo.hxx".}
proc lowerValue*(this: var FilletPoint): StandardReal {.importcpp: "LowerValue",
    header: "ChFi2d_FilletAlgo.hxx".}
proc remove*(this: var FilletPoint; theIndex: int) {.importcpp: "remove",
    header: "ChFi2d_FilletAlgo.hxx".}