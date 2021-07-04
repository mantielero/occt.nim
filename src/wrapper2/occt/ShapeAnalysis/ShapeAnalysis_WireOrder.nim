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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HArray1OfInteger, ../TColgp/TColgp_HSequenceOfXYZ,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_XY"
when defined(Status):
  discard
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
  ShapeAnalysis_WireOrder* {.importcpp: "ShapeAnalysis_WireOrder",
                            header: "ShapeAnalysis_WireOrder.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructShapeAnalysis_WireOrder*(): ShapeAnalysis_WireOrder {.constructor,
    importcpp: "ShapeAnalysis_WireOrder(@)", header: "ShapeAnalysis_WireOrder.hxx".}
proc constructShapeAnalysis_WireOrder*(mode3d: Standard_Boolean; tol: Standard_Real): ShapeAnalysis_WireOrder {.
    constructor, importcpp: "ShapeAnalysis_WireOrder(@)",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc SetMode*(this: var ShapeAnalysis_WireOrder; mode3d: Standard_Boolean;
             tol: Standard_Real) {.importcpp: "SetMode",
                                 header: "ShapeAnalysis_WireOrder.hxx".}
proc Tolerance*(this: ShapeAnalysis_WireOrder): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "ShapeAnalysis_WireOrder.hxx".}
proc Clear*(this: var ShapeAnalysis_WireOrder) {.importcpp: "Clear",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc Add*(this: var ShapeAnalysis_WireOrder; start3d: gp_XYZ; end3d: gp_XYZ) {.
    importcpp: "Add", header: "ShapeAnalysis_WireOrder.hxx".}
proc Add*(this: var ShapeAnalysis_WireOrder; start2d: gp_XY; end2d: gp_XY) {.
    importcpp: "Add", header: "ShapeAnalysis_WireOrder.hxx".}
proc NbEdges*(this: ShapeAnalysis_WireOrder): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_WireOrder.hxx".}
proc KeepLoopsMode*(this: var ShapeAnalysis_WireOrder): var Standard_Boolean {.
    importcpp: "KeepLoopsMode", header: "ShapeAnalysis_WireOrder.hxx".}
proc Perform*(this: var ShapeAnalysis_WireOrder;
             closed: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "ShapeAnalysis_WireOrder.hxx".}
proc IsDone*(this: ShapeAnalysis_WireOrder): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "ShapeAnalysis_WireOrder.hxx".}
proc Status*(this: ShapeAnalysis_WireOrder): Standard_Integer {.noSideEffect,
    importcpp: "Status", header: "ShapeAnalysis_WireOrder.hxx".}
proc Ordered*(this: ShapeAnalysis_WireOrder; n: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Ordered", header: "ShapeAnalysis_WireOrder.hxx".}
proc XYZ*(this: ShapeAnalysis_WireOrder; num: Standard_Integer; start3d: var gp_XYZ;
         end3d: var gp_XYZ) {.noSideEffect, importcpp: "XYZ",
                           header: "ShapeAnalysis_WireOrder.hxx".}
proc XY*(this: ShapeAnalysis_WireOrder; num: Standard_Integer; start2d: var gp_XY;
        end2d: var gp_XY) {.noSideEffect, importcpp: "XY",
                         header: "ShapeAnalysis_WireOrder.hxx".}
proc Gap*(this: ShapeAnalysis_WireOrder; num: Standard_Integer = 0): Standard_Real {.
    noSideEffect, importcpp: "Gap", header: "ShapeAnalysis_WireOrder.hxx".}
proc SetChains*(this: var ShapeAnalysis_WireOrder; gap: Standard_Real) {.
    importcpp: "SetChains", header: "ShapeAnalysis_WireOrder.hxx".}
proc NbChains*(this: ShapeAnalysis_WireOrder): Standard_Integer {.noSideEffect,
    importcpp: "NbChains", header: "ShapeAnalysis_WireOrder.hxx".}
proc Chain*(this: ShapeAnalysis_WireOrder; num: Standard_Integer;
           n1: var Standard_Integer; n2: var Standard_Integer) {.noSideEffect,
    importcpp: "Chain", header: "ShapeAnalysis_WireOrder.hxx".}
proc SetCouples*(this: var ShapeAnalysis_WireOrder; gap: Standard_Real) {.
    importcpp: "SetCouples", header: "ShapeAnalysis_WireOrder.hxx".}
proc NbCouples*(this: ShapeAnalysis_WireOrder): Standard_Integer {.noSideEffect,
    importcpp: "NbCouples", header: "ShapeAnalysis_WireOrder.hxx".}
proc Couple*(this: ShapeAnalysis_WireOrder; num: Standard_Integer;
            n1: var Standard_Integer; n2: var Standard_Integer) {.noSideEffect,
    importcpp: "Couple", header: "ShapeAnalysis_WireOrder.hxx".}