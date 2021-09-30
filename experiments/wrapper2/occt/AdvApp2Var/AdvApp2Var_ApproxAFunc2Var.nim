{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
{.experimental: "callOperator".}
##  Created on: 1996-02-14
##  Created by: Joelle CHAUVET
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of AdvApprox_Cutting"
discard "forward decl of AdvApp2Var_Criterion"
discard "forward decl of Geom_BSplineSurface"
type
  AdvApp2VarApproxAFunc2Var* {.importcpp: "AdvApp2Var_ApproxAFunc2Var",
                              header: "AdvApp2Var_ApproxAFunc2Var.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Initialisation
                                                                                     ## of
                                                                                     ## the
                                                                                     ## approximation
                                                                                     ## ;
                                                                                     ## used
                                                                                     ## by
                                                                                     ## Create


proc constructAdvApp2VarApproxAFunc2Var*(num1DSS: cint; num2DSS: cint; num3DSS: cint;
                                        oneDTol: Handle[TColStdHArray1OfReal];
                                        twoDTol: Handle[TColStdHArray1OfReal];
    threeDTol: Handle[TColStdHArray1OfReal]; oneDTolFr: Handle[TColStdHArray2OfReal];
    twoDTolFr: Handle[TColStdHArray2OfReal]; threeDTolFr: Handle[
    TColStdHArray2OfReal]; firstInU: cfloat; lastInU: cfloat; firstInV: cfloat;
                                        lastInV: cfloat; favorIso: GeomAbsIsoType;
                                        contInU: GeomAbsShape;
                                        contInV: GeomAbsShape; precisCode: cint;
                                        maxDegInU: cint; maxDegInV: cint;
                                        maxPatch: cint;
                                        `func`: AdvApp2VarEvaluatorFunc2Var;
                                        uChoice: var AdvApproxCutting;
                                        vChoice: var AdvApproxCutting): AdvApp2VarApproxAFunc2Var {.
    constructor, importcpp: "AdvApp2Var_ApproxAFunc2Var(@)",
    header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc constructAdvApp2VarApproxAFunc2Var*(num1DSS: cint; num2DSS: cint; num3DSS: cint;
                                        oneDTol: Handle[TColStdHArray1OfReal];
                                        twoDTol: Handle[TColStdHArray1OfReal];
    threeDTol: Handle[TColStdHArray1OfReal]; oneDTolFr: Handle[TColStdHArray2OfReal];
    twoDTolFr: Handle[TColStdHArray2OfReal]; threeDTolFr: Handle[
    TColStdHArray2OfReal]; firstInU: cfloat; lastInU: cfloat; firstInV: cfloat;
                                        lastInV: cfloat; favorIso: GeomAbsIsoType;
                                        contInU: GeomAbsShape;
                                        contInV: GeomAbsShape; precisCode: cint;
                                        maxDegInU: cint; maxDegInV: cint;
                                        maxPatch: cint;
                                        `func`: AdvApp2VarEvaluatorFunc2Var;
                                        crit: AdvApp2VarCriterion;
                                        uChoice: var AdvApproxCutting;
                                        vChoice: var AdvApproxCutting): AdvApp2VarApproxAFunc2Var {.
    constructor, importcpp: "AdvApp2Var_ApproxAFunc2Var(@)",
    header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc isDone*(this: AdvApp2VarApproxAFunc2Var): bool {.noSideEffect,
    importcpp: "IsDone", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc hasResult*(this: AdvApp2VarApproxAFunc2Var): bool {.noSideEffect,
    importcpp: "HasResult", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc surface*(this: AdvApp2VarApproxAFunc2Var; index: cint): Handle[
    GeomBSplineSurface] {.noSideEffect, importcpp: "Surface",
                         header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc uDegree*(this: AdvApp2VarApproxAFunc2Var): cint {.noSideEffect,
    importcpp: "UDegree", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc vDegree*(this: AdvApp2VarApproxAFunc2Var): cint {.noSideEffect,
    importcpp: "VDegree", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc numSubSpaces*(this: AdvApp2VarApproxAFunc2Var; dimension: cint): cint {.
    noSideEffect, importcpp: "NumSubSpaces",
    header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc maxError*(this: AdvApp2VarApproxAFunc2Var; dimension: cint): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "MaxError",
                           header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc averageError*(this: AdvApp2VarApproxAFunc2Var; dimension: cint): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "AverageError",
                           header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc uFrontError*(this: AdvApp2VarApproxAFunc2Var; dimension: cint): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "UFrontError",
                           header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc vFrontError*(this: AdvApp2VarApproxAFunc2Var; dimension: cint): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "VFrontError",
                           header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc maxError*(this: AdvApp2VarApproxAFunc2Var; dimension: cint; index: cint): cfloat {.
    noSideEffect, importcpp: "MaxError", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc averageError*(this: AdvApp2VarApproxAFunc2Var; dimension: cint; index: cint): cfloat {.
    noSideEffect, importcpp: "AverageError",
    header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc uFrontError*(this: AdvApp2VarApproxAFunc2Var; dimension: cint; index: cint): cfloat {.
    noSideEffect, importcpp: "UFrontError",
    header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc vFrontError*(this: AdvApp2VarApproxAFunc2Var; dimension: cint; index: cint): cfloat {.
    noSideEffect, importcpp: "VFrontError",
    header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc critError*(this: AdvApp2VarApproxAFunc2Var; dimension: cint; index: cint): cfloat {.
    noSideEffect, importcpp: "CritError", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc dump*(this: AdvApp2VarApproxAFunc2Var; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}



























































