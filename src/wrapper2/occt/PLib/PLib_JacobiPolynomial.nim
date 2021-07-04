##  Created on: 1996-10-08
##  Created by: Jeannine PANTIATICI
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfReal, PLib_Base, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array2OfReal,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of PLib_JacobiPolynomial"
discard "forward decl of PLib_JacobiPolynomial"
type
  Handle_PLib_JacobiPolynomial* = handle[PLib_JacobiPolynomial]

## ! This class provides method  to work with Jacobi  Polynomials
## ! relativly to   an order of constraint
## ! q  = myWorkDegree-2*(myNivConstr+1)
## ! Jk(t)  for k=0,q compose  the   Jacobi Polynomial  base relativly  to  the weigth W(t)
## ! iorder is the integer  value for the constraints:
## ! iorder = 0 <=> ConstraintOrder  = GeomAbs_C0
## ! iorder = 1 <=>  ConstraintOrder = GeomAbs_C1
## ! iorder = 2 <=> ConstraintOrder = GeomAbs_C2
## ! P(t) = R(t) + W(t) * Q(t) Where W(t) = (1-t**2)**(2*iordre+2)
## ! the coefficients JacCoeff represents P(t) JacCoeff are stored as follow:
## !
## ! c0(1)      c0(2) ....       c0(Dimension)
## ! c1(1)      c1(2) ....       c1(Dimension)
## !
## ! cDegree(1) cDegree(2) ....  cDegree(Dimension)
## !
## ! The coefficients
## ! c0(1)                  c0(2) ....            c0(Dimension)
## ! c2*ordre+1(1)                ...          c2*ordre+1(dimension)
## !
## ! represents the  part  of the polynomial in  the
## ! canonical base: R(t)
## ! R(t) = c0 + c1   t + ...+ c2*iordre+1 t**2*iordre+1
## ! The following coefficients represents the part of the
## ! polynomial in the Jacobi base ie Q(t)
## ! Q(t) = c2*iordre+2  J0(t) + ...+ cDegree JDegree-2*iordre-2

type
  PLib_JacobiPolynomial* {.importcpp: "PLib_JacobiPolynomial",
                          header: "PLib_JacobiPolynomial.hxx", bycopy.} = object of PLib_Base ##
                                                                                       ## !
                                                                                       ## Initialize
                                                                                       ## the
                                                                                       ## polynomial
                                                                                       ## class
                                                                                       ##
                                                                                       ## !
                                                                                       ## Degree
                                                                                       ## has
                                                                                       ## to
                                                                                       ## be
                                                                                       ## <=
                                                                                       ## 30
                                                                                       ##
                                                                                       ## !
                                                                                       ## ConstraintOrder
                                                                                       ## has
                                                                                       ## to
                                                                                       ## be
                                                                                       ## GeomAbs_C0
                                                                                       ##
                                                                                       ## !
                                                                                       ## GeomAbs_C1
                                                                                       ##
                                                                                       ## !
                                                                                       ## GeomAbs_C2
                                                                                       ##
                                                                                       ## !
                                                                                       ## Compute
                                                                                       ## the
                                                                                       ## values
                                                                                       ## and
                                                                                       ## the
                                                                                       ## derivatives
                                                                                       ## values
                                                                                       ## of
                                                                                       ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## basis
                                                                                       ## functions
                                                                                       ## in
                                                                                       ## u


proc constructPLib_JacobiPolynomial*(WorkDegree: Standard_Integer;
                                    ConstraintOrder: GeomAbs_Shape): PLib_JacobiPolynomial {.
    constructor, importcpp: "PLib_JacobiPolynomial(@)",
    header: "PLib_JacobiPolynomial.hxx".}
proc Points*(this: PLib_JacobiPolynomial; NbGaussPoints: Standard_Integer;
            TabPoints: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Points", header: "PLib_JacobiPolynomial.hxx".}
proc Weights*(this: PLib_JacobiPolynomial; NbGaussPoints: Standard_Integer;
             TabWeights: var TColStd_Array2OfReal) {.noSideEffect,
    importcpp: "Weights", header: "PLib_JacobiPolynomial.hxx".}
proc MaxValue*(this: PLib_JacobiPolynomial; TabMax: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "MaxValue", header: "PLib_JacobiPolynomial.hxx".}
proc MaxError*(this: PLib_JacobiPolynomial; Dimension: Standard_Integer;
              JacCoeff: var Standard_Real; NewDegree: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "MaxError", header: "PLib_JacobiPolynomial.hxx".}
proc ReduceDegree*(this: PLib_JacobiPolynomial; Dimension: Standard_Integer;
                  MaxDegree: Standard_Integer; Tol: Standard_Real;
                  JacCoeff: var Standard_Real; NewDegree: var Standard_Integer;
                  MaxError: var Standard_Real) {.noSideEffect,
    importcpp: "ReduceDegree", header: "PLib_JacobiPolynomial.hxx".}
proc AverageError*(this: PLib_JacobiPolynomial; Dimension: Standard_Integer;
                  JacCoeff: var Standard_Real; NewDegree: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "AverageError", header: "PLib_JacobiPolynomial.hxx".}
proc ToCoefficients*(this: PLib_JacobiPolynomial; Dimension: Standard_Integer;
                    Degree: Standard_Integer; JacCoeff: TColStd_Array1OfReal;
                    Coefficients: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "ToCoefficients", header: "PLib_JacobiPolynomial.hxx".}
proc D0*(this: var PLib_JacobiPolynomial; U: Standard_Real;
        BasisValue: var TColStd_Array1OfReal) {.importcpp: "D0",
    header: "PLib_JacobiPolynomial.hxx".}
proc D1*(this: var PLib_JacobiPolynomial; U: Standard_Real;
        BasisValue: var TColStd_Array1OfReal; BasisD1: var TColStd_Array1OfReal) {.
    importcpp: "D1", header: "PLib_JacobiPolynomial.hxx".}
proc D2*(this: var PLib_JacobiPolynomial; U: Standard_Real;
        BasisValue: var TColStd_Array1OfReal; BasisD1: var TColStd_Array1OfReal;
        BasisD2: var TColStd_Array1OfReal) {.importcpp: "D2",
    header: "PLib_JacobiPolynomial.hxx".}
proc D3*(this: var PLib_JacobiPolynomial; U: Standard_Real;
        BasisValue: var TColStd_Array1OfReal; BasisD1: var TColStd_Array1OfReal;
        BasisD2: var TColStd_Array1OfReal; BasisD3: var TColStd_Array1OfReal) {.
    importcpp: "D3", header: "PLib_JacobiPolynomial.hxx".}
proc WorkDegree*(this: PLib_JacobiPolynomial): Standard_Integer {.noSideEffect,
    importcpp: "WorkDegree", header: "PLib_JacobiPolynomial.hxx".}
proc NivConstr*(this: PLib_JacobiPolynomial): Standard_Integer {.noSideEffect,
    importcpp: "NivConstr", header: "PLib_JacobiPolynomial.hxx".}
type
  PLib_JacobiPolynomialbase_type* = PLib_Base

proc get_type_name*(): cstring {.importcpp: "PLib_JacobiPolynomial::get_type_name(@)",
                              header: "PLib_JacobiPolynomial.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PLib_JacobiPolynomial::get_type_descriptor(@)",
    header: "PLib_JacobiPolynomial.hxx".}
proc DynamicType*(this: PLib_JacobiPolynomial): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PLib_JacobiPolynomial.hxx".}