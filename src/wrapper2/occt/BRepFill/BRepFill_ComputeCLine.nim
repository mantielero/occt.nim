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


proc constructBRepFillComputeCLine*(line: BRepFillMultiLine;
                                   degreemin: StandardInteger = 3;
                                   degreemax: StandardInteger = 8;
                                   tolerance3d: StandardReal = 1.0e-5;
                                   tolerance2d: StandardReal = 1.0e-5;
                                   cutting: StandardBoolean = standardFalse; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): BRepFillComputeCLine {.
    constructor, importcpp: "BRepFill_ComputeCLine(@)",
    header: "BRepFill_ComputeCLine.hxx".}
proc constructBRepFillComputeCLine*(degreemin: StandardInteger = 3;
                                   degreemax: StandardInteger = 8;
                                   tolerance3d: StandardReal = 1.0e-05;
                                   tolerance2d: StandardReal = 1.0e-05;
                                   cutting: StandardBoolean = standardFalse; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): BRepFillComputeCLine {.
    constructor, importcpp: "BRepFill_ComputeCLine(@)",
    header: "BRepFill_ComputeCLine.hxx".}
proc perform*(this: var BRepFillComputeCLine; line: BRepFillMultiLine) {.
    importcpp: "Perform", header: "BRepFill_ComputeCLine.hxx".}
proc setDegrees*(this: var BRepFillComputeCLine; degreemin: StandardInteger;
                degreemax: StandardInteger) {.importcpp: "SetDegrees",
    header: "BRepFill_ComputeCLine.hxx".}
proc setTolerances*(this: var BRepFillComputeCLine; tolerance3d: StandardReal;
                   tolerance2d: StandardReal) {.importcpp: "SetTolerances",
    header: "BRepFill_ComputeCLine.hxx".}
proc setConstraints*(this: var BRepFillComputeCLine; firstC: AppParCurvesConstraint;
                    lastC: AppParCurvesConstraint) {.importcpp: "SetConstraints",
    header: "BRepFill_ComputeCLine.hxx".}
proc setMaxSegments*(this: var BRepFillComputeCLine; theMaxSegments: StandardInteger) {.
    importcpp: "SetMaxSegments", header: "BRepFill_ComputeCLine.hxx".}
proc setInvOrder*(this: var BRepFillComputeCLine; theInvOrder: StandardBoolean) {.
    importcpp: "SetInvOrder", header: "BRepFill_ComputeCLine.hxx".}
proc setHangChecking*(this: var BRepFillComputeCLine;
                     theHangChecking: StandardBoolean) {.
    importcpp: "SetHangChecking", header: "BRepFill_ComputeCLine.hxx".}
proc isAllApproximated*(this: BRepFillComputeCLine): StandardBoolean {.noSideEffect,
    importcpp: "IsAllApproximated", header: "BRepFill_ComputeCLine.hxx".}
proc isToleranceReached*(this: BRepFillComputeCLine): StandardBoolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "BRepFill_ComputeCLine.hxx".}
proc error*(this: BRepFillComputeCLine; index: StandardInteger;
           tol3d: var StandardReal; tol2d: var StandardReal) {.noSideEffect,
    importcpp: "Error", header: "BRepFill_ComputeCLine.hxx".}
proc nbMultiCurves*(this: BRepFillComputeCLine): StandardInteger {.noSideEffect,
    importcpp: "NbMultiCurves", header: "BRepFill_ComputeCLine.hxx".}
proc value*(this: BRepFillComputeCLine; index: StandardInteger = 1): AppParCurvesMultiCurve {.
    noSideEffect, importcpp: "Value", header: "BRepFill_ComputeCLine.hxx".}
proc parameters*(this: BRepFillComputeCLine; index: StandardInteger;
                firstp: var StandardReal; lastp: var StandardReal) {.noSideEffect,
    importcpp: "Parameters", header: "BRepFill_ComputeCLine.hxx".}

