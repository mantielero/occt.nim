##  Created on: 1995-12-04
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepData_StepWriter"
type
  RWStepBasicRWDimensionalExponents* {.importcpp: "RWStepBasic_RWDimensionalExponents", header: "RWStepBasic_RWDimensionalExponents.hxx",
                                      bycopy.} = object


proc constructRWStepBasicRWDimensionalExponents*(): RWStepBasicRWDimensionalExponents {.
    constructor, importcpp: "RWStepBasic_RWDimensionalExponents(@)",
    header: "RWStepBasic_RWDimensionalExponents.hxx".}
proc readStep*(this: RWStepBasicRWDimensionalExponents;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicDimensionalExponents]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWDimensionalExponents.hxx".}
proc writeStep*(this: RWStepBasicRWDimensionalExponents;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicDimensionalExponents]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWDimensionalExponents.hxx".}

