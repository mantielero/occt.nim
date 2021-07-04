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
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Wire, ../gp/gp_Pnt,
  ../Geom2d/Geom2d_Curve, ../Geom/Geom_Plane, ../TColStd/TColStd_ListOfReal,
  ../TColStd/TColStd_SequenceOfReal, ../TColStd/TColStd_SequenceOfBoolean,
  ../TColStd/TColStd_SequenceOfInteger

discard "forward decl of FilletPoint"
type
  ChFi2d_FilletAlgo* {.importcpp: "ChFi2d_FilletAlgo",
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


proc constructChFi2d_FilletAlgo*(): ChFi2d_FilletAlgo {.constructor,
    importcpp: "ChFi2d_FilletAlgo(@)", header: "ChFi2d_FilletAlgo.hxx".}
proc constructChFi2d_FilletAlgo*(theWire: TopoDS_Wire; thePlane: gp_Pln): ChFi2d_FilletAlgo {.
    constructor, importcpp: "ChFi2d_FilletAlgo(@)", header: "ChFi2d_FilletAlgo.hxx".}
proc constructChFi2d_FilletAlgo*(theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge;
                                thePlane: gp_Pln): ChFi2d_FilletAlgo {.constructor,
    importcpp: "ChFi2d_FilletAlgo(@)", header: "ChFi2d_FilletAlgo.hxx".}
proc Init*(this: var ChFi2d_FilletAlgo; theWire: TopoDS_Wire; thePlane: gp_Pln) {.
    importcpp: "Init", header: "ChFi2d_FilletAlgo.hxx".}
proc Init*(this: var ChFi2d_FilletAlgo; theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge;
          thePlane: gp_Pln) {.importcpp: "Init", header: "ChFi2d_FilletAlgo.hxx".}
proc Perform*(this: var ChFi2d_FilletAlgo; theRadius: Standard_Real): Standard_Boolean {.
    importcpp: "Perform", header: "ChFi2d_FilletAlgo.hxx".}
proc NbResults*(this: var ChFi2d_FilletAlgo; thePoint: gp_Pnt): Standard_Integer {.
    importcpp: "NbResults", header: "ChFi2d_FilletAlgo.hxx".}
proc Result*(this: var ChFi2d_FilletAlgo; thePoint: gp_Pnt; theEdge1: var TopoDS_Edge;
            theEdge2: var TopoDS_Edge; iSolution: Standard_Integer = -1): TopoDS_Edge {.
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


proc constructFilletPoint*(theParam: Standard_Real): FilletPoint {.constructor,
    importcpp: "FilletPoint(@)", header: "ChFi2d_FilletAlgo.hxx".}
proc setParam*(this: var FilletPoint; theParam: Standard_Real) {.
    importcpp: "setParam", header: "ChFi2d_FilletAlgo.hxx".}
proc getParam*(this: FilletPoint): Standard_Real {.noSideEffect,
    importcpp: "getParam", header: "ChFi2d_FilletAlgo.hxx".}
proc getNBValues*(this: var FilletPoint): Standard_Integer {.
    importcpp: "getNBValues", header: "ChFi2d_FilletAlgo.hxx".}
proc getValue*(this: var FilletPoint; theIndex: cint): Standard_Real {.
    importcpp: "getValue", header: "ChFi2d_FilletAlgo.hxx".}
proc getDiff*(this: var FilletPoint; theIndex: cint): Standard_Real {.
    importcpp: "getDiff", header: "ChFi2d_FilletAlgo.hxx".}
proc isValid*(this: var FilletPoint; theIndex: cint): Standard_Boolean {.
    importcpp: "isValid", header: "ChFi2d_FilletAlgo.hxx".}
proc getNear*(this: var FilletPoint; theIndex: cint): cint {.importcpp: "getNear",
    header: "ChFi2d_FilletAlgo.hxx".}
proc setParam2*(this: var FilletPoint; theParam2: Standard_Real) {.
    importcpp: "setParam2", header: "ChFi2d_FilletAlgo.hxx".}
proc getParam2*(this: var FilletPoint): Standard_Real {.importcpp: "getParam2",
    header: "ChFi2d_FilletAlgo.hxx".}
proc setCenter*(this: var FilletPoint; thePoint: gp_Pnt2d) {.importcpp: "setCenter",
    header: "ChFi2d_FilletAlgo.hxx".}
proc getCenter*(this: var FilletPoint): gp_Pnt2d {.importcpp: "getCenter",
    header: "ChFi2d_FilletAlgo.hxx".}
proc appendValue*(this: var FilletPoint; theValue: Standard_Real;
                 theValid: Standard_Boolean) {.importcpp: "appendValue",
    header: "ChFi2d_FilletAlgo.hxx".}
proc calculateDiff*(this: var FilletPoint; a2: ptr FilletPoint): Standard_Boolean {.
    importcpp: "calculateDiff", header: "ChFi2d_FilletAlgo.hxx".}
proc FilterPoints*(this: var FilletPoint; a2: ptr FilletPoint) {.
    importcpp: "FilterPoints", header: "ChFi2d_FilletAlgo.hxx".}
proc Copy*(this: var FilletPoint): ptr FilletPoint {.importcpp: "Copy",
    header: "ChFi2d_FilletAlgo.hxx".}
proc hasSolution*(this: var FilletPoint; theRadius: Standard_Real): Standard_Integer {.
    importcpp: "hasSolution", header: "ChFi2d_FilletAlgo.hxx".}
proc LowerValue*(this: var FilletPoint): Standard_Real {.importcpp: "LowerValue",
    header: "ChFi2d_FilletAlgo.hxx".}
proc remove*(this: var FilletPoint; theIndex: Standard_Integer) {.importcpp: "remove",
    header: "ChFi2d_FilletAlgo.hxx".}