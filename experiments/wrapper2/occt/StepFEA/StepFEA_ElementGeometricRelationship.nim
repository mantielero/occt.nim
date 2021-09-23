##  Created on: 2003-02-04
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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_ElementOrElementGroup,
  ../StepElement/StepElement_ElementAspect, ../Standard/Standard_Transient

discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
discard "forward decl of StepFEA_ElementOrElementGroup"
discard "forward decl of StepElement_ElementAspect"
discard "forward decl of StepFEA_ElementGeometricRelationship"
discard "forward decl of StepFEA_ElementGeometricRelationship"
type
  Handle_StepFEA_ElementGeometricRelationship* = handle[
      StepFEA_ElementGeometricRelationship]

## ! Representation of STEP entity ElementGeometricRelationship

type
  StepFEA_ElementGeometricRelationship* {.
      importcpp: "StepFEA_ElementGeometricRelationship",
      header: "StepFEA_ElementGeometricRelationship.hxx", bycopy.} = object of Standard_Transient ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepFEA_ElementGeometricRelationship*(): StepFEA_ElementGeometricRelationship {.
    constructor, importcpp: "StepFEA_ElementGeometricRelationship(@)",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc Init*(this: var StepFEA_ElementGeometricRelationship;
          aElementRef: StepFEA_ElementOrElementGroup;
          aItem: handle[StepElement_AnalysisItemWithinRepresentation];
          aAspect: StepElement_ElementAspect) {.importcpp: "Init",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc ElementRef*(this: StepFEA_ElementGeometricRelationship): StepFEA_ElementOrElementGroup {.
    noSideEffect, importcpp: "ElementRef",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc SetElementRef*(this: var StepFEA_ElementGeometricRelationship;
                   ElementRef: StepFEA_ElementOrElementGroup) {.
    importcpp: "SetElementRef", header: "StepFEA_ElementGeometricRelationship.hxx".}
proc Item*(this: StepFEA_ElementGeometricRelationship): handle[
    StepElement_AnalysisItemWithinRepresentation] {.noSideEffect,
    importcpp: "Item", header: "StepFEA_ElementGeometricRelationship.hxx".}
proc SetItem*(this: var StepFEA_ElementGeometricRelationship;
             Item: handle[StepElement_AnalysisItemWithinRepresentation]) {.
    importcpp: "SetItem", header: "StepFEA_ElementGeometricRelationship.hxx".}
proc Aspect*(this: StepFEA_ElementGeometricRelationship): StepElement_ElementAspect {.
    noSideEffect, importcpp: "Aspect",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc SetAspect*(this: var StepFEA_ElementGeometricRelationship;
               Aspect: StepElement_ElementAspect) {.importcpp: "SetAspect",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
type
  StepFEA_ElementGeometricRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepFEA_ElementGeometricRelationship::get_type_name(@)", header: "StepFEA_ElementGeometricRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_ElementGeometricRelationship::get_type_descriptor(@)",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc DynamicType*(this: StepFEA_ElementGeometricRelationship): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_ElementGeometricRelationship.hxx".}