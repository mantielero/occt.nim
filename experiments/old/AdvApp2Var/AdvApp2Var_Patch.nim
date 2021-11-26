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

discard "forward decl of AdvApp2Var_Context"
discard "forward decl of AdvApp2Var_Framework"
discard "forward decl of AdvApp2Var_Criterion"
type
  AdvApp2VarPatch* {.importcpp: "AdvApp2Var_Patch", header: "AdvApp2Var_Patch.hxx",
                    bycopy.} = object of StandardTransient

  AdvApp2VarPatchbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "AdvApp2Var_Patch::get_type_name(@)",
                            header: "AdvApp2Var_Patch.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AdvApp2Var_Patch::get_type_descriptor(@)",
    header: "AdvApp2Var_Patch.hxx".}
proc dynamicType*(this: AdvApp2VarPatch): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AdvApp2Var_Patch.hxx".}
proc constructAdvApp2VarPatch*(): AdvApp2VarPatch {.constructor,
    importcpp: "AdvApp2Var_Patch(@)", header: "AdvApp2Var_Patch.hxx".}
proc constructAdvApp2VarPatch*(u0: cfloat; u1: cfloat; v0: cfloat; v1: cfloat; iu: cint;
                              iv: cint): AdvApp2VarPatch {.constructor,
    importcpp: "AdvApp2Var_Patch(@)", header: "AdvApp2Var_Patch.hxx".}
proc isDiscretised*(this: AdvApp2VarPatch): bool {.noSideEffect,
    importcpp: "IsDiscretised", header: "AdvApp2Var_Patch.hxx".}
proc discretise*(this: var AdvApp2VarPatch; conditions: AdvApp2VarContext;
                constraints: AdvApp2VarFramework;
                `func`: AdvApp2VarEvaluatorFunc2Var) {.importcpp: "Discretise",
    header: "AdvApp2Var_Patch.hxx".}
proc isApproximated*(this: AdvApp2VarPatch): bool {.noSideEffect,
    importcpp: "IsApproximated", header: "AdvApp2Var_Patch.hxx".}
proc hasResult*(this: AdvApp2VarPatch): bool {.noSideEffect, importcpp: "HasResult",
    header: "AdvApp2Var_Patch.hxx".}
proc makeApprox*(this: var AdvApp2VarPatch; conditions: AdvApp2VarContext;
                constraints: AdvApp2VarFramework; numDec: cint) {.
    importcpp: "MakeApprox", header: "AdvApp2Var_Patch.hxx".}
proc addConstraints*(this: var AdvApp2VarPatch; conditions: AdvApp2VarContext;
                    constraints: AdvApp2VarFramework) {.
    importcpp: "AddConstraints", header: "AdvApp2Var_Patch.hxx".}
proc addErrors*(this: var AdvApp2VarPatch; constraints: AdvApp2VarFramework) {.
    importcpp: "AddErrors", header: "AdvApp2Var_Patch.hxx".}
proc changeDomain*(this: var AdvApp2VarPatch; a: cfloat; b: cfloat; c: cfloat; d: cfloat) {.
    importcpp: "ChangeDomain", header: "AdvApp2Var_Patch.hxx".}
proc resetApprox*(this: var AdvApp2VarPatch) {.importcpp: "ResetApprox",
    header: "AdvApp2Var_Patch.hxx".}
proc overwriteApprox*(this: var AdvApp2VarPatch) {.importcpp: "OverwriteApprox",
    header: "AdvApp2Var_Patch.hxx".}
proc u0*(this: AdvApp2VarPatch): cfloat {.noSideEffect, importcpp: "U0",
                                      header: "AdvApp2Var_Patch.hxx".}
proc u1*(this: AdvApp2VarPatch): cfloat {.noSideEffect, importcpp: "U1",
                                      header: "AdvApp2Var_Patch.hxx".}
proc v0*(this: AdvApp2VarPatch): cfloat {.noSideEffect, importcpp: "V0",
                                      header: "AdvApp2Var_Patch.hxx".}
proc v1*(this: AdvApp2VarPatch): cfloat {.noSideEffect, importcpp: "V1",
                                      header: "AdvApp2Var_Patch.hxx".}
proc uOrder*(this: AdvApp2VarPatch): cint {.noSideEffect, importcpp: "UOrder",
                                        header: "AdvApp2Var_Patch.hxx".}
proc vOrder*(this: AdvApp2VarPatch): cint {.noSideEffect, importcpp: "VOrder",
                                        header: "AdvApp2Var_Patch.hxx".}
proc cutSense*(this: AdvApp2VarPatch): cint {.noSideEffect, importcpp: "CutSense",
    header: "AdvApp2Var_Patch.hxx".}
proc cutSense*(this: AdvApp2VarPatch; crit: AdvApp2VarCriterion; numDec: cint): cint {.
    noSideEffect, importcpp: "CutSense", header: "AdvApp2Var_Patch.hxx".}
proc nbCoeffInU*(this: AdvApp2VarPatch): cint {.noSideEffect,
    importcpp: "NbCoeffInU", header: "AdvApp2Var_Patch.hxx".}
proc nbCoeffInV*(this: AdvApp2VarPatch): cint {.noSideEffect,
    importcpp: "NbCoeffInV", header: "AdvApp2Var_Patch.hxx".}
proc changeNbCoeff*(this: var AdvApp2VarPatch; nbCoeffU: cint; nbCoeffV: cint) {.
    importcpp: "ChangeNbCoeff", header: "AdvApp2Var_Patch.hxx".}
proc poles*(this: AdvApp2VarPatch; sSPIndex: cint; conditions: AdvApp2VarContext): Handle[
    TColgpHArray2OfPnt] {.noSideEffect, importcpp: "Poles",
                         header: "AdvApp2Var_Patch.hxx".}
proc coefficients*(this: AdvApp2VarPatch; sSPIndex: cint;
                  conditions: AdvApp2VarContext): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "Coefficients", header: "AdvApp2Var_Patch.hxx".}
proc maxErrors*(this: AdvApp2VarPatch): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "MaxErrors", header: "AdvApp2Var_Patch.hxx".}
proc averageErrors*(this: AdvApp2VarPatch): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "AverageErrors", header: "AdvApp2Var_Patch.hxx".}
proc isoErrors*(this: AdvApp2VarPatch): Handle[TColStdHArray2OfReal] {.noSideEffect,
    importcpp: "IsoErrors", header: "AdvApp2Var_Patch.hxx".}
proc critValue*(this: AdvApp2VarPatch): cfloat {.noSideEffect,
    importcpp: "CritValue", header: "AdvApp2Var_Patch.hxx".}
proc setCritValue*(this: var AdvApp2VarPatch; dist: cfloat) {.
    importcpp: "SetCritValue", header: "AdvApp2Var_Patch.hxx".}

























