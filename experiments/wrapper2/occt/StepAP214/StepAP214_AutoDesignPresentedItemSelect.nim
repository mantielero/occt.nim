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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_RepresentationRelationship"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepBasic_DocumentRelationship"
type
  StepAP214_AutoDesignPresentedItemSelect* {.
      importcpp: "StepAP214_AutoDesignPresentedItemSelect",
      header: "StepAP214_AutoDesignPresentedItemSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## a
                                                                                               ## AutoDesignPresentedItemSelect
                                                                                               ## SelectType


proc constructStepAP214_AutoDesignPresentedItemSelect*(): StepAP214_AutoDesignPresentedItemSelect {.
    constructor, importcpp: "StepAP214_AutoDesignPresentedItemSelect(@)",
    header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc CaseNum*(this: StepAP214_AutoDesignPresentedItemSelect;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc ProductDefinitionRelationship*(this: StepAP214_AutoDesignPresentedItemSelect): handle[
    StepBasic_ProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc ProductDefinition*(this: StepAP214_AutoDesignPresentedItemSelect): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc ProductDefinitionShape*(this: StepAP214_AutoDesignPresentedItemSelect): handle[
    StepRepr_ProductDefinitionShape] {.noSideEffect,
                                      importcpp: "ProductDefinitionShape", header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc RepresentationRelationship*(this: StepAP214_AutoDesignPresentedItemSelect): handle[
    StepRepr_RepresentationRelationship] {.noSideEffect,
    importcpp: "RepresentationRelationship",
    header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc ShapeAspect*(this: StepAP214_AutoDesignPresentedItemSelect): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "ShapeAspect", header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}
proc DocumentRelationship*(this: StepAP214_AutoDesignPresentedItemSelect): handle[
    StepBasic_DocumentRelationship] {.noSideEffect,
                                     importcpp: "DocumentRelationship", header: "StepAP214_AutoDesignPresentedItemSelect.hxx".}