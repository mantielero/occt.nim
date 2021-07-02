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

discard "forward decl of PLib_JacobiPolynomial"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of PLib_HermitJacobi"
discard "forward decl of PLib_HermitJacobi"
type
  HandlePLibHermitJacobi* = Handle[PLibHermitJacobi]

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
  PLibHermitJacobi* {.importcpp: "PLib_HermitJacobi",
                     header: "PLib_HermitJacobi.hxx", bycopy.} = object of PLibBase ## !
                                                                             ## Initialize the
                                                                             ## polynomial
                                                                             ## class
                                                                             ## !
                                                                             ## Degree has to be <= 30
                                                                             ## !
                                                                             ## ConstraintOrder has to be
                                                                             ## GeomAbs_C0
                                                                             ## !
                                                                             ## GeomAbs_C1
                                                                             ## !
                                                                             ## GeomAbs_C2
                                                                             ## !
                                                                             ## Compute the
                                                                             ## values and the
                                                                             ## derivatives
                                                                             ## values of
                                                                             ## ! the
                                                                             ## basis
                                                                             ## functions in u


proc constructPLibHermitJacobi*(workDegree: StandardInteger;
                               constraintOrder: GeomAbsShape): PLibHermitJacobi {.
    constructor, importcpp: "PLib_HermitJacobi(@)", header: "PLib_HermitJacobi.hxx".}
proc maxError*(this: PLibHermitJacobi; dimension: StandardInteger;
              hermJacCoeff: var StandardReal; newDegree: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "MaxError", header: "PLib_HermitJacobi.hxx".}
proc reduceDegree*(this: PLibHermitJacobi; dimension: StandardInteger;
                  maxDegree: StandardInteger; tol: StandardReal;
                  hermJacCoeff: var StandardReal; newDegree: var StandardInteger;
                  maxError: var StandardReal) {.noSideEffect,
    importcpp: "ReduceDegree", header: "PLib_HermitJacobi.hxx".}
proc averageError*(this: PLibHermitJacobi; dimension: StandardInteger;
                  hermJacCoeff: var StandardReal; newDegree: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "AverageError", header: "PLib_HermitJacobi.hxx".}
proc toCoefficients*(this: PLibHermitJacobi; dimension: StandardInteger;
                    degree: StandardInteger; hermJacCoeff: TColStdArray1OfReal;
                    coefficients: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "ToCoefficients", header: "PLib_HermitJacobi.hxx".}
proc d0*(this: var PLibHermitJacobi; u: StandardReal;
        basisValue: var TColStdArray1OfReal) {.importcpp: "D0",
    header: "PLib_HermitJacobi.hxx".}
proc d1*(this: var PLibHermitJacobi; u: StandardReal;
        basisValue: var TColStdArray1OfReal; basisD1: var TColStdArray1OfReal) {.
    importcpp: "D1", header: "PLib_HermitJacobi.hxx".}
proc d2*(this: var PLibHermitJacobi; u: StandardReal;
        basisValue: var TColStdArray1OfReal; basisD1: var TColStdArray1OfReal;
        basisD2: var TColStdArray1OfReal) {.importcpp: "D2",
    header: "PLib_HermitJacobi.hxx".}
proc d3*(this: var PLibHermitJacobi; u: StandardReal;
        basisValue: var TColStdArray1OfReal; basisD1: var TColStdArray1OfReal;
        basisD2: var TColStdArray1OfReal; basisD3: var TColStdArray1OfReal) {.
    importcpp: "D3", header: "PLib_HermitJacobi.hxx".}
proc workDegree*(this: PLibHermitJacobi): StandardInteger {.noSideEffect,
    importcpp: "WorkDegree", header: "PLib_HermitJacobi.hxx".}
proc nivConstr*(this: PLibHermitJacobi): StandardInteger {.noSideEffect,
    importcpp: "NivConstr", header: "PLib_HermitJacobi.hxx".}
type
  PLibHermitJacobibaseType* = PLibBase

proc getTypeName*(): cstring {.importcpp: "PLib_HermitJacobi::get_type_name(@)",
                            header: "PLib_HermitJacobi.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PLib_HermitJacobi::get_type_descriptor(@)",
    header: "PLib_HermitJacobi.hxx".}
proc dynamicType*(this: PLibHermitJacobi): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PLib_HermitJacobi.hxx".}

