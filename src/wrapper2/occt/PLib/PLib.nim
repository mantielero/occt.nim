##  Created on: 1995-08-28
##  Created by: Laurent BOURESCHE
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array2OfReal, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfPnt2d, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_Array2OfPnt, ../GeomAbs/GeomAbs_Shape

discard "forward decl of math_Matrix"
discard "forward decl of PLib_Base"
discard "forward decl of PLib_JacobiPolynomial"
discard "forward decl of PLib_HermitJacobi"
discard "forward decl of PLib_DoubleJacobiPolynomial"
type
  PLib* {.importcpp: "PLib", header: "PLib.hxx", bycopy.} = object ## ! Used as argument for a non rational functions


proc NoWeights*(): ptr TColStd_Array1OfReal {.importcpp: "PLib::NoWeights(@)",
    header: "PLib.hxx".}
proc NoWeights2*(): ptr TColStd_Array2OfReal {.importcpp: "PLib::NoWeights2(@)",
    header: "PLib.hxx".}
proc SetPoles*(Poles: TColgp_Array1OfPnt; FP: var TColStd_Array1OfReal) {.
    importcpp: "PLib::SetPoles(@)", header: "PLib.hxx".}
proc SetPoles*(Poles: TColgp_Array1OfPnt; Weights: TColStd_Array1OfReal;
              FP: var TColStd_Array1OfReal) {.importcpp: "PLib::SetPoles(@)",
    header: "PLib.hxx".}
proc GetPoles*(FP: TColStd_Array1OfReal; Poles: var TColgp_Array1OfPnt) {.
    importcpp: "PLib::GetPoles(@)", header: "PLib.hxx".}
proc GetPoles*(FP: TColStd_Array1OfReal; Poles: var TColgp_Array1OfPnt;
              Weights: var TColStd_Array1OfReal) {.importcpp: "PLib::GetPoles(@)",
    header: "PLib.hxx".}
proc SetPoles*(Poles: TColgp_Array1OfPnt2d; FP: var TColStd_Array1OfReal) {.
    importcpp: "PLib::SetPoles(@)", header: "PLib.hxx".}
proc SetPoles*(Poles: TColgp_Array1OfPnt2d; Weights: TColStd_Array1OfReal;
              FP: var TColStd_Array1OfReal) {.importcpp: "PLib::SetPoles(@)",
    header: "PLib.hxx".}
proc GetPoles*(FP: TColStd_Array1OfReal; Poles: var TColgp_Array1OfPnt2d) {.
    importcpp: "PLib::GetPoles(@)", header: "PLib.hxx".}
proc GetPoles*(FP: TColStd_Array1OfReal; Poles: var TColgp_Array1OfPnt2d;
              Weights: var TColStd_Array1OfReal) {.importcpp: "PLib::GetPoles(@)",
    header: "PLib.hxx".}
proc Bin*(N: Standard_Integer; P: Standard_Integer): Standard_Real {.
    importcpp: "PLib::Bin(@)", header: "PLib.hxx".}
proc RationalDerivative*(Degree: Standard_Integer; N: Standard_Integer;
                        Dimension: Standard_Integer; Ders: var Standard_Real;
                        RDers: var Standard_Real;
                        All: Standard_Boolean = Standard_True) {.
    importcpp: "PLib::RationalDerivative(@)", header: "PLib.hxx".}
proc RationalDerivatives*(DerivativesRequest: Standard_Integer;
                         Dimension: Standard_Integer;
                         PolesDerivatives: var Standard_Real;
                         WeightsDerivatives: var Standard_Real;
                         RationalDerivates: var Standard_Real) {.
    importcpp: "PLib::RationalDerivatives(@)", header: "PLib.hxx".}
proc EvalPolynomial*(U: Standard_Real; DerivativeOrder: Standard_Integer;
                    Degree: Standard_Integer; Dimension: Standard_Integer;
                    PolynomialCoeff: var Standard_Real; Results: var Standard_Real) {.
    importcpp: "PLib::EvalPolynomial(@)", header: "PLib.hxx".}
proc NoDerivativeEvalPolynomial*(U: Standard_Real; Degree: Standard_Integer;
                                Dimension: Standard_Integer;
                                DegreeDimension: Standard_Integer;
                                PolynomialCoeff: var Standard_Real;
                                Results: var Standard_Real) {.
    importcpp: "PLib::NoDerivativeEvalPolynomial(@)", header: "PLib.hxx".}
proc EvalPoly2Var*(U: Standard_Real; V: Standard_Real;
                  UDerivativeOrder: Standard_Integer;
                  VDerivativeOrder: Standard_Integer; UDegree: Standard_Integer;
                  VDegree: Standard_Integer; Dimension: Standard_Integer;
                  PolynomialCoeff: var Standard_Real; Results: var Standard_Real) {.
    importcpp: "PLib::EvalPoly2Var(@)", header: "PLib.hxx".}
proc EvalLagrange*(U: Standard_Real; DerivativeOrder: Standard_Integer;
                  Degree: Standard_Integer; Dimension: Standard_Integer;
                  ValueArray: var Standard_Real; ParameterArray: var Standard_Real;
                  Results: var Standard_Real): Standard_Integer {.
    importcpp: "PLib::EvalLagrange(@)", header: "PLib.hxx".}
proc EvalCubicHermite*(U: Standard_Real; DerivativeOrder: Standard_Integer;
                      Dimension: Standard_Integer; ValueArray: var Standard_Real;
                      DerivativeArray: var Standard_Real;
                      ParameterArray: var Standard_Real; Results: var Standard_Real): Standard_Integer {.
    importcpp: "PLib::EvalCubicHermite(@)", header: "PLib.hxx".}
proc HermiteCoefficients*(FirstParameter: Standard_Real;
                         LastParameter: Standard_Real;
                         FirstOrder: Standard_Integer;
                         LastOrder: Standard_Integer; MatrixCoefs: var math_Matrix): Standard_Boolean {.
    importcpp: "PLib::HermiteCoefficients(@)", header: "PLib.hxx".}
proc CoefficientsPoles*(Coefs: TColgp_Array1OfPnt;
                       WCoefs: ptr TColStd_Array1OfReal;
                       Poles: var TColgp_Array1OfPnt;
                       WPoles: ptr TColStd_Array1OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc CoefficientsPoles*(Coefs: TColgp_Array1OfPnt2d;
                       WCoefs: ptr TColStd_Array1OfReal;
                       Poles: var TColgp_Array1OfPnt2d;
                       WPoles: ptr TColStd_Array1OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc CoefficientsPoles*(Coefs: TColStd_Array1OfReal;
                       WCoefs: ptr TColStd_Array1OfReal;
                       Poles: var TColStd_Array1OfReal;
                       WPoles: ptr TColStd_Array1OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc CoefficientsPoles*(dim: Standard_Integer; Coefs: TColStd_Array1OfReal;
                       WCoefs: ptr TColStd_Array1OfReal;
                       Poles: var TColStd_Array1OfReal;
                       WPoles: ptr TColStd_Array1OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc Trimming*(U1: Standard_Real; U2: Standard_Real; Coeffs: var TColgp_Array1OfPnt;
              WCoeffs: ptr TColStd_Array1OfReal) {.importcpp: "PLib::Trimming(@)",
    header: "PLib.hxx".}
proc Trimming*(U1: Standard_Real; U2: Standard_Real;
              Coeffs: var TColgp_Array1OfPnt2d; WCoeffs: ptr TColStd_Array1OfReal) {.
    importcpp: "PLib::Trimming(@)", header: "PLib.hxx".}
proc Trimming*(U1: Standard_Real; U2: Standard_Real;
              Coeffs: var TColStd_Array1OfReal; WCoeffs: ptr TColStd_Array1OfReal) {.
    importcpp: "PLib::Trimming(@)", header: "PLib.hxx".}
proc Trimming*(U1: Standard_Real; U2: Standard_Real; dim: Standard_Integer;
              Coeffs: var TColStd_Array1OfReal; WCoeffs: ptr TColStd_Array1OfReal) {.
    importcpp: "PLib::Trimming(@)", header: "PLib.hxx".}
proc CoefficientsPoles*(Coefs: TColgp_Array2OfPnt;
                       WCoefs: ptr TColStd_Array2OfReal;
                       Poles: var TColgp_Array2OfPnt;
                       WPoles: ptr TColStd_Array2OfReal) {.
    importcpp: "PLib::CoefficientsPoles(@)", header: "PLib.hxx".}
proc UTrimming*(U1: Standard_Real; U2: Standard_Real; Coeffs: var TColgp_Array2OfPnt;
               WCoeffs: ptr TColStd_Array2OfReal) {.
    importcpp: "PLib::UTrimming(@)", header: "PLib.hxx".}
proc VTrimming*(V1: Standard_Real; V2: Standard_Real; Coeffs: var TColgp_Array2OfPnt;
               WCoeffs: ptr TColStd_Array2OfReal) {.
    importcpp: "PLib::VTrimming(@)", header: "PLib.hxx".}
proc HermiteInterpolate*(Dimension: Standard_Integer;
                        FirstParameter: Standard_Real;
                        LastParameter: Standard_Real;
                        FirstOrder: Standard_Integer; LastOrder: Standard_Integer;
                        FirstConstr: TColStd_Array2OfReal;
                        LastConstr: TColStd_Array2OfReal;
                        Coefficients: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "PLib::HermiteInterpolate(@)", header: "PLib.hxx".}
proc JacobiParameters*(ConstraintOrder: GeomAbs_Shape; MaxDegree: Standard_Integer;
                      Code: Standard_Integer; NbGaussPoints: var Standard_Integer;
                      WorkDegree: var Standard_Integer) {.
    importcpp: "PLib::JacobiParameters(@)", header: "PLib.hxx".}
proc NivConstr*(ConstraintOrder: GeomAbs_Shape): Standard_Integer {.
    importcpp: "PLib::NivConstr(@)", header: "PLib.hxx".}
proc ConstraintOrder*(NivConstr: Standard_Integer): GeomAbs_Shape {.
    importcpp: "PLib::ConstraintOrder(@)", header: "PLib.hxx".}
proc EvalLength*(Degree: Standard_Integer; Dimension: Standard_Integer;
                PolynomialCoeff: var Standard_Real; U1: Standard_Real;
                U2: Standard_Real; Length: var Standard_Real) {.
    importcpp: "PLib::EvalLength(@)", header: "PLib.hxx".}
proc EvalLength*(Degree: Standard_Integer; Dimension: Standard_Integer;
                PolynomialCoeff: var Standard_Real; U1: Standard_Real;
                U2: Standard_Real; Tol: Standard_Real; Length: var Standard_Real;
                Error: var Standard_Real) {.importcpp: "PLib::EvalLength(@)",
    header: "PLib.hxx".}