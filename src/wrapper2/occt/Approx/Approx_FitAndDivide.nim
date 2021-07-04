##  Created on: 1993-01-26
##  Created by: Laurent PAINNOT
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../AppCont/AppCont_Function

discard "forward decl of AppParCurves_MultiCurve"
type
  Approx_FitAndDivide* {.importcpp: "Approx_FitAndDivide",
                        header: "Approx_FitAndDivide.hxx", bycopy.} = object ## ! The
                                                                        ## MultiLine <Line> will be
                                                                        ## approximated until
                                                                        ## tolerances
                                                                        ## ! will be reached.
                                                                        ## ! The
                                                                        ## approximation will be done from
                                                                        ## degreemin to
                                                                        ## degreemax
                                                                        ## ! with a cutting if the
                                                                        ## corresponding boolean is True.
                                                                        ## ! is
                                                                        ## internally used by the
                                                                        ## algorithms.


proc constructApprox_FitAndDivide*(Line: AppCont_Function;
                                  degreemin: Standard_Integer = 3;
                                  degreemax: Standard_Integer = 8;
                                  Tolerance3d: Standard_Real = 1.0e-5;
                                  Tolerance2d: Standard_Real = 1.0e-5;
                                  cutting: Standard_Boolean = Standard_False; FirstC: AppParCurves_Constraint = AppParCurves_TangencyPoint;
    LastC: AppParCurves_Constraint = AppParCurves_TangencyPoint): Approx_FitAndDivide {.
    constructor, importcpp: "Approx_FitAndDivide(@)",
    header: "Approx_FitAndDivide.hxx".}
proc constructApprox_FitAndDivide*(degreemin: Standard_Integer = 3;
                                  degreemax: Standard_Integer = 8;
                                  Tolerance3d: Standard_Real = 1.0e-05;
                                  Tolerance2d: Standard_Real = 1.0e-05;
                                  cutting: Standard_Boolean = Standard_False; FirstC: AppParCurves_Constraint = AppParCurves_TangencyPoint;
    LastC: AppParCurves_Constraint = AppParCurves_TangencyPoint): Approx_FitAndDivide {.
    constructor, importcpp: "Approx_FitAndDivide(@)",
    header: "Approx_FitAndDivide.hxx".}
proc Perform*(this: var Approx_FitAndDivide; Line: AppCont_Function) {.
    importcpp: "Perform", header: "Approx_FitAndDivide.hxx".}
proc SetDegrees*(this: var Approx_FitAndDivide; degreemin: Standard_Integer;
                degreemax: Standard_Integer) {.importcpp: "SetDegrees",
    header: "Approx_FitAndDivide.hxx".}
proc SetTolerances*(this: var Approx_FitAndDivide; Tolerance3d: Standard_Real;
                   Tolerance2d: Standard_Real) {.importcpp: "SetTolerances",
    header: "Approx_FitAndDivide.hxx".}
proc SetConstraints*(this: var Approx_FitAndDivide; FirstC: AppParCurves_Constraint;
                    LastC: AppParCurves_Constraint) {.importcpp: "SetConstraints",
    header: "Approx_FitAndDivide.hxx".}
proc SetMaxSegments*(this: var Approx_FitAndDivide; theMaxSegments: Standard_Integer) {.
    importcpp: "SetMaxSegments", header: "Approx_FitAndDivide.hxx".}
proc SetInvOrder*(this: var Approx_FitAndDivide; theInvOrder: Standard_Boolean) {.
    importcpp: "SetInvOrder", header: "Approx_FitAndDivide.hxx".}
proc SetHangChecking*(this: var Approx_FitAndDivide;
                     theHangChecking: Standard_Boolean) {.
    importcpp: "SetHangChecking", header: "Approx_FitAndDivide.hxx".}
proc IsAllApproximated*(this: Approx_FitAndDivide): Standard_Boolean {.noSideEffect,
    importcpp: "IsAllApproximated", header: "Approx_FitAndDivide.hxx".}
proc IsToleranceReached*(this: Approx_FitAndDivide): Standard_Boolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "Approx_FitAndDivide.hxx".}
proc Error*(this: Approx_FitAndDivide; Index: Standard_Integer;
           tol3d: var Standard_Real; tol2d: var Standard_Real) {.noSideEffect,
    importcpp: "Error", header: "Approx_FitAndDivide.hxx".}
proc NbMultiCurves*(this: Approx_FitAndDivide): Standard_Integer {.noSideEffect,
    importcpp: "NbMultiCurves", header: "Approx_FitAndDivide.hxx".}
proc Value*(this: Approx_FitAndDivide; Index: Standard_Integer = 1): AppParCurves_MultiCurve {.
    noSideEffect, importcpp: "Value", header: "Approx_FitAndDivide.hxx".}
proc Parameters*(this: Approx_FitAndDivide; Index: Standard_Integer;
                firstp: var Standard_Real; lastp: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "Approx_FitAndDivide.hxx".}