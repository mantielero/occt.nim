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
discard "forward decl of StepFEA_SymmetricTensor43d"
discard "forward decl of StepFEA_FeaLinearElasticity"
discard "forward decl of StepFEA_FeaLinearElasticity"
type
  HandleC1C1* = Handle[StepFEA_FeaLinearElasticity]

## ! Representation of STEP entity FeaLinearElasticity

type
  StepFEA_FeaLinearElasticity* {.importcpp: "StepFEA_FeaLinearElasticity",
                                header: "StepFEA_FeaLinearElasticity.hxx", bycopy.} = object of StepFEA_FeaMaterialPropertyRepresentationItem ##
                                                                                                                                       ## !
                                                                                                                                       ## Empty
                                                                                                                                       ## constructor


proc constructStepFEA_FeaLinearElasticity*(): StepFEA_FeaLinearElasticity {.
    constructor, importcpp: "StepFEA_FeaLinearElasticity(@)",
    header: "StepFEA_FeaLinearElasticity.hxx".}
proc init*(this: var StepFEA_FeaLinearElasticity;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aFeaConstants: StepFEA_SymmetricTensor43d) {.importcpp: "Init",
    header: "StepFEA_FeaLinearElasticity.hxx".}
proc feaConstants*(this: StepFEA_FeaLinearElasticity): StepFEA_SymmetricTensor43d {.
    noSideEffect, importcpp: "FeaConstants",
    header: "StepFEA_FeaLinearElasticity.hxx".}
proc setFeaConstants*(this: var StepFEA_FeaLinearElasticity;
                     feaConstants: StepFEA_SymmetricTensor43d) {.
    importcpp: "SetFeaConstants", header: "StepFEA_FeaLinearElasticity.hxx".}
type
  StepFEA_FeaLinearElasticitybaseType* = StepFEA_FeaMaterialPropertyRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaLinearElasticity::get_type_name(@)",
                            header: "StepFEA_FeaLinearElasticity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_FeaLinearElasticity::get_type_descriptor(@)",
    header: "StepFEA_FeaLinearElasticity.hxx".}
proc dynamicType*(this: StepFEA_FeaLinearElasticity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FeaLinearElasticity.hxx".}