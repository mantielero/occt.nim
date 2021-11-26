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

discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
discard "forward decl of StepFEA_ElementOrElementGroup"
discard "forward decl of StepElement_ElementAspect"
discard "forward decl of StepFEA_ElementGeometricRelationship"
discard "forward decl of StepFEA_ElementGeometricRelationship"
type
  HandleC1C1* = Handle[StepFEA_ElementGeometricRelationship]

## ! Representation of STEP entity ElementGeometricRelationship

type
  StepFEA_ElementGeometricRelationship* {.
      importcpp: "StepFEA_ElementGeometricRelationship",
      header: "StepFEA_ElementGeometricRelationship.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor


proc constructStepFEA_ElementGeometricRelationship*(): StepFEA_ElementGeometricRelationship {.
    constructor, importcpp: "StepFEA_ElementGeometricRelationship(@)",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc init*(this: var StepFEA_ElementGeometricRelationship;
          aElementRef: StepFEA_ElementOrElementGroup;
          aItem: Handle[StepElementAnalysisItemWithinRepresentation];
          aAspect: StepElementElementAspect) {.importcpp: "Init",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc elementRef*(this: StepFEA_ElementGeometricRelationship): StepFEA_ElementOrElementGroup {.
    noSideEffect, importcpp: "ElementRef",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc setElementRef*(this: var StepFEA_ElementGeometricRelationship;
                   elementRef: StepFEA_ElementOrElementGroup) {.
    importcpp: "SetElementRef", header: "StepFEA_ElementGeometricRelationship.hxx".}
proc item*(this: StepFEA_ElementGeometricRelationship): Handle[
    StepElementAnalysisItemWithinRepresentation] {.noSideEffect,
    importcpp: "Item", header: "StepFEA_ElementGeometricRelationship.hxx".}
proc setItem*(this: var StepFEA_ElementGeometricRelationship;
             item: Handle[StepElementAnalysisItemWithinRepresentation]) {.
    importcpp: "SetItem", header: "StepFEA_ElementGeometricRelationship.hxx".}
proc aspect*(this: StepFEA_ElementGeometricRelationship): StepElementElementAspect {.
    noSideEffect, importcpp: "Aspect",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc setAspect*(this: var StepFEA_ElementGeometricRelationship;
               aspect: StepElementElementAspect) {.importcpp: "SetAspect",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
type
  StepFEA_ElementGeometricRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepFEA_ElementGeometricRelationship::get_type_name(@)",
                            header: "StepFEA_ElementGeometricRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_ElementGeometricRelationship::get_type_descriptor(@)",
    header: "StepFEA_ElementGeometricRelationship.hxx".}
proc dynamicType*(this: StepFEA_ElementGeometricRelationship): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_ElementGeometricRelationship.hxx".}