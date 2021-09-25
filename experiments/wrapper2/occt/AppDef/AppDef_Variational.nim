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
  AppDefVariational* {.importcpp: "AppDef_Variational",
                      header: "AppDef_Variational.hxx", bycopy.} = object ## !
                                                                     ## Constructor.
                                                                     ## !
                                                                     ## Initialization of   the   fields.
                                                                     ## ! warning :  Nc0 : number of
                                                                     ## PassagePoint consraints
                                                                     ## ! Nc2 : number  of
                                                                     ## TangencyPoint constraints
                                                                     ## ! Nc3 : number of
                                                                     ## CurvaturePoint   constraints
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


proc constructAppDefVariational*(ssp: AppDefMultiLine; firstPoint: int;
                                lastPoint: int; theConstraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; maxDegree: int = 14;
                                maxSegment: int = 100;
                                continuity: GeomAbsShape = geomAbsC2;
                                withMinMax: bool = false; withCutting: bool = true;
                                tolerance: float = 1.0; nbIterations: int = 2): AppDefVariational {.
    constructor, importcpp: "AppDef_Variational(@)",
    header: "AppDef_Variational.hxx".}
proc approximate*(this: var AppDefVariational) {.importcpp: "Approximate",
    header: "AppDef_Variational.hxx".}
proc isCreated*(this: AppDefVariational): bool {.noSideEffect,
    importcpp: "IsCreated", header: "AppDef_Variational.hxx".}
proc isDone*(this: AppDefVariational): bool {.noSideEffect, importcpp: "IsDone",
    header: "AppDef_Variational.hxx".}
proc isOverConstrained*(this: AppDefVariational): bool {.noSideEffect,
    importcpp: "IsOverConstrained", header: "AppDef_Variational.hxx".}
proc value*(this: AppDefVariational): AppParCurvesMultiBSpCurve {.noSideEffect,
    importcpp: "Value", header: "AppDef_Variational.hxx".}
proc maxError*(this: AppDefVariational): float {.noSideEffect, importcpp: "MaxError",
    header: "AppDef_Variational.hxx".}
proc maxErrorIndex*(this: AppDefVariational): int {.noSideEffect,
    importcpp: "MaxErrorIndex", header: "AppDef_Variational.hxx".}
proc quadraticError*(this: AppDefVariational): float {.noSideEffect,
    importcpp: "QuadraticError", header: "AppDef_Variational.hxx".}
proc distance*(this: var AppDefVariational; mat: var MathMatrix) {.
    importcpp: "Distance", header: "AppDef_Variational.hxx".}
proc averageError*(this: AppDefVariational): float {.noSideEffect,
    importcpp: "AverageError", header: "AppDef_Variational.hxx".}
proc parameters*(this: AppDefVariational): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "Parameters", header: "AppDef_Variational.hxx".}
proc knots*(this: AppDefVariational): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "Knots", header: "AppDef_Variational.hxx".}
proc criterium*(this: AppDefVariational; vFirstOrder: var float;
               vSecondOrder: var float; vThirdOrder: var float) {.noSideEffect,
    importcpp: "Criterium", header: "AppDef_Variational.hxx".}
proc criteriumWeight*(this: AppDefVariational; percent1: var float;
                     percent2: var float; percent3: var float) {.noSideEffect,
    importcpp: "CriteriumWeight", header: "AppDef_Variational.hxx".}
proc maxDegree*(this: AppDefVariational): int {.noSideEffect, importcpp: "MaxDegree",
    header: "AppDef_Variational.hxx".}
proc maxSegment*(this: AppDefVariational): int {.noSideEffect,
    importcpp: "MaxSegment", header: "AppDef_Variational.hxx".}
proc continuity*(this: AppDefVariational): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "AppDef_Variational.hxx".}
proc withMinMax*(this: AppDefVariational): bool {.noSideEffect,
    importcpp: "WithMinMax", header: "AppDef_Variational.hxx".}
proc withCutting*(this: AppDefVariational): bool {.noSideEffect,
    importcpp: "WithCutting", header: "AppDef_Variational.hxx".}
proc tolerance*(this: AppDefVariational): float {.noSideEffect,
    importcpp: "Tolerance", header: "AppDef_Variational.hxx".}
proc nbIterations*(this: AppDefVariational): int {.noSideEffect,
    importcpp: "NbIterations", header: "AppDef_Variational.hxx".}
proc dump*(this: AppDefVariational; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AppDef_Variational.hxx".}
proc setConstraints*(this: var AppDefVariational;
                    aConstrainst: Handle[AppParCurvesHArray1OfConstraintCouple]): bool {.
    importcpp: "SetConstraints", header: "AppDef_Variational.hxx".}
proc setParameters*(this: var AppDefVariational; param: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetParameters", header: "AppDef_Variational.hxx".}
proc setKnots*(this: var AppDefVariational; knots: Handle[TColStdHArray1OfReal]): bool {.
    importcpp: "SetKnots", header: "AppDef_Variational.hxx".}
proc setMaxDegree*(this: var AppDefVariational; degree: int): bool {.
    importcpp: "SetMaxDegree", header: "AppDef_Variational.hxx".}
proc setMaxSegment*(this: var AppDefVariational; nbSegment: int): bool {.
    importcpp: "SetMaxSegment", header: "AppDef_Variational.hxx".}
proc setContinuity*(this: var AppDefVariational; c: GeomAbsShape): bool {.
    importcpp: "SetContinuity", header: "AppDef_Variational.hxx".}
proc setWithMinMax*(this: var AppDefVariational; minMax: bool) {.
    importcpp: "SetWithMinMax", header: "AppDef_Variational.hxx".}
proc setWithCutting*(this: var AppDefVariational; cutting: bool): bool {.
    importcpp: "SetWithCutting", header: "AppDef_Variational.hxx".}
proc setCriteriumWeight*(this: var AppDefVariational; percent1: float;
                        percent2: float; percent3: float) {.
    importcpp: "SetCriteriumWeight", header: "AppDef_Variational.hxx".}
proc setCriteriumWeight*(this: var AppDefVariational; order: int; percent: float) {.
    importcpp: "SetCriteriumWeight", header: "AppDef_Variational.hxx".}
proc setTolerance*(this: var AppDefVariational; tol: float) {.
    importcpp: "SetTolerance", header: "AppDef_Variational.hxx".}
proc setNbIterations*(this: var AppDefVariational; iter: int) {.
    importcpp: "SetNbIterations", header: "AppDef_Variational.hxx".}
