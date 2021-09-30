##  Created on: 2000-04-18
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_DimensionalLocation"
discard "forward decl of StepShape_DimensionalSize"
type
  StepShapeDimensionalCharacteristic* {.importcpp: "StepShape_DimensionalCharacteristic", header: "StepShape_DimensionalCharacteristic.hxx",
                                       bycopy.} = object of StepDataSelectType ## ! Empty
                                                                          ## constructor


proc constructStepShapeDimensionalCharacteristic*(): StepShapeDimensionalCharacteristic {.
    constructor, importcpp: "StepShape_DimensionalCharacteristic(@)",
    header: "StepShape_DimensionalCharacteristic.hxx".}
proc caseNum*(this: StepShapeDimensionalCharacteristic;
             ent: Handle[StandardTransient]): cint {.noSideEffect,
    importcpp: "CaseNum", header: "StepShape_DimensionalCharacteristic.hxx".}
proc dimensionalLocation*(this: StepShapeDimensionalCharacteristic): Handle[
    StepShapeDimensionalLocation] {.noSideEffect,
                                   importcpp: "DimensionalLocation", header: "StepShape_DimensionalCharacteristic.hxx".}
proc dimensionalSize*(this: StepShapeDimensionalCharacteristic): Handle[
    StepShapeDimensionalSize] {.noSideEffect, importcpp: "DimensionalSize", header: "StepShape_DimensionalCharacteristic.hxx".}

























