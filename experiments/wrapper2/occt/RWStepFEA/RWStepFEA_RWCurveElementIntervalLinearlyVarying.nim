##  Created on: 2003-01-22
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of StepFEA_CurveElementIntervalLinearlyVarying"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepFEA_RWCurveElementIntervalLinearlyVarying* {.
      importcpp: "RWStepFEA_RWCurveElementIntervalLinearlyVarying",
      header: "RWStepFEA_RWCurveElementIntervalLinearlyVarying.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructRWStepFEA_RWCurveElementIntervalLinearlyVarying*(): RWStepFEA_RWCurveElementIntervalLinearlyVarying {.
    constructor, importcpp: "RWStepFEA_RWCurveElementIntervalLinearlyVarying(@)",
    header: "RWStepFEA_RWCurveElementIntervalLinearlyVarying.hxx".}
proc readStep*(this: RWStepFEA_RWCurveElementIntervalLinearlyVarying;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepFEA_CurveElementIntervalLinearlyVarying]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepFEA_RWCurveElementIntervalLinearlyVarying.hxx".}
proc writeStep*(this: RWStepFEA_RWCurveElementIntervalLinearlyVarying;
               sw: var StepDataStepWriter;
               ent: Handle[StepFEA_CurveElementIntervalLinearlyVarying]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepFEA_RWCurveElementIntervalLinearlyVarying.hxx".}
proc share*(this: RWStepFEA_RWCurveElementIntervalLinearlyVarying;
           ent: Handle[StepFEA_CurveElementIntervalLinearlyVarying];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepFEA_RWCurveElementIntervalLinearlyVarying.hxx".}

























