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

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_GeneralProperty"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_PropertyDefinitionRelationship"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
type
  StepReprRepresentedDefinition* {.importcpp: "StepRepr_RepresentedDefinition",
                                  header: "StepRepr_RepresentedDefinition.hxx",
                                  bycopy.} = object of StepDataSelectType ## ! Empty constructor


proc constructStepReprRepresentedDefinition*(): StepReprRepresentedDefinition {.
    constructor, importcpp: "StepRepr_RepresentedDefinition(@)",
    header: "StepRepr_RepresentedDefinition.hxx".}
proc caseNum*(this: StepReprRepresentedDefinition; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepRepr_RepresentedDefinition.hxx".}
proc generalProperty*(this: StepReprRepresentedDefinition): Handle[
    StepBasicGeneralProperty] {.noSideEffect, importcpp: "GeneralProperty",
                               header: "StepRepr_RepresentedDefinition.hxx".}
proc propertyDefinition*(this: StepReprRepresentedDefinition): Handle[
    StepReprPropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition",
                                 header: "StepRepr_RepresentedDefinition.hxx".}
proc propertyDefinitionRelationship*(this: StepReprRepresentedDefinition): Handle[
    StepReprPropertyDefinitionRelationship] {.noSideEffect,
    importcpp: "PropertyDefinitionRelationship",
    header: "StepRepr_RepresentedDefinition.hxx".}
proc shapeAspect*(this: StepReprRepresentedDefinition): Handle[StepReprShapeAspect] {.
    noSideEffect, importcpp: "ShapeAspect",
    header: "StepRepr_RepresentedDefinition.hxx".}
proc shapeAspectRelationship*(this: StepReprRepresentedDefinition): Handle[
    StepReprShapeAspectRelationship] {.noSideEffect,
                                      importcpp: "ShapeAspectRelationship", header: "StepRepr_RepresentedDefinition.hxx".}

























