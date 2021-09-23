##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../math/math_BFGS,
  ../math/math_Vector, ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox* {.importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx",
      bycopy.} = object of math_BFGS


proc constructGeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox*(
    F: var math_MultipleVarFunctionWithGradient; StartingPoint: math_Vector;
    Tolerance3d: Standard_Real; Tolerance2d: Standard_Real; Eps: Standard_Real;
    NbIterations: Standard_Integer = 200): GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox(@)", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc IsSolutionReached*(this: GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox;
                       F: var math_MultipleVarFunctionWithGradient): Standard_Boolean {.
    noSideEffect, importcpp: "IsSolutionReached", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}