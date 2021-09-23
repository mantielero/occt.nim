##  Created on: 1996-04-10
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray2OfReal,
  AdvApp2Var_EvaluatorFunc2Var, ../TColgp/TColgp_HArray2OfPnt

discard "forward decl of AdvApp2Var_Context"
discard "forward decl of AdvApp2Var_Framework"
discard "forward decl of AdvApp2Var_Criterion"
type
  AdvApp2Var_Patch* {.importcpp: "AdvApp2Var_Patch",
                     header: "AdvApp2Var_Patch.hxx", bycopy.} = object of Standard_Transient

  AdvApp2Var_Patchbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "AdvApp2Var_Patch::get_type_name(@)",
                              header: "AdvApp2Var_Patch.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AdvApp2Var_Patch::get_type_descriptor(@)",
    header: "AdvApp2Var_Patch.hxx".}
proc DynamicType*(this: AdvApp2Var_Patch): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AdvApp2Var_Patch.hxx".}
proc constructAdvApp2Var_Patch*(): AdvApp2Var_Patch {.constructor,
    importcpp: "AdvApp2Var_Patch(@)", header: "AdvApp2Var_Patch.hxx".}
proc constructAdvApp2Var_Patch*(U0: Standard_Real; U1: Standard_Real;
                               V0: Standard_Real; V1: Standard_Real;
                               iu: Standard_Integer; iv: Standard_Integer): AdvApp2Var_Patch {.
    constructor, importcpp: "AdvApp2Var_Patch(@)", header: "AdvApp2Var_Patch.hxx".}
proc IsDiscretised*(this: AdvApp2Var_Patch): Standard_Boolean {.noSideEffect,
    importcpp: "IsDiscretised", header: "AdvApp2Var_Patch.hxx".}
proc Discretise*(this: var AdvApp2Var_Patch; Conditions: AdvApp2Var_Context;
                Constraints: AdvApp2Var_Framework;
                `func`: AdvApp2Var_EvaluatorFunc2Var) {.importcpp: "Discretise",
    header: "AdvApp2Var_Patch.hxx".}
proc IsApproximated*(this: AdvApp2Var_Patch): Standard_Boolean {.noSideEffect,
    importcpp: "IsApproximated", header: "AdvApp2Var_Patch.hxx".}
proc HasResult*(this: AdvApp2Var_Patch): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "AdvApp2Var_Patch.hxx".}
proc MakeApprox*(this: var AdvApp2Var_Patch; Conditions: AdvApp2Var_Context;
                Constraints: AdvApp2Var_Framework; NumDec: Standard_Integer) {.
    importcpp: "MakeApprox", header: "AdvApp2Var_Patch.hxx".}
proc AddConstraints*(this: var AdvApp2Var_Patch; Conditions: AdvApp2Var_Context;
                    Constraints: AdvApp2Var_Framework) {.
    importcpp: "AddConstraints", header: "AdvApp2Var_Patch.hxx".}
proc AddErrors*(this: var AdvApp2Var_Patch; Constraints: AdvApp2Var_Framework) {.
    importcpp: "AddErrors", header: "AdvApp2Var_Patch.hxx".}
proc ChangeDomain*(this: var AdvApp2Var_Patch; a: Standard_Real; b: Standard_Real;
                  c: Standard_Real; d: Standard_Real) {.importcpp: "ChangeDomain",
    header: "AdvApp2Var_Patch.hxx".}
proc ResetApprox*(this: var AdvApp2Var_Patch) {.importcpp: "ResetApprox",
    header: "AdvApp2Var_Patch.hxx".}
proc OverwriteApprox*(this: var AdvApp2Var_Patch) {.importcpp: "OverwriteApprox",
    header: "AdvApp2Var_Patch.hxx".}
proc U0*(this: AdvApp2Var_Patch): Standard_Real {.noSideEffect, importcpp: "U0",
    header: "AdvApp2Var_Patch.hxx".}
proc U1*(this: AdvApp2Var_Patch): Standard_Real {.noSideEffect, importcpp: "U1",
    header: "AdvApp2Var_Patch.hxx".}
proc V0*(this: AdvApp2Var_Patch): Standard_Real {.noSideEffect, importcpp: "V0",
    header: "AdvApp2Var_Patch.hxx".}
proc V1*(this: AdvApp2Var_Patch): Standard_Real {.noSideEffect, importcpp: "V1",
    header: "AdvApp2Var_Patch.hxx".}
proc UOrder*(this: AdvApp2Var_Patch): Standard_Integer {.noSideEffect,
    importcpp: "UOrder", header: "AdvApp2Var_Patch.hxx".}
proc VOrder*(this: AdvApp2Var_Patch): Standard_Integer {.noSideEffect,
    importcpp: "VOrder", header: "AdvApp2Var_Patch.hxx".}
proc CutSense*(this: AdvApp2Var_Patch): Standard_Integer {.noSideEffect,
    importcpp: "CutSense", header: "AdvApp2Var_Patch.hxx".}
proc CutSense*(this: AdvApp2Var_Patch; Crit: AdvApp2Var_Criterion;
              NumDec: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "CutSense", header: "AdvApp2Var_Patch.hxx".}
proc NbCoeffInU*(this: AdvApp2Var_Patch): Standard_Integer {.noSideEffect,
    importcpp: "NbCoeffInU", header: "AdvApp2Var_Patch.hxx".}
proc NbCoeffInV*(this: AdvApp2Var_Patch): Standard_Integer {.noSideEffect,
    importcpp: "NbCoeffInV", header: "AdvApp2Var_Patch.hxx".}
proc ChangeNbCoeff*(this: var AdvApp2Var_Patch; NbCoeffU: Standard_Integer;
                   NbCoeffV: Standard_Integer) {.importcpp: "ChangeNbCoeff",
    header: "AdvApp2Var_Patch.hxx".}
proc Poles*(this: AdvApp2Var_Patch; SSPIndex: Standard_Integer;
           Conditions: AdvApp2Var_Context): handle[TColgp_HArray2OfPnt] {.
    noSideEffect, importcpp: "Poles", header: "AdvApp2Var_Patch.hxx".}
proc Coefficients*(this: AdvApp2Var_Patch; SSPIndex: Standard_Integer;
                  Conditions: AdvApp2Var_Context): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "Coefficients", header: "AdvApp2Var_Patch.hxx".}
proc MaxErrors*(this: AdvApp2Var_Patch): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "MaxErrors", header: "AdvApp2Var_Patch.hxx".}
proc AverageErrors*(this: AdvApp2Var_Patch): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "AverageErrors", header: "AdvApp2Var_Patch.hxx".}
proc IsoErrors*(this: AdvApp2Var_Patch): handle[TColStd_HArray2OfReal] {.
    noSideEffect, importcpp: "IsoErrors", header: "AdvApp2Var_Patch.hxx".}
proc CritValue*(this: AdvApp2Var_Patch): Standard_Real {.noSideEffect,
    importcpp: "CritValue", header: "AdvApp2Var_Patch.hxx".}
proc SetCritValue*(this: var AdvApp2Var_Patch; dist: Standard_Real) {.
    importcpp: "SetCritValue", header: "AdvApp2Var_Patch.hxx".}