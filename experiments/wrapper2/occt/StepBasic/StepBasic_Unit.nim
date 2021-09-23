##  Created on: 1999-09-08
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepBasic_DerivedUnit"
type
  StepBasic_Unit* {.importcpp: "StepBasic_Unit", header: "StepBasic_Unit.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## empty
                                                                                                              ## object


proc constructStepBasic_Unit*(): StepBasic_Unit {.constructor,
    importcpp: "StepBasic_Unit(@)", header: "StepBasic_Unit.hxx".}
proc CaseNum*(this: StepBasic_Unit; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_Unit.hxx".}
proc NamedUnit*(this: StepBasic_Unit): handle[StepBasic_NamedUnit] {.noSideEffect,
    importcpp: "NamedUnit", header: "StepBasic_Unit.hxx".}
proc DerivedUnit*(this: StepBasic_Unit): handle[StepBasic_DerivedUnit] {.
    noSideEffect, importcpp: "DerivedUnit", header: "StepBasic_Unit.hxx".}