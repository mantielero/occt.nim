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
discard "forward decl of StepFEA_FeaShellMembraneStiffness"
discard "forward decl of StepFEA_FeaShellMembraneStiffness"
type
  Handle_StepFEA_FeaShellMembraneStiffness* = handle[
      StepFEA_FeaShellMembraneStiffness]

## ! Representation of STEP entity FeaShellMembraneStiffness

type
  StepFEA_FeaShellMembraneStiffness* {.importcpp: "StepFEA_FeaShellMembraneStiffness", header: "StepFEA_FeaShellMembraneStiffness.hxx",
                                      bycopy.} = object of StepFEA_FeaMaterialPropertyRepresentationItem ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepFEA_FeaShellMembraneStiffness*(): StepFEA_FeaShellMembraneStiffness {.
    constructor, importcpp: "StepFEA_FeaShellMembraneStiffness(@)",
    header: "StepFEA_FeaShellMembraneStiffness.hxx".}
proc Init*(this: var StepFEA_FeaShellMembraneStiffness;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aFeaConstants: StepFEA_SymmetricTensor42d) {.importcpp: "Init",
    header: "StepFEA_FeaShellMembraneStiffness.hxx".}
proc FeaConstants*(this: StepFEA_FeaShellMembraneStiffness): StepFEA_SymmetricTensor42d {.
    noSideEffect, importcpp: "FeaConstants",
    header: "StepFEA_FeaShellMembraneStiffness.hxx".}
proc SetFeaConstants*(this: var StepFEA_FeaShellMembraneStiffness;
                     FeaConstants: StepFEA_SymmetricTensor42d) {.
    importcpp: "SetFeaConstants", header: "StepFEA_FeaShellMembraneStiffness.hxx".}
type
  StepFEA_FeaShellMembraneStiffnessbase_type* = StepFEA_FeaMaterialPropertyRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaShellMembraneStiffness::get_type_name(@)",
                              header: "StepFEA_FeaShellMembraneStiffness.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_FeaShellMembraneStiffness::get_type_descriptor(@)",
    header: "StepFEA_FeaShellMembraneStiffness.hxx".}
proc DynamicType*(this: StepFEA_FeaShellMembraneStiffness): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FeaShellMembraneStiffness.hxx".}