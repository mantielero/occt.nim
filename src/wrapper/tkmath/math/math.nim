import math_types

##  Created on: 1991-01-21
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of math_Matrix"
discard "forward decl of math_Function"
discard "forward decl of math_FunctionWithDerivative"
discard "forward decl of math_MultipleVarFunction"
discard "forward decl of math_MultipleVarFunctionWithGradient"
discard "forward decl of math_MultipleVarFunctionWithHessian"
discard "forward decl of math_FunctionSet"
discard "forward decl of math_FunctionSetWithDerivatives"
discard "forward decl of math_Gauss"
discard "forward decl of math_GaussLeastSquare"
discard "forward decl of math_SVD"
discard "forward decl of math_DirectPolynomialRoots"
discard "forward decl of math_FunctionRoots"
discard "forward decl of math_BissecNewton"
discard "forward decl of math_FunctionRoot"
discard "forward decl of math_NewtonFunctionRoot"
discard "forward decl of math_BracketedRoot"
discard "forward decl of math_FunctionSetRoot"
discard "forward decl of math_NewtonFunctionSetRoot"
discard "forward decl of math_BracketMinimum"
discard "forward decl of math_BrentMinimum"
discard "forward decl of math_Powell"
discard "forward decl of math_FRPR"
discard "forward decl of math_BFGS"
discard "forward decl of math_NewtonMinimum"
discard "forward decl of math_Jacobi"
discard "forward decl of math_GaussSingleIntegration"
discard "forward decl of math_GaussMultipleIntegration"
discard "forward decl of math_GaussSetIntegration"
discard "forward decl of math_FunctionSample"
discard "forward decl of math_FunctionAllRoots"
discard "forward decl of math_Householder"
discard "forward decl of math_Crout"
discard "forward decl of math_Uzawa"
discard "forward decl of math_TrigonometricFunctionRoots"
discard "forward decl of math_KronrodSingleIntegration"
discard "forward decl of math_EigenValuesSearcher"
discard "forward decl of math_ComputeGaussPointsAndWeights"
discard "forward decl of math_ComputeKronrodPointsAndWeights"
discard "forward decl of math_DoubleTab"


proc gaussPointsMax*(): cint {.cdecl, importcpp: "math::GaussPointsMax(@)",
                            header: "math.hxx".}
proc gaussPoints*(index: cint; points: var MathVector) {.cdecl,
    importcpp: "math::GaussPoints(@)", header: "math.hxx".}
proc gaussWeights*(index: cint; weights: var MathVector) {.cdecl,
    importcpp: "math::GaussWeights(@)", header: "math.hxx".}
proc kronrodPointsMax*(): cint {.cdecl, importcpp: "math::KronrodPointsMax(@)",
                              header: "math.hxx".}
proc orderedGaussPointsAndWeights*(index: cint; points: var MathVector;
                                  weights: var MathVector): bool {.cdecl,
    importcpp: "math::OrderedGaussPointsAndWeights(@)", header: "math.hxx".}
proc kronrodPointsAndWeights*(index: cint; points: var MathVector;
                             weights: var MathVector): bool {.cdecl,
    importcpp: "math::KronrodPointsAndWeights(@)", header: "math.hxx".}
