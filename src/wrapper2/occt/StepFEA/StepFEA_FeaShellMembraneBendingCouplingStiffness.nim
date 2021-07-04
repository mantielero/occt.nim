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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_SymmetricTensor42d,
  StepFEA_FeaMaterialPropertyRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_SymmetricTensor42d"
discard "forward decl of StepFEA_FeaShellMembraneBendingCouplingStiffness"
discard "forward decl of StepFEA_FeaShellMembraneBendingCouplingStiffness"
type
  Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness* = handle[
      StepFEA_FeaShellMembraneBendingCouplingStiffness]

## ! Representation of STEP entity FeaShellMembraneBendingCouplingStiffness

type
  StepFEA_FeaShellMembraneBendingCouplingStiffness* {.
      importcpp: "StepFEA_FeaShellMembraneBendingCouplingStiffness",
      header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx", bycopy.} = object of StepFEA_FeaMaterialPropertyRepresentationItem ##
                                                                                                                                  ## !
                                                                                                                                  ## Empty
                                                                                                                                  ## constructor


proc constructStepFEA_FeaShellMembraneBendingCouplingStiffness*(): StepFEA_FeaShellMembraneBendingCouplingStiffness {.
    constructor,
    importcpp: "StepFEA_FeaShellMembraneBendingCouplingStiffness(@)",
    header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
proc Init*(this: var StepFEA_FeaShellMembraneBendingCouplingStiffness;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aFeaConstants: StepFEA_SymmetricTensor42d) {.importcpp: "Init",
    header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
proc FeaConstants*(this: StepFEA_FeaShellMembraneBendingCouplingStiffness): StepFEA_SymmetricTensor42d {.
    noSideEffect, importcpp: "FeaConstants",
    header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
proc SetFeaConstants*(this: var StepFEA_FeaShellMembraneBendingCouplingStiffness;
                     FeaConstants: StepFEA_SymmetricTensor42d) {.
    importcpp: "SetFeaConstants",
    header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
type
  StepFEA_FeaShellMembraneBendingCouplingStiffnessbase_type* = StepFEA_FeaMaterialPropertyRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaShellMembraneBendingCouplingStiffness::get_type_name(@)", header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_FeaShellMembraneBendingCouplingStiffness::get_type_descriptor(@)",
    header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
proc DynamicType*(this: StepFEA_FeaShellMembraneBendingCouplingStiffness): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}