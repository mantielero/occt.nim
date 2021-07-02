##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_XY"
# when defined(Status):
#   discard
## ! This class is intended to control and, if possible, redefine
## ! the order of a list of edges which define a wire
## ! Edges are not given directly, but as their bounds (start,end)
## !
## ! This allows to use this tool, either on existing wire, or on
## ! data just taken from a file (coordinates are easy to get)
## !
## ! It can work, either in 2D, or in 3D, but not miscible
## ! Warning about tolerance : according to the mode (2D/3D), it
## ! must be given as 2D or 3D (i.e. metric) tolerance, uniform
## ! on the whole list
## !
## ! Two phases : firstly add the couples (start,end)
## ! secondly perform then get the result

type
  ShapeAnalysisWireOrder* {.importcpp: "ShapeAnalysis_WireOrder",
                           header: "ShapeAnalysis_WireOrder.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor


proc constructShapeAnalysisWireOrder*(): ShapeAnalysisWireOrder {.constructor,
    importcpp: "ShapeAnalysis_WireOrder(@)", header: "ShapeAnalysis_WireOrder.hxx".}
proc constructShapeAnalysisWireOrder*(mode3d: StandardBoolean; tol: StandardReal): ShapeAnalysisWireOrder {.
    constructor, importcpp: "ShapeAnalysis_WireOrder(@)",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc setMode*(this: var ShapeAnalysisWireOrder; mode3d: StandardBoolean;
             tol: StandardReal) {.importcpp: "SetMode",
                                header: "ShapeAnalysis_WireOrder.hxx".}
proc tolerance*(this: ShapeAnalysisWireOrder): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "ShapeAnalysis_WireOrder.hxx".}
proc clear*(this: var ShapeAnalysisWireOrder) {.importcpp: "Clear",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc add*(this: var ShapeAnalysisWireOrder; start3d: GpXYZ; end3d: GpXYZ) {.
    importcpp: "Add", header: "ShapeAnalysis_WireOrder.hxx".}
proc add*(this: var ShapeAnalysisWireOrder; start2d: GpXY; end2d: GpXY) {.
    importcpp: "Add", header: "ShapeAnalysis_WireOrder.hxx".}
proc nbEdges*(this: ShapeAnalysisWireOrder): StandardInteger {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_WireOrder.hxx".}
proc keepLoopsMode*(this: var ShapeAnalysisWireOrder): var StandardBoolean {.
    importcpp: "KeepLoopsMode", header: "ShapeAnalysis_WireOrder.hxx".}
proc perform*(this: var ShapeAnalysisWireOrder;
             closed: StandardBoolean = standardTrue) {.importcpp: "Perform",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc isDone*(this: ShapeAnalysisWireOrder): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "ShapeAnalysis_WireOrder.hxx".}
proc status*(this: ShapeAnalysisWireOrder): StandardInteger {.noSideEffect,
    importcpp: "Status", header: "ShapeAnalysis_WireOrder.hxx".}
proc ordered*(this: ShapeAnalysisWireOrder; n: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Ordered", header: "ShapeAnalysis_WireOrder.hxx".}
proc xyz*(this: ShapeAnalysisWireOrder; num: StandardInteger; start3d: var GpXYZ;
         end3d: var GpXYZ) {.noSideEffect, importcpp: "XYZ",
                          header: "ShapeAnalysis_WireOrder.hxx".}
proc xy*(this: ShapeAnalysisWireOrder; num: StandardInteger; start2d: var GpXY;
        end2d: var GpXY) {.noSideEffect, importcpp: "XY",
                        header: "ShapeAnalysis_WireOrder.hxx".}
proc gap*(this: ShapeAnalysisWireOrder; num: StandardInteger = 0): StandardReal {.
    noSideEffect, importcpp: "Gap", header: "ShapeAnalysis_WireOrder.hxx".}
proc setChains*(this: var ShapeAnalysisWireOrder; gap: StandardReal) {.
    importcpp: "SetChains", header: "ShapeAnalysis_WireOrder.hxx".}
proc nbChains*(this: ShapeAnalysisWireOrder): StandardInteger {.noSideEffect,
    importcpp: "NbChains", header: "ShapeAnalysis_WireOrder.hxx".}
proc chain*(this: ShapeAnalysisWireOrder; num: StandardInteger;
           n1: var StandardInteger; n2: var StandardInteger) {.noSideEffect,
    importcpp: "Chain", header: "ShapeAnalysis_WireOrder.hxx".}
proc setCouples*(this: var ShapeAnalysisWireOrder; gap: StandardReal) {.
    importcpp: "SetCouples", header: "ShapeAnalysis_WireOrder.hxx".}
proc nbCouples*(this: ShapeAnalysisWireOrder): StandardInteger {.noSideEffect,
    importcpp: "NbCouples", header: "ShapeAnalysis_WireOrder.hxx".}
proc couple*(this: ShapeAnalysisWireOrder; num: StandardInteger;
            n1: var StandardInteger; n2: var StandardInteger) {.noSideEffect,
    importcpp: "Couple", header: "ShapeAnalysis_WireOrder.hxx".}

