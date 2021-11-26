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
  MathGlobOptMin* {.importcpp: "math_GlobOptMin", header: "math_GlobOptMin.hxx",
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


proc newMathGlobOptMin*(theFunc: ptr MathMultipleVarFunction;
                       theLowerBorder: MathVector; theUpperBorder: MathVector;
                       theC: cfloat = 9; theDiscretizationTol: cfloat = 1.0e-2;
                       theSameTol: cfloat = 1.0e-7): MathGlobOptMin {.cdecl,
    constructor, importcpp: "math_GlobOptMin(@)", dynlib: tkmath.}
proc setGlobalParams*(this: var MathGlobOptMin;
                     theFunc: ptr MathMultipleVarFunction;
                     theLowerBorder: MathVector; theUpperBorder: MathVector;
                     theC: cfloat = 9; theDiscretizationTol: cfloat = 1.0e-2;
                     theSameTol: cfloat = 1.0e-7) {.cdecl,
    importcpp: "SetGlobalParams", dynlib: tkmath.}
proc setLocalParams*(this: var MathGlobOptMin; theLocalA: MathVector;
                    theLocalB: MathVector) {.cdecl, importcpp: "SetLocalParams",
    dynlib: tkmath.}
proc setTol*(this: var MathGlobOptMin; theDiscretizationTol: cfloat;
            theSameTol: cfloat) {.cdecl, importcpp: "SetTol", dynlib: tkmath.}
proc getTol*(this: var MathGlobOptMin; theDiscretizationTol: var cfloat;
            theSameTol: var cfloat) {.cdecl, importcpp: "GetTol", dynlib: tkmath.}
proc perform*(this: var MathGlobOptMin; isFindSingleSolution: bool = false) {.cdecl,
    importcpp: "Perform", dynlib: tkmath.}
proc points*(this: var MathGlobOptMin; theIndex: cint; theSol: var MathVector) {.cdecl,
    importcpp: "Points", dynlib: tkmath.}
proc setContinuity*(this: var MathGlobOptMin; theCont: cint) {.cdecl,
    importcpp: "SetContinuity", dynlib: tkmath.}
proc getContinuity*(this: MathGlobOptMin): cint {.noSideEffect, cdecl,
    importcpp: "GetContinuity", dynlib: tkmath.}
proc setFunctionalMinimalValue*(this: var MathGlobOptMin; theMinimalValue: cfloat) {.
    cdecl, importcpp: "SetFunctionalMinimalValue", dynlib: tkmath.}
proc getFunctionalMinimalValue*(this: MathGlobOptMin): cfloat {.noSideEffect, cdecl,
    importcpp: "GetFunctionalMinimalValue", dynlib: tkmath.}
proc setLipConstState*(this: var MathGlobOptMin; theFlag: bool) {.cdecl,
    importcpp: "SetLipConstState", dynlib: tkmath.}
proc getLipConstState*(this: MathGlobOptMin): bool {.noSideEffect, cdecl,
    importcpp: "GetLipConstState", dynlib: tkmath.}
proc isDone*(this: MathGlobOptMin): bool {.noSideEffect, cdecl, importcpp: "isDone",
                                       dynlib: tkmath.}
proc getF*(this: MathGlobOptMin): cfloat {.noSideEffect, cdecl, importcpp: "GetF",
                                       dynlib: tkmath.}
proc nbExtrema*(this: MathGlobOptMin): cint {.noSideEffect, cdecl,
    importcpp: "NbExtrema", dynlib: tkmath.}