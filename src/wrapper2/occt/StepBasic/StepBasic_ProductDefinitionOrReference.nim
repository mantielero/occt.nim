##  Created on: 2016-03-31
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionReference"
discard "forward decl of StepBasic_ProductDefinitionReferenceWithLocalRepresentation"
type
  StepBasic_ProductDefinitionOrReference* {.
      importcpp: "StepBasic_ProductDefinitionOrReference",
      header: "StepBasic_ProductDefinitionOrReference.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## ProductDefinitionOrReference
                                                                                              ## SelectType


proc constructStepBasic_ProductDefinitionOrReference*(): StepBasic_ProductDefinitionOrReference {.
    constructor, importcpp: "StepBasic_ProductDefinitionOrReference(@)",
    header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc CaseNum*(this: StepBasic_ProductDefinitionOrReference;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc ProductDefinition*(this: StepBasic_ProductDefinitionOrReference): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc ProductDefinitionReference*(this: StepBasic_ProductDefinitionOrReference): handle[
    StepBasic_ProductDefinitionReference] {.noSideEffect,
    importcpp: "ProductDefinitionReference",
    header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc ProductDefinitionReferenceWithLocalRepresentation*(
    this: StepBasic_ProductDefinitionOrReference): handle[
    StepBasic_ProductDefinitionReferenceWithLocalRepresentation] {.noSideEffect,
    importcpp: "ProductDefinitionReferenceWithLocalRepresentation",
    header: "StepBasic_ProductDefinitionOrReference.hxx".}