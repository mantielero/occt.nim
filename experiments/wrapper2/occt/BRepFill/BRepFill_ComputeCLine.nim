##  Created on: 1994-03-03
##  Created by: Joelle CHAUVET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of AppParCurves_MultiCurve"
type
  BRepFillComputeCLine* {.importcpp: "BRepFill_ComputeCLine",
                         header: "BRepFill_ComputeCLine.hxx", bycopy.} = object ## ! The
                                                                           ## MultiLine
                                                                           ## <Line> will be
                                                                           ## approximated until
                                                                           ## tolerances
                                                                           ## ! will be
                                                                           ## reached.
                                                                           ## ! The
                                                                           ## approximation will be done from
                                                                           ## degreemin to
                                                                           ## degreemax
                                                                           ## ! with a
                                                                           ## cutting if the
                                                                           ## corresponding
                                                                           ## boolean is True.
                                                                           ## ! is
                                                                           ## internally used by the
                                                                           ## algorithms.


proc constructBRepFillComputeCLine*(line: BRepFillMultiLine; degreemin: cint = 3;
                                   degreemax: cint = 8;
                                   tolerance3d: cfloat = 1.0e-5;
                                   tolerance2d: cfloat = 1.0e-5;
                                   cutting: bool = false; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): BRepFillComputeCLine {.
    constructor, importcpp: "BRepFill_ComputeCLine(@)",
    header: "BRepFill_ComputeCLine.hxx".}
proc constructBRepFillComputeCLine*(degreemin: cint = 3; degreemax: cint = 8;
                                   tolerance3d: cfloat = 1.0e-05;
                                   tolerance2d: cfloat = 1.0e-05;
                                   cutting: bool = false; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): BRepFillComputeCLine {.
    constructor, importcpp: "BRepFill_ComputeCLine(@)",
    header: "BRepFill_ComputeCLine.hxx".}
proc perform*(this: var BRepFillComputeCLine; line: BRepFillMultiLine) {.
    importcpp: "Perform", header: "BRepFill_ComputeCLine.hxx".}
proc setDegrees*(this: var BRepFillComputeCLine; degreemin: cint; degreemax: cint) {.
    importcpp: "SetDegrees", header: "BRepFill_ComputeCLine.hxx".}
proc setTolerances*(this: var BRepFillComputeCLine; tolerance3d: cfloat;
                   tolerance2d: cfloat) {.importcpp: "SetTolerances",
                                        header: "BRepFill_ComputeCLine.hxx".}
proc setConstraints*(this: var BRepFillComputeCLine; firstC: AppParCurvesConstraint;
                    lastC: AppParCurvesConstraint) {.importcpp: "SetConstraints",
    header: "BRepFill_ComputeCLine.hxx".}
proc setMaxSegments*(this: var BRepFillComputeCLine; theMaxSegments: cint) {.
    importcpp: "SetMaxSegments", header: "BRepFill_ComputeCLine.hxx".}
proc setInvOrder*(this: var BRepFillComputeCLine; theInvOrder: bool) {.
    importcpp: "SetInvOrder", header: "BRepFill_ComputeCLine.hxx".}
proc setHangChecking*(this: var BRepFillComputeCLine; theHangChecking: bool) {.
    importcpp: "SetHangChecking", header: "BRepFill_ComputeCLine.hxx".}
proc isAllApproximated*(this: BRepFillComputeCLine): bool {.noSideEffect,
    importcpp: "IsAllApproximated", header: "BRepFill_ComputeCLine.hxx".}
proc isToleranceReached*(this: BRepFillComputeCLine): bool {.noSideEffect,
    importcpp: "IsToleranceReached", header: "BRepFill_ComputeCLine.hxx".}
proc error*(this: BRepFillComputeCLine; index: cint; tol3d: var cfloat;
           tol2d: var cfloat) {.noSideEffect, importcpp: "Error",
                             header: "BRepFill_ComputeCLine.hxx".}
proc nbMultiCurves*(this: BRepFillComputeCLine): cint {.noSideEffect,
    importcpp: "NbMultiCurves", header: "BRepFill_ComputeCLine.hxx".}
proc value*(this: BRepFillComputeCLine; index: cint = 1): AppParCurvesMultiCurve {.
    noSideEffect, importcpp: "Value", header: "BRepFill_ComputeCLine.hxx".}
proc parameters*(this: BRepFillComputeCLine; index: cint; firstp: var cfloat;
                lastp: var cfloat) {.noSideEffect, importcpp: "Parameters",
                                  header: "BRepFill_ComputeCLine.hxx".}

























