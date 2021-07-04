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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_SequenceOfMultiCurve,
  ../TColStd/TColStd_SequenceOfReal, ../AppParCurves/AppParCurves_MultiCurve,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../AppParCurves/AppParCurves_Constraint,
  BRepFill_MultiLine

discard "forward decl of AppParCurves_MultiCurve"
type
  BRepFill_ComputeCLine* {.importcpp: "BRepFill_ComputeCLine",
                          header: "BRepFill_ComputeCLine.hxx", bycopy.} = object ## ! The
                                                                            ## MultiLine
                                                                            ## <Line> will be
                                                                            ## approximated
                                                                            ## until
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
                                                                            ## boolean is
                                                                            ## True.
                                                                            ## ! is
                                                                            ## internally used by the
                                                                            ## algorithms.


proc constructBRepFill_ComputeCLine*(Line: BRepFill_MultiLine;
                                    degreemin: Standard_Integer = 3;
                                    degreemax: Standard_Integer = 8;
                                    Tolerance3d: Standard_Real = 1.0e-5;
                                    Tolerance2d: Standard_Real = 1.0e-5;
                                    cutting: Standard_Boolean = Standard_False;
    FirstC: AppParCurves_Constraint = AppParCurves_TangencyPoint; LastC: AppParCurves_Constraint = AppParCurves_TangencyPoint): BRepFill_ComputeCLine {.
    constructor, importcpp: "BRepFill_ComputeCLine(@)",
    header: "BRepFill_ComputeCLine.hxx".}
proc constructBRepFill_ComputeCLine*(degreemin: Standard_Integer = 3;
                                    degreemax: Standard_Integer = 8;
                                    Tolerance3d: Standard_Real = 1.0e-05;
                                    Tolerance2d: Standard_Real = 1.0e-05;
                                    cutting: Standard_Boolean = Standard_False;
    FirstC: AppParCurves_Constraint = AppParCurves_TangencyPoint; LastC: AppParCurves_Constraint = AppParCurves_TangencyPoint): BRepFill_ComputeCLine {.
    constructor, importcpp: "BRepFill_ComputeCLine(@)",
    header: "BRepFill_ComputeCLine.hxx".}
proc Perform*(this: var BRepFill_ComputeCLine; Line: BRepFill_MultiLine) {.
    importcpp: "Perform", header: "BRepFill_ComputeCLine.hxx".}
proc SetDegrees*(this: var BRepFill_ComputeCLine; degreemin: Standard_Integer;
                degreemax: Standard_Integer) {.importcpp: "SetDegrees",
    header: "BRepFill_ComputeCLine.hxx".}
proc SetTolerances*(this: var BRepFill_ComputeCLine; Tolerance3d: Standard_Real;
                   Tolerance2d: Standard_Real) {.importcpp: "SetTolerances",
    header: "BRepFill_ComputeCLine.hxx".}
proc SetConstraints*(this: var BRepFill_ComputeCLine;
                    FirstC: AppParCurves_Constraint;
                    LastC: AppParCurves_Constraint) {.importcpp: "SetConstraints",
    header: "BRepFill_ComputeCLine.hxx".}
proc SetMaxSegments*(this: var BRepFill_ComputeCLine;
                    theMaxSegments: Standard_Integer) {.
    importcpp: "SetMaxSegments", header: "BRepFill_ComputeCLine.hxx".}
proc SetInvOrder*(this: var BRepFill_ComputeCLine; theInvOrder: Standard_Boolean) {.
    importcpp: "SetInvOrder", header: "BRepFill_ComputeCLine.hxx".}
proc SetHangChecking*(this: var BRepFill_ComputeCLine;
                     theHangChecking: Standard_Boolean) {.
    importcpp: "SetHangChecking", header: "BRepFill_ComputeCLine.hxx".}
proc IsAllApproximated*(this: BRepFill_ComputeCLine): Standard_Boolean {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "BRepFill_ComputeCLine.hxx".}
proc IsToleranceReached*(this: BRepFill_ComputeCLine): Standard_Boolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "BRepFill_ComputeCLine.hxx".}
proc Error*(this: BRepFill_ComputeCLine; Index: Standard_Integer;
           tol3d: var Standard_Real; tol2d: var Standard_Real) {.noSideEffect,
    importcpp: "Error", header: "BRepFill_ComputeCLine.hxx".}
proc NbMultiCurves*(this: BRepFill_ComputeCLine): Standard_Integer {.noSideEffect,
    importcpp: "NbMultiCurves", header: "BRepFill_ComputeCLine.hxx".}
proc Value*(this: BRepFill_ComputeCLine; Index: Standard_Integer = 1): AppParCurves_MultiCurve {.
    noSideEffect, importcpp: "Value", header: "BRepFill_ComputeCLine.hxx".}
proc Parameters*(this: BRepFill_ComputeCLine; Index: Standard_Integer;
                firstp: var Standard_Real; lastp: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "BRepFill_ComputeCLine.hxx".}