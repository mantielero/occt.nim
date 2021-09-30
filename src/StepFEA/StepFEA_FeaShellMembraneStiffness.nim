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
discard "forward decl of StepFEA_FeaShellMembraneStiffness"
discard "forward decl of StepFEA_FeaShellMembraneStiffness"
type
  HandleC1C1* = Handle[StepFEA_FeaShellMembraneStiffness]

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
proc init*(this: var StepFEA_FeaShellMembraneStiffness;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aFeaConstants: StepFEA_SymmetricTensor42d) {.importcpp: "Init",
    header: "StepFEA_FeaShellMembraneStiffness.hxx".}
proc feaConstants*(this: StepFEA_FeaShellMembraneStiffness): StepFEA_SymmetricTensor42d {.
    noSideEffect, importcpp: "FeaConstants",
    header: "StepFEA_FeaShellMembraneStiffness.hxx".}
proc setFeaConstants*(this: var StepFEA_FeaShellMembraneStiffness;
                     feaConstants: StepFEA_SymmetricTensor42d) {.
    importcpp: "SetFeaConstants", header: "StepFEA_FeaShellMembraneStiffness.hxx".}
type
  StepFEA_FeaShellMembraneStiffnessbaseType* = StepFEA_FeaMaterialPropertyRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaShellMembraneStiffness::get_type_name(@)",
                            header: "StepFEA_FeaShellMembraneStiffness.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_FeaShellMembraneStiffness::get_type_descriptor(@)",
    header: "StepFEA_FeaShellMembraneStiffness.hxx".}
proc dynamicType*(this: StepFEA_FeaShellMembraneStiffness): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FeaShellMembraneStiffness.hxx".}

























