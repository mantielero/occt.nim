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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_GeneralProperty"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_PropertyDefinitionRelationship"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
type
  StepRepr_RepresentedDefinition* {.importcpp: "StepRepr_RepresentedDefinition", header: "StepRepr_RepresentedDefinition.hxx",
                                   bycopy.} = object of StepData_SelectType ## ! Empty
                                                                       ## constructor


proc constructStepRepr_RepresentedDefinition*(): StepRepr_RepresentedDefinition {.
    constructor, importcpp: "StepRepr_RepresentedDefinition(@)",
    header: "StepRepr_RepresentedDefinition.hxx".}
proc CaseNum*(this: StepRepr_RepresentedDefinition; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepRepr_RepresentedDefinition.hxx".}
proc GeneralProperty*(this: StepRepr_RepresentedDefinition): handle[
    StepBasic_GeneralProperty] {.noSideEffect, importcpp: "GeneralProperty",
                                header: "StepRepr_RepresentedDefinition.hxx".}
proc PropertyDefinition*(this: StepRepr_RepresentedDefinition): handle[
    StepRepr_PropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition",
                                  header: "StepRepr_RepresentedDefinition.hxx".}
proc PropertyDefinitionRelationship*(this: StepRepr_RepresentedDefinition): handle[
    StepRepr_PropertyDefinitionRelationship] {.noSideEffect,
    importcpp: "PropertyDefinitionRelationship",
    header: "StepRepr_RepresentedDefinition.hxx".}
proc ShapeAspect*(this: StepRepr_RepresentedDefinition): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                           header: "StepRepr_RepresentedDefinition.hxx".}
proc ShapeAspectRelationship*(this: StepRepr_RepresentedDefinition): handle[
    StepRepr_ShapeAspectRelationship] {.noSideEffect,
                                       importcpp: "ShapeAspectRelationship", header: "StepRepr_RepresentedDefinition.hxx".}