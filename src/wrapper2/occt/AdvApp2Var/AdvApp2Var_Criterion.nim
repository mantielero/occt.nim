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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  AdvApp2Var_CriterionType, AdvApp2Var_CriterionRepartition,
  ../Standard/Standard_Boolean

discard "forward decl of AdvApp2Var_Patch"
discard "forward decl of AdvApp2Var_Context"
type
  AdvApp2Var_Criterion* {.importcpp: "AdvApp2Var_Criterion",
                         header: "AdvApp2Var_Criterion.hxx", bycopy.} = object


proc destroyAdvApp2Var_Criterion*(this: var AdvApp2Var_Criterion) {.
    importcpp: "#.~AdvApp2Var_Criterion()", header: "AdvApp2Var_Criterion.hxx".}
proc Value*(this: AdvApp2Var_Criterion; P: var AdvApp2Var_Patch; C: AdvApp2Var_Context) {.
    noSideEffect, importcpp: "Value", header: "AdvApp2Var_Criterion.hxx".}
proc IsSatisfied*(this: AdvApp2Var_Criterion; P: AdvApp2Var_Patch): Standard_Boolean {.
    noSideEffect, importcpp: "IsSatisfied", header: "AdvApp2Var_Criterion.hxx".}
proc MaxValue*(this: AdvApp2Var_Criterion): Standard_Real {.noSideEffect,
    importcpp: "MaxValue", header: "AdvApp2Var_Criterion.hxx".}
proc Type*(this: AdvApp2Var_Criterion): AdvApp2Var_CriterionType {.noSideEffect,
    importcpp: "Type", header: "AdvApp2Var_Criterion.hxx".}
proc Repartition*(this: AdvApp2Var_Criterion): AdvApp2Var_CriterionRepartition {.
    noSideEffect, importcpp: "Repartition", header: "AdvApp2Var_Criterion.hxx".}