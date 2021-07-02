##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepFEA_FeaSecantCoefficientOfLinearThermalExpansion"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion* {.
      importcpp: "RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion",
      header: "RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion.hxx",
      bycopy.} = object         ## ! Empty constructor


proc constructRWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion*(): RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion {.
    constructor,
    importcpp: "RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion(@)",
    header: "RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc readStep*(this: RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepFEA_FeaSecantCoefficientOfLinearThermalExpansion]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc writeStep*(this: RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion;
               sw: var StepDataStepWriter; ent: Handle[
    StepFEA_FeaSecantCoefficientOfLinearThermalExpansion]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc share*(this: RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion;
           ent: Handle[StepFEA_FeaSecantCoefficientOfLinearThermalExpansion];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion.hxx".}

