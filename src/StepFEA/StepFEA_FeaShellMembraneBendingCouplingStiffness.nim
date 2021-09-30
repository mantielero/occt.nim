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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_SymmetricTensor42d"
discard "forward decl of StepFEA_FeaShellMembraneBendingCouplingStiffness"
discard "forward decl of StepFEA_FeaShellMembraneBendingCouplingStiffness"
type
  HandleC1C1* = Handle[StepFEA_FeaShellMembraneBendingCouplingStiffness]

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
proc init*(this: var StepFEA_FeaShellMembraneBendingCouplingStiffness;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aFeaConstants: StepFEA_SymmetricTensor42d) {.importcpp: "Init",
    header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
proc feaConstants*(this: StepFEA_FeaShellMembraneBendingCouplingStiffness): StepFEA_SymmetricTensor42d {.
    noSideEffect, importcpp: "FeaConstants",
    header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
proc setFeaConstants*(this: var StepFEA_FeaShellMembraneBendingCouplingStiffness;
                     feaConstants: StepFEA_SymmetricTensor42d) {.
    importcpp: "SetFeaConstants",
    header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
type
  StepFEA_FeaShellMembraneBendingCouplingStiffnessbaseType* = StepFEA_FeaMaterialPropertyRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaShellMembraneBendingCouplingStiffness::get_type_name(@)", header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_FeaShellMembraneBendingCouplingStiffness::get_type_descriptor(@)",
    header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}
proc dynamicType*(this: StepFEA_FeaShellMembraneBendingCouplingStiffness): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx".}

























