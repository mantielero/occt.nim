##  Created on: 2014-01-20
##  Created by: Alexaner Malyshev
##  Copyright (c) 2014-2015 OPEN CASCADE SAS
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
  ../gp/gp_Pnt, ../gp/gp_Pnt2d, ../NCollection/NCollection_CellFilter,
  math_MultipleVarFunction, ../NCollection/NCollection_Sequence,
  ../Standard/Standard_Type

## ! This class represents Evtushenko's algorithm of global optimization based on non-uniform mesh.
## ! Article: Yu. Evtushenko. Numerical methods for finding global extreme (case of a non-uniform mesh).
## ! U.S.S.R. Comput. Maths. Math. Phys., Vol. 11, N 6, pp. 38-54.
## !
## ! This method performs search on non-uniform mesh. The search space is a box in R^n space.
## ! The default behavior is to find all minimums in that box. Computation of maximums is not supported.
## !
## ! The search box can be split into smaller boxes by discontinuity criteria.
## ! This functionality is covered by SetGlobalParams and SetLocalParams API.
## !
## ! It is possible to set continuity of the local boxes.
## ! Such option can forcibly change local extrema search.
## ! In other words if theFunc can be casted to the function with Hessian but, continuity is set to 1
## ! Gradient based local optimization method will be used, not Hessian based method.
## ! This functionality is covered by SetContinuity and GetContinuity API.
## !
## ! It is possible to freeze Lipschitz const to avoid internal modifications on it.
## ! This functionality is covered by SetLipConstState and GetLipConstState API.
## !
## ! It is possible to perform single solution search.
## ! This functionality is covered by first parameter in Perform method.
## !
## ! It is possible to set / get minimal value of the functional.
## ! It works well together with single solution search.
## ! This functionality is covered by SetFunctionalMinimalValue and GetFunctionalMinimalValue API.

type
  math_GlobOptMin* {.importcpp: "math_GlobOptMin", header: "math_GlobOptMin.hxx",
                    bycopy.} = object ## ! Constructor. Perform method is not called from it.
                                   ## ! @param theFunc - objective functional.
                                   ## ! @param theLowerBorder - lower corner of the search box.
                                   ## ! @param theUpperBorder - upper corner of the search box.
                                   ## ! @param theC - Lipschitz constant.
                                   ## ! @param theDiscretizationTol - parameter space discretization tolerance.
                                   ## ! @param theSameTol - functional value space indifference tolerance.
                                   ## ! Class for duplicate fast search. For internal usage only.
    ##  Left border on current C2 interval.
    ##  Right border on current C2 interval.
    ##  Global left border.
    ##  Global right border.
    ##  Discretization tolerance, default 1.0e-2.
    ##  points with ||p1 - p2|| < mySameTol is equal,
    ##  function values |val1 - val2| * 0.01 < mySameTol is equal,
    ##  default value is 1.0e-7.
    ## Lipchitz constant, default 9
    ##  Lipchitz constant initial value.
    ##  Default value is false.
    ##  Default value is -Precision::Infinite
    ##  Is constant locked for modifications.
    ##  Output.
    ##  Current solutions.
    ##  Count of solutions.
    ##  Algorithm data.
    ##  Border coefficient.
    ##  Minimum step size.
    ##  Local extrema starting parameter.
    ##  Current modified solution.
    ##  Current modified solution.
    ##  Steps array.
    ##  Max Steps array.
    ##  Last step.
    ##  Continuity of local borders.
    ##  Current value of Global optimum.


proc constructmath_GlobOptMin*(theFunc: ptr math_MultipleVarFunction;
                              theLowerBorder: math_Vector;
                              theUpperBorder: math_Vector;
                              theC: Standard_Real = 9;
                              theDiscretizationTol: Standard_Real = 1.0e-2;
                              theSameTol: Standard_Real = 1.0e-7): math_GlobOptMin {.
    constructor, importcpp: "math_GlobOptMin(@)", header: "math_GlobOptMin.hxx".}
proc SetGlobalParams*(this: var math_GlobOptMin;
                     theFunc: ptr math_MultipleVarFunction;
                     theLowerBorder: math_Vector; theUpperBorder: math_Vector;
                     theC: Standard_Real = 9;
                     theDiscretizationTol: Standard_Real = 1.0e-2;
                     theSameTol: Standard_Real = 1.0e-7) {.
    importcpp: "SetGlobalParams", header: "math_GlobOptMin.hxx".}
proc SetLocalParams*(this: var math_GlobOptMin; theLocalA: math_Vector;
                    theLocalB: math_Vector) {.importcpp: "SetLocalParams",
    header: "math_GlobOptMin.hxx".}
proc SetTol*(this: var math_GlobOptMin; theDiscretizationTol: Standard_Real;
            theSameTol: Standard_Real) {.importcpp: "SetTol",
                                       header: "math_GlobOptMin.hxx".}
proc GetTol*(this: var math_GlobOptMin; theDiscretizationTol: var Standard_Real;
            theSameTol: var Standard_Real) {.importcpp: "GetTol",
    header: "math_GlobOptMin.hxx".}
proc Perform*(this: var math_GlobOptMin;
             isFindSingleSolution: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "math_GlobOptMin.hxx".}
proc Points*(this: var math_GlobOptMin; theIndex: Standard_Integer;
            theSol: var math_Vector) {.importcpp: "Points",
                                    header: "math_GlobOptMin.hxx".}
proc SetContinuity*(this: var math_GlobOptMin; theCont: Standard_Integer) {.
    importcpp: "SetContinuity", header: "math_GlobOptMin.hxx".}
proc GetContinuity*(this: math_GlobOptMin): Standard_Integer {.noSideEffect,
    importcpp: "GetContinuity", header: "math_GlobOptMin.hxx".}
proc SetFunctionalMinimalValue*(this: var math_GlobOptMin;
                               theMinimalValue: Standard_Real) {.
    importcpp: "SetFunctionalMinimalValue", header: "math_GlobOptMin.hxx".}
proc GetFunctionalMinimalValue*(this: math_GlobOptMin): Standard_Real {.
    noSideEffect, importcpp: "GetFunctionalMinimalValue",
    header: "math_GlobOptMin.hxx".}
proc SetLipConstState*(this: var math_GlobOptMin; theFlag: Standard_Boolean) {.
    importcpp: "SetLipConstState", header: "math_GlobOptMin.hxx".}
proc GetLipConstState*(this: math_GlobOptMin): Standard_Boolean {.noSideEffect,
    importcpp: "GetLipConstState", header: "math_GlobOptMin.hxx".}
proc isDone*(this: math_GlobOptMin): Standard_Boolean {.noSideEffect,
    importcpp: "isDone", header: "math_GlobOptMin.hxx".}
proc GetF*(this: math_GlobOptMin): Standard_Real {.noSideEffect, importcpp: "GetF",
    header: "math_GlobOptMin.hxx".}
proc NbExtrema*(this: math_GlobOptMin): Standard_Integer {.noSideEffect,
    importcpp: "NbExtrema", header: "math_GlobOptMin.hxx".}