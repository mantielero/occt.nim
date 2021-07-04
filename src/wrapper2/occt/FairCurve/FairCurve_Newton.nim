##  Created on: 1996-10-11
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../math/math_NewtonMinimum, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of math_MultipleVarFunctionWithHessian"
type
  FairCurve_Newton* {.importcpp: "FairCurve_Newton",
                     header: "FairCurve_Newton.hxx", bycopy.} = object of math_NewtonMinimum ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## tolerance
                                                                                      ## required
                                                                                      ## on
                                                                                      ## the
                                                                                      ## solution
                                                                                      ## is
                                                                                      ## given
                                                                                      ## by
                                                                                      ## Tolerance.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Iteration
                                                                                      ## are
                                                                                      ## stopped
                                                                                      ## if
                                                                                      ## (!WithSingularity)
                                                                                      ## and
                                                                                      ## H(F(Xi))
                                                                                      ## is
                                                                                      ## not
                                                                                      ## definite
                                                                                      ##
                                                                                      ## !
                                                                                      ## positive
                                                                                      ## (if
                                                                                      ## the
                                                                                      ## smaller
                                                                                      ## eigenvalue
                                                                                      ## of
                                                                                      ## H
                                                                                      ## <
                                                                                      ## Convexity)
                                                                                      ##
                                                                                      ## !
                                                                                      ## or
                                                                                      ## IsConverged()
                                                                                      ## returns
                                                                                      ## True
                                                                                      ## for
                                                                                      ## 2
                                                                                      ## successives
                                                                                      ## Iterations.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Warning:
                                                                                      ## This
                                                                                      ## constructor
                                                                                      ## do
                                                                                      ## not
                                                                                      ## computation


proc constructFairCurve_Newton*(theFunction: math_MultipleVarFunctionWithHessian;
                               theSpatialTolerance: Standard_Real = 1.0e-7;
                               theCriteriumTolerance: Standard_Real = 1.0e-7;
                               theNbIterations: Standard_Integer = 40;
                               theConvexity: Standard_Real = 1.0e-6;
    theWithSingularity: Standard_Boolean = Standard_True): FairCurve_Newton {.
    constructor, importcpp: "FairCurve_Newton(@)", header: "FairCurve_Newton.hxx".}
proc IsConverged*(this: FairCurve_Newton): Standard_Boolean {.noSideEffect,
    importcpp: "IsConverged", header: "FairCurve_Newton.hxx".}