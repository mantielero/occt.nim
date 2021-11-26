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
proc constructShapeAnalysisWireOrder*(mode3d: bool; tol: cfloat): ShapeAnalysisWireOrder {.
    constructor, importcpp: "ShapeAnalysis_WireOrder(@)",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc setMode*(this: var ShapeAnalysisWireOrder; mode3d: bool; tol: cfloat) {.
    importcpp: "SetMode", header: "ShapeAnalysis_WireOrder.hxx".}
proc tolerance*(this: ShapeAnalysisWireOrder): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "ShapeAnalysis_WireOrder.hxx".}
proc clear*(this: var ShapeAnalysisWireOrder) {.importcpp: "Clear",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc add*(this: var ShapeAnalysisWireOrder; start3d: Xyz; end3d: Xyz) {.
    importcpp: "Add", header: "ShapeAnalysis_WireOrder.hxx".}
proc add*(this: var ShapeAnalysisWireOrder; start2d: Xy; end2d: Xy) {.importcpp: "Add",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc nbEdges*(this: ShapeAnalysisWireOrder): cint {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_WireOrder.hxx".}
proc keepLoopsMode*(this: var ShapeAnalysisWireOrder): var bool {.
    importcpp: "KeepLoopsMode", header: "ShapeAnalysis_WireOrder.hxx".}
proc perform*(this: var ShapeAnalysisWireOrder; closed: bool = true) {.
    importcpp: "Perform", header: "ShapeAnalysis_WireOrder.hxx".}
proc isDone*(this: ShapeAnalysisWireOrder): bool {.noSideEffect, importcpp: "IsDone",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc status*(this: ShapeAnalysisWireOrder): cint {.noSideEffect, importcpp: "Status",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc ordered*(this: ShapeAnalysisWireOrder; n: cint): cint {.noSideEffect,
    importcpp: "Ordered", header: "ShapeAnalysis_WireOrder.hxx".}
proc xyz*(this: ShapeAnalysisWireOrder; num: cint; start3d: var Xyz; end3d: var Xyz) {.
    noSideEffect, importcpp: "XYZ", header: "ShapeAnalysis_WireOrder.hxx".}
proc xy*(this: ShapeAnalysisWireOrder; num: cint; start2d: var Xy; end2d: var Xy) {.
    noSideEffect, importcpp: "XY", header: "ShapeAnalysis_WireOrder.hxx".}
proc gap*(this: ShapeAnalysisWireOrder; num: cint = 0): cfloat {.noSideEffect,
    importcpp: "Gap", header: "ShapeAnalysis_WireOrder.hxx".}
proc setChains*(this: var ShapeAnalysisWireOrder; gap: cfloat) {.
    importcpp: "SetChains", header: "ShapeAnalysis_WireOrder.hxx".}
proc nbChains*(this: ShapeAnalysisWireOrder): cint {.noSideEffect,
    importcpp: "NbChains", header: "ShapeAnalysis_WireOrder.hxx".}
proc chain*(this: ShapeAnalysisWireOrder; num: cint; n1: var cint; n2: var cint) {.
    noSideEffect, importcpp: "Chain", header: "ShapeAnalysis_WireOrder.hxx".}
proc setCouples*(this: var ShapeAnalysisWireOrder; gap: cfloat) {.
    importcpp: "SetCouples", header: "ShapeAnalysis_WireOrder.hxx".}
proc nbCouples*(this: ShapeAnalysisWireOrder): cint {.noSideEffect,
    importcpp: "NbCouples", header: "ShapeAnalysis_WireOrder.hxx".}
proc couple*(this: ShapeAnalysisWireOrder; num: cint; n1: var cint; n2: var cint) {.
    noSideEffect, importcpp: "Couple", header: "ShapeAnalysis_WireOrder.hxx".}

























