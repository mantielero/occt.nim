##  Created on: 1997-01-15
##  Created by: Joelle CHAUVET
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

discard "forward decl of AdvApp2Var_Patch"
discard "forward decl of AdvApp2Var_Context"
type
  AdvApp2VarCriterion* {.importcpp: "AdvApp2Var_Criterion",
                        header: "AdvApp2Var_Criterion.hxx", bycopy.} = object
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

proc destroyAdvApp2VarCriterion*(this: var AdvApp2VarCriterion) {.
    importcpp: "#.~AdvApp2Var_Criterion()", header: "AdvApp2Var_Criterion.hxx".}
proc value*(this: AdvApp2VarCriterion; p: var AdvApp2VarPatch; c: AdvApp2VarContext) {.
    noSideEffect, importcpp: "Value", header: "AdvApp2Var_Criterion.hxx".}
proc isSatisfied*(this: AdvApp2VarCriterion; p: AdvApp2VarPatch): bool {.noSideEffect,
    importcpp: "IsSatisfied", header: "AdvApp2Var_Criterion.hxx".}
proc maxValue*(this: AdvApp2VarCriterion): cfloat {.noSideEffect,
    importcpp: "MaxValue", header: "AdvApp2Var_Criterion.hxx".}
proc `type`*(this: AdvApp2VarCriterion): AdvApp2VarCriterionType {.noSideEffect,
    importcpp: "Type", header: "AdvApp2Var_Criterion.hxx".}
proc repartition*(this: AdvApp2VarCriterion): AdvApp2VarCriterionRepartition {.
    noSideEffect, importcpp: "Repartition", header: "AdvApp2Var_Criterion.hxx".}


























































