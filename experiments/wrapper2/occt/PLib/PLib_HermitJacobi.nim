##  Created on: 1997-10-22
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../math/math_Matrix,
  ../TColStd/TColStd_Array1OfReal, PLib_Base, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Real

discard "forward decl of PLib_JacobiPolynomial"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of PLib_HermitJacobi"
discard "forward decl of PLib_HermitJacobi"
type
  Handle_PLib_HermitJacobi* = handle[PLib_HermitJacobi]

## ! This class provides method  to work with Jacobi Polynomials
## ! relativly to an order of constraint
## ! q = myWorkDegree-2*(myNivConstr+1)
## ! Jk(t) for k=0,q compose the Jacobi Polynomial base relativly to the weigth W(t)
## ! iorder is the integer  value for the constraints:
## ! iorder = 0 <=> ConstraintOrder = GeomAbs_C0
## ! iorder = 1 <=> ConstraintOrder = GeomAbs_C1
## ! iorder = 2 <=> ConstraintOrder = GeomAbs_C2
## ! P(t) = H(t) + W(t) * Q(t) Where W(t) = (1-t**2)**(2*iordre+2)
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
## ! Hermit's base: H(t)
## ! H(t) = c0H00(t) + c1H01(t) + ...c(iordre)H(0 ;iorder)+ c(iordre+1)H10(t)+...
## ! The following coefficients represents the part of the
## ! polynomial in the Jacobi base ie Q(t)
## ! Q(t) = c2*iordre+2  J0(t) + ...+ cDegree JDegree-2*iordre-2

type
  PLib_HermitJacobi* {.importcpp: "PLib_HermitJacobi",
                      header: "PLib_HermitJacobi.hxx", bycopy.} = object of PLib_Base ## !
                                                                               ## Initialize
                                                                               ## the
                                                                               ## polynomial
                                                                               ## class
                                                                               ## !
                                                                               ## Degree
                                                                               ## has
                                                                               ## to
                                                                               ## be
                                                                               ## <=
                                                                               ## 30
                                                                               ## !
                                                                               ## ConstraintOrder
                                                                               ## has
                                                                               ## to
                                                                               ## be
                                                                               ## GeomAbs_C0
                                                                               ## !
                                                                               ## GeomAbs_C1
                                                                               ## !
                                                                               ## GeomAbs_C2
                                                                               ## !
                                                                               ## Compute
                                                                               ## the
                                                                               ## values
                                                                               ## and
                                                                               ## the
                                                                               ## derivatives
                                                                               ## values
                                                                               ## of
                                                                               ## !
                                                                               ## the
                                                                               ## basis
                                                                               ## functions
                                                                               ## in u


proc constructPLib_HermitJacobi*(WorkDegree: Standard_Integer;
                                ConstraintOrder: GeomAbs_Shape): PLib_HermitJacobi {.
    constructor, importcpp: "PLib_HermitJacobi(@)", header: "PLib_HermitJacobi.hxx".}
proc MaxError*(this: PLib_HermitJacobi; Dimension: Standard_Integer;
              HermJacCoeff: var Standard_Real; NewDegree: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "MaxError", header: "PLib_HermitJacobi.hxx".}
proc ReduceDegree*(this: PLib_HermitJacobi; Dimension: Standard_Integer;
                  MaxDegree: Standard_Integer; Tol: Standard_Real;
                  HermJacCoeff: var Standard_Real; NewDegree: var Standard_Integer;
                  MaxError: var Standard_Real) {.noSideEffect,
    importcpp: "ReduceDegree", header: "PLib_HermitJacobi.hxx".}
proc AverageError*(this: PLib_HermitJacobi; Dimension: Standard_Integer;
                  HermJacCoeff: var Standard_Real; NewDegree: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "AverageError", header: "PLib_HermitJacobi.hxx".}
proc ToCoefficients*(this: PLib_HermitJacobi; Dimension: Standard_Integer;
                    Degree: Standard_Integer; HermJacCoeff: TColStd_Array1OfReal;
                    Coefficients: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "ToCoefficients", header: "PLib_HermitJacobi.hxx".}
proc D0*(this: var PLib_HermitJacobi; U: Standard_Real;
        BasisValue: var TColStd_Array1OfReal) {.importcpp: "D0",
    header: "PLib_HermitJacobi.hxx".}
proc D1*(this: var PLib_HermitJacobi; U: Standard_Real;
        BasisValue: var TColStd_Array1OfReal; BasisD1: var TColStd_Array1OfReal) {.
    importcpp: "D1", header: "PLib_HermitJacobi.hxx".}
proc D2*(this: var PLib_HermitJacobi; U: Standard_Real;
        BasisValue: var TColStd_Array1OfReal; BasisD1: var TColStd_Array1OfReal;
        BasisD2: var TColStd_Array1OfReal) {.importcpp: "D2",
    header: "PLib_HermitJacobi.hxx".}
proc D3*(this: var PLib_HermitJacobi; U: Standard_Real;
        BasisValue: var TColStd_Array1OfReal; BasisD1: var TColStd_Array1OfReal;
        BasisD2: var TColStd_Array1OfReal; BasisD3: var TColStd_Array1OfReal) {.
    importcpp: "D3", header: "PLib_HermitJacobi.hxx".}
proc WorkDegree*(this: PLib_HermitJacobi): Standard_Integer {.noSideEffect,
    importcpp: "WorkDegree", header: "PLib_HermitJacobi.hxx".}
proc NivConstr*(this: PLib_HermitJacobi): Standard_Integer {.noSideEffect,
    importcpp: "NivConstr", header: "PLib_HermitJacobi.hxx".}
type
  PLib_HermitJacobibase_type* = PLib_Base

proc get_type_name*(): cstring {.importcpp: "PLib_HermitJacobi::get_type_name(@)",
                              header: "PLib_HermitJacobi.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PLib_HermitJacobi::get_type_descriptor(@)",
    header: "PLib_HermitJacobi.hxx".}
proc DynamicType*(this: PLib_HermitJacobi): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "PLib_HermitJacobi.hxx".}