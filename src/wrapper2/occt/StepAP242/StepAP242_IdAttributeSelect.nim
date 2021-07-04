##  Created on: 2015-07-10
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_Action"
discard "forward decl of StepBasic_Address"
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepShape_DimensionalSize"
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepBasic_Group"
discard "forward decl of StepBasic_ProductCategory"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
type
  StepAP242_IdAttributeSelect* {.importcpp: "StepAP242_IdAttributeSelect",
                                header: "StepAP242_IdAttributeSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## a
                                                                                                             ## IdAttributeSelect
                                                                                                             ## select
                                                                                                             ## type


proc constructStepAP242_IdAttributeSelect*(): StepAP242_IdAttributeSelect {.
    constructor, importcpp: "StepAP242_IdAttributeSelect(@)",
    header: "StepAP242_IdAttributeSelect.hxx".}
proc CaseNum*(this: StepAP242_IdAttributeSelect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP242_IdAttributeSelect.hxx".}
proc Action*(this: StepAP242_IdAttributeSelect): handle[StepBasic_Action] {.
    noSideEffect, importcpp: "Action", header: "StepAP242_IdAttributeSelect.hxx".}
proc Address*(this: StepAP242_IdAttributeSelect): handle[StepBasic_Address] {.
    noSideEffect, importcpp: "Address", header: "StepAP242_IdAttributeSelect.hxx".}
proc ApplicationContext*(this: StepAP242_IdAttributeSelect): handle[
    StepBasic_ApplicationContext] {.noSideEffect, importcpp: "ApplicationContext",
                                   header: "StepAP242_IdAttributeSelect.hxx".}
proc DimensionalSize*(this: StepAP242_IdAttributeSelect): handle[
    StepShape_DimensionalSize] {.noSideEffect, importcpp: "DimensionalSize",
                                header: "StepAP242_IdAttributeSelect.hxx".}
proc GeometricTolerance*(this: StepAP242_IdAttributeSelect): handle[
    StepDimTol_GeometricTolerance] {.noSideEffect,
                                    importcpp: "GeometricTolerance",
                                    header: "StepAP242_IdAttributeSelect.hxx".}
proc Group*(this: StepAP242_IdAttributeSelect): handle[StepBasic_Group] {.
    noSideEffect, importcpp: "Group", header: "StepAP242_IdAttributeSelect.hxx".}
proc ProductCategory*(this: StepAP242_IdAttributeSelect): handle[
    StepBasic_ProductCategory] {.noSideEffect, importcpp: "ProductCategory",
                                header: "StepAP242_IdAttributeSelect.hxx".}
proc PropertyDefinition*(this: StepAP242_IdAttributeSelect): handle[
    StepRepr_PropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition",
                                  header: "StepAP242_IdAttributeSelect.hxx".}
proc Representation*(this: StepAP242_IdAttributeSelect): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "Representation",
                              header: "StepAP242_IdAttributeSelect.hxx".}
proc ShapeAspect*(this: StepAP242_IdAttributeSelect): handle[StepRepr_ShapeAspect] {.
    noSideEffect, importcpp: "ShapeAspect",
    header: "StepAP242_IdAttributeSelect.hxx".}
proc ShapeAspectRelationship*(this: StepAP242_IdAttributeSelect): handle[
    StepRepr_ShapeAspectRelationship] {.noSideEffect,
                                       importcpp: "ShapeAspectRelationship", header: "StepAP242_IdAttributeSelect.hxx".}