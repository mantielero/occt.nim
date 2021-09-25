##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
type
  StepReprShapeDefinition* {.importcpp: "StepRepr_ShapeDefinition",
                            header: "StepRepr_ShapeDefinition.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## ShapeDefinition
                                                                                                     ## SelectType


proc constructStepReprShapeDefinition*(): StepReprShapeDefinition {.constructor,
    importcpp: "StepRepr_ShapeDefinition(@)",
    header: "StepRepr_ShapeDefinition.hxx".}
proc caseNum*(this: StepReprShapeDefinition; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepRepr_ShapeDefinition.hxx".}
proc productDefinitionShape*(this: StepReprShapeDefinition): Handle[
    StepReprProductDefinitionShape] {.noSideEffect,
                                     importcpp: "ProductDefinitionShape",
                                     header: "StepRepr_ShapeDefinition.hxx".}
proc shapeAspect*(this: StepReprShapeDefinition): Handle[StepReprShapeAspect] {.
    noSideEffect, importcpp: "ShapeAspect", header: "StepRepr_ShapeDefinition.hxx".}
proc shapeAspectRelationship*(this: StepReprShapeDefinition): Handle[
    StepReprShapeAspectRelationship] {.noSideEffect,
                                      importcpp: "ShapeAspectRelationship",
                                      header: "StepRepr_ShapeDefinition.hxx".}
