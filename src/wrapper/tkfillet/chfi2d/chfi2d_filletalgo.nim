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


proc newChFi2dFilletAlgo*(): ChFi2dFilletAlgo {.cdecl, constructor,
    importcpp: "ChFi2d_FilletAlgo(@)", dynlib: tkfillet.}
proc newChFi2dFilletAlgo*(theWire: TopoDS_Wire; thePlane: Pln): ChFi2dFilletAlgo {.
    cdecl, constructor, importcpp: "ChFi2d_FilletAlgo(@)", dynlib: tkfillet.}
proc newChFi2dFilletAlgo*(theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge; thePlane: Pln): ChFi2dFilletAlgo {.
    cdecl, constructor, importcpp: "ChFi2d_FilletAlgo(@)", dynlib: tkfillet.}
proc init*(this: var ChFi2dFilletAlgo; theWire: TopoDS_Wire; thePlane: Pln) {.cdecl,
    importcpp: "Init", dynlib: tkfillet.}
proc init*(this: var ChFi2dFilletAlgo; theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge;
          thePlane: Pln) {.cdecl, importcpp: "Init", dynlib: tkfillet.}
proc perform*(this: var ChFi2dFilletAlgo; theRadius: cfloat): bool {.cdecl,
    importcpp: "Perform", dynlib: tkfillet.}
proc nbResults*(this: var ChFi2dFilletAlgo; thePoint: Pnt): cint {.cdecl,
    importcpp: "NbResults", dynlib: tkfillet.}
proc result*(this: var ChFi2dFilletAlgo; thePoint: Pnt; theEdge1: var TopoDS_Edge;
            theEdge2: var TopoDS_Edge; iSolution: cint = -1): TopoDS_Edge {.cdecl,
    importcpp: "Result", dynlib: tkfillet.}
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


proc newFilletPoint*(theParam: cfloat): FilletPoint {.cdecl, constructor,
    importcpp: "FilletPoint(@)", dynlib: tkfillet.}
proc setParam*(this: var FilletPoint; theParam: cfloat) {.cdecl, importcpp: "setParam",
    dynlib: tkfillet.}
proc getParam*(this: FilletPoint): cfloat {.noSideEffect, cdecl,
                                        importcpp: "getParam", dynlib: tkfillet.}
proc getNBValues*(this: var FilletPoint): cint {.cdecl, importcpp: "getNBValues",
    dynlib: tkfillet.}
proc getValue*(this: var FilletPoint; theIndex: cint): cfloat {.cdecl,
    importcpp: "getValue", dynlib: tkfillet.}
proc getDiff*(this: var FilletPoint; theIndex: cint): cfloat {.cdecl,
    importcpp: "getDiff", dynlib: tkfillet.}
proc isValid*(this: var FilletPoint; theIndex: cint): bool {.cdecl,
    importcpp: "isValid", dynlib: tkfillet.}
proc getNear*(this: var FilletPoint; theIndex: cint): cint {.cdecl,
    importcpp: "getNear", dynlib: tkfillet.}
proc setParam2*(this: var FilletPoint; theParam2: cfloat) {.cdecl,
    importcpp: "setParam2", dynlib: tkfillet.}
proc getParam2*(this: var FilletPoint): cfloat {.cdecl, importcpp: "getParam2",
    dynlib: tkfillet.}
proc setCenter*(this: var FilletPoint; thePoint: Pnt2d) {.cdecl,
    importcpp: "setCenter", dynlib: tkfillet.}
proc getCenter*(this: var FilletPoint): Pnt2d {.cdecl, importcpp: "getCenter",
    dynlib: tkfillet.}
proc appendValue*(this: var FilletPoint; theValue: cfloat; theValid: bool) {.cdecl,
    importcpp: "appendValue", dynlib: tkfillet.}
proc calculateDiff*(this: var FilletPoint; a2: ptr FilletPoint): bool {.cdecl,
    importcpp: "calculateDiff", dynlib: tkfillet.}
proc filterPoints*(this: var FilletPoint; a2: ptr FilletPoint) {.cdecl,
    importcpp: "FilterPoints", dynlib: tkfillet.}
proc copy*(this: var FilletPoint): ptr FilletPoint {.cdecl, importcpp: "Copy",
    dynlib: tkfillet.}
proc hasSolution*(this: var FilletPoint; theRadius: cfloat): cint {.cdecl,
    importcpp: "hasSolution", dynlib: tkfillet.}
proc lowerValue*(this: var FilletPoint): cfloat {.cdecl, importcpp: "LowerValue",
    dynlib: tkfillet.}
proc remove*(this: var FilletPoint; theIndex: cint) {.cdecl, importcpp: "remove",
    dynlib: tkfillet.}