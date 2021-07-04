##  Created on: 1996-05-14
##  Created by: Philippe MANGIN / Jeannine PANCIATICI
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
  ../Standard/Standard_Handle, AppDef_MultiLine, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfReal,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Boolean,
  ../AppParCurves/AppParCurves_MultiBSpCurve, ../Standard/Standard_OStream,
  ../TColStd/TColStd_Array1OfReal, ../math/math_Vector,
  ../AppParCurves/AppParCurves_Constraint

discard "forward decl of AppDef_SmoothCriterion"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
discard "forward decl of FEmTool_Curve"
discard "forward decl of FEmTool_Assembly"
discard "forward decl of PLib_Base"
type
  AppDef_Variational* {.importcpp: "AppDef_Variational",
                       header: "AppDef_Variational.hxx", bycopy.} = object ## !
                                                                      ## Constructor.
                                                                      ## !
                                                                      ## Initialization of   the   fields.
                                                                      ## ! warning :  Nc0 : number of
                                                                      ## PassagePoint consraints
                                                                      ## ! Nc2 : number  of
                                                                      ## TangencyPoint
                                                                      ## constraints
                                                                      ## ! Nc3 : number of
                                                                      ## CurvaturePoint
                                                                      ## constraints
                                                                      ## ! if
                                                                      ## !
                                                                      ## ((MaxDegree-Continuity)*MaxSegment -Nc0  - 2*Nc1
                                                                      ## ! -3*Nc2)
                                                                      ## ! is  negative
                                                                      ## ! The problem is
                                                                      ## over-constrained.
                                                                      ## !
                                                                      ## ! Limitation : The MultiLine from AppDef has to be composed by
                                                                      ## ! only one Line ( Dimension 2 or 3).


proc constructAppDef_Variational*(SSP: AppDef_MultiLine;
                                 FirstPoint: Standard_Integer;
                                 LastPoint: Standard_Integer; TheConstraints: handle[
    AppParCurves_HArray1OfConstraintCouple]; MaxDegree: Standard_Integer = 14;
                                 MaxSegment: Standard_Integer = 100;
                                 Continuity: GeomAbs_Shape = GeomAbs_C2;
                                 WithMinMax: Standard_Boolean = Standard_False;
                                 WithCutting: Standard_Boolean = Standard_True;
                                 Tolerance: Standard_Real = 1.0;
                                 NbIterations: Standard_Integer = 2): AppDef_Variational {.
    constructor, importcpp: "AppDef_Variational(@)",
    header: "AppDef_Variational.hxx".}
proc Approximate*(this: var AppDef_Variational) {.importcpp: "Approximate",
    header: "AppDef_Variational.hxx".}
proc IsCreated*(this: AppDef_Variational): Standard_Boolean {.noSideEffect,
    importcpp: "IsCreated", header: "AppDef_Variational.hxx".}
proc IsDone*(this: AppDef_Variational): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "AppDef_Variational.hxx".}
proc IsOverConstrained*(this: AppDef_Variational): Standard_Boolean {.noSideEffect,
    importcpp: "IsOverConstrained", header: "AppDef_Variational.hxx".}
proc Value*(this: AppDef_Variational): AppParCurves_MultiBSpCurve {.noSideEffect,
    importcpp: "Value", header: "AppDef_Variational.hxx".}
proc MaxError*(this: AppDef_Variational): Standard_Real {.noSideEffect,
    importcpp: "MaxError", header: "AppDef_Variational.hxx".}
proc MaxErrorIndex*(this: AppDef_Variational): Standard_Integer {.noSideEffect,
    importcpp: "MaxErrorIndex", header: "AppDef_Variational.hxx".}
proc QuadraticError*(this: AppDef_Variational): Standard_Real {.noSideEffect,
    importcpp: "QuadraticError", header: "AppDef_Variational.hxx".}
proc Distance*(this: var AppDef_Variational; mat: var math_Matrix) {.
    importcpp: "Distance", header: "AppDef_Variational.hxx".}
proc AverageError*(this: AppDef_Variational): Standard_Real {.noSideEffect,
    importcpp: "AverageError", header: "AppDef_Variational.hxx".}
proc Parameters*(this: AppDef_Variational): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "Parameters", header: "AppDef_Variational.hxx".}
proc Knots*(this: AppDef_Variational): handle[TColStd_HArray1OfReal] {.noSideEffect,
    importcpp: "Knots", header: "AppDef_Variational.hxx".}
proc Criterium*(this: AppDef_Variational; VFirstOrder: var Standard_Real;
               VSecondOrder: var Standard_Real; VThirdOrder: var Standard_Real) {.
    noSideEffect, importcpp: "Criterium", header: "AppDef_Variational.hxx".}
proc CriteriumWeight*(this: AppDef_Variational; Percent1: var Standard_Real;
                     Percent2: var Standard_Real; Percent3: var Standard_Real) {.
    noSideEffect, importcpp: "CriteriumWeight", header: "AppDef_Variational.hxx".}
proc MaxDegree*(this: AppDef_Variational): Standard_Integer {.noSideEffect,
    importcpp: "MaxDegree", header: "AppDef_Variational.hxx".}
proc MaxSegment*(this: AppDef_Variational): Standard_Integer {.noSideEffect,
    importcpp: "MaxSegment", header: "AppDef_Variational.hxx".}
proc Continuity*(this: AppDef_Variational): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "AppDef_Variational.hxx".}
proc WithMinMax*(this: AppDef_Variational): Standard_Boolean {.noSideEffect,
    importcpp: "WithMinMax", header: "AppDef_Variational.hxx".}
proc WithCutting*(this: AppDef_Variational): Standard_Boolean {.noSideEffect,
    importcpp: "WithCutting", header: "AppDef_Variational.hxx".}
proc Tolerance*(this: AppDef_Variational): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "AppDef_Variational.hxx".}
proc NbIterations*(this: AppDef_Variational): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "AppDef_Variational.hxx".}
proc Dump*(this: AppDef_Variational; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "AppDef_Variational.hxx".}
proc SetConstraints*(this: var AppDef_Variational; aConstrainst: handle[
    AppParCurves_HArray1OfConstraintCouple]): Standard_Boolean {.
    importcpp: "SetConstraints", header: "AppDef_Variational.hxx".}
proc SetParameters*(this: var AppDef_Variational;
                   param: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetParameters", header: "AppDef_Variational.hxx".}
proc SetKnots*(this: var AppDef_Variational; knots: handle[TColStd_HArray1OfReal]): Standard_Boolean {.
    importcpp: "SetKnots", header: "AppDef_Variational.hxx".}
proc SetMaxDegree*(this: var AppDef_Variational; Degree: Standard_Integer): Standard_Boolean {.
    importcpp: "SetMaxDegree", header: "AppDef_Variational.hxx".}
proc SetMaxSegment*(this: var AppDef_Variational; NbSegment: Standard_Integer): Standard_Boolean {.
    importcpp: "SetMaxSegment", header: "AppDef_Variational.hxx".}
proc SetContinuity*(this: var AppDef_Variational; C: GeomAbs_Shape): Standard_Boolean {.
    importcpp: "SetContinuity", header: "AppDef_Variational.hxx".}
proc SetWithMinMax*(this: var AppDef_Variational; MinMax: Standard_Boolean) {.
    importcpp: "SetWithMinMax", header: "AppDef_Variational.hxx".}
proc SetWithCutting*(this: var AppDef_Variational; Cutting: Standard_Boolean): Standard_Boolean {.
    importcpp: "SetWithCutting", header: "AppDef_Variational.hxx".}
proc SetCriteriumWeight*(this: var AppDef_Variational; Percent1: Standard_Real;
                        Percent2: Standard_Real; Percent3: Standard_Real) {.
    importcpp: "SetCriteriumWeight", header: "AppDef_Variational.hxx".}
proc SetCriteriumWeight*(this: var AppDef_Variational; Order: Standard_Integer;
                        Percent: Standard_Real) {.importcpp: "SetCriteriumWeight",
    header: "AppDef_Variational.hxx".}
proc SetTolerance*(this: var AppDef_Variational; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "AppDef_Variational.hxx".}
proc SetNbIterations*(this: var AppDef_Variational; Iter: Standard_Integer) {.
    importcpp: "SetNbIterations", header: "AppDef_Variational.hxx".}