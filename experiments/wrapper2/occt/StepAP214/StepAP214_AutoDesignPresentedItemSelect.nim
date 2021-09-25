##  Created on: 1997-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_RepresentationRelationship"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepBasic_DocumentRelationship"
type
  StepAP214AutoDesignPresentedItemSelect* {.
      importcpp: "StepAP214_AutoDesignPresentedItemSelect",
      header: "StepAP214_AutoDesignPresentedItemSelect.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## AutoDesignPresentedItemSelect
                                                                                              ## SelectType


proc constructStepAP214AutoDesignPresentedItemSelect*(): StepAP214AutoDesignPresentedItemSelect {.
    constructor, importcpp: "StepAP214_AutoDesignPresentedItemSelect(@)",
    header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc caseNum*(this: StepAP214AutoDesignPresentedItemSelect;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc productDefinitionRelationship*(this: StepAP214AutoDesignPresentedItemSelect): Handle[
    StepBasicProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc productDefinition*(this: StepAP214AutoDesignPresentedItemSelect): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc productDefinitionShape*(this: StepAP214AutoDesignPresentedItemSelect): Handle[
    StepReprProductDefinitionShape] {.noSideEffect,
                                     importcpp: "ProductDefinitionShape", header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc representationRelationship*(this: StepAP214AutoDesignPresentedItemSelect): Handle[
    StepReprRepresentationRelationship] {.noSideEffect,
    importcpp: "RepresentationRelationship",
    header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc shapeAspect*(this: StepAP214AutoDesignPresentedItemSelect): Handle[
    StepReprShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                          header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc documentRelationship*(this: StepAP214AutoDesignPresentedItemSelect): Handle[
    StepBasicDocumentRelationship] {.noSideEffect,
                                    importcpp: "DocumentRelationship", header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
