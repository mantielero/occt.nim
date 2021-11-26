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

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionReference"
discard "forward decl of StepBasic_ProductDefinitionReferenceWithLocalRepresentation"
type
  StepBasicProductDefinitionOrReference* {.
      importcpp: "StepBasic_ProductDefinitionOrReference",
      header: "StepBasic_ProductDefinitionOrReference.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepBasicProductDefinitionOrReference; theSize: csize_t): pointer {.
    importcpp: "StepBasic_ProductDefinitionOrReference::operator new",
    header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc `delete`*(this: var StepBasicProductDefinitionOrReference; theAddress: pointer) {.
    importcpp: "StepBasic_ProductDefinitionOrReference::operator delete",
    header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc `new[]`*(this: var StepBasicProductDefinitionOrReference; theSize: csize_t): pointer {.
    importcpp: "StepBasic_ProductDefinitionOrReference::operator new[]",
    header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc `delete[]`*(this: var StepBasicProductDefinitionOrReference;
                theAddress: pointer) {.importcpp: "StepBasic_ProductDefinitionOrReference::operator delete[]", header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc `new`*(this: var StepBasicProductDefinitionOrReference; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepBasic_ProductDefinitionOrReference::operator new", header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc `delete`*(this: var StepBasicProductDefinitionOrReference; a2: pointer;
              a3: pointer) {.importcpp: "StepBasic_ProductDefinitionOrReference::operator delete",
                           header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc constructStepBasicProductDefinitionOrReference*(): StepBasicProductDefinitionOrReference {.
    constructor, importcpp: "StepBasic_ProductDefinitionOrReference(@)",
    header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc caseNum*(this: StepBasicProductDefinitionOrReference;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc productDefinition*(this: StepBasicProductDefinitionOrReference): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc productDefinitionReference*(this: StepBasicProductDefinitionOrReference): Handle[
    StepBasicProductDefinitionReference] {.noSideEffect,
    importcpp: "ProductDefinitionReference",
    header: "StepBasic_ProductDefinitionOrReference.hxx".}
proc productDefinitionReferenceWithLocalRepresentation*(
    this: StepBasicProductDefinitionOrReference): Handle[
    StepBasicProductDefinitionReferenceWithLocalRepresentation] {.noSideEffect,
    importcpp: "ProductDefinitionReferenceWithLocalRepresentation",
    header: "StepBasic_ProductDefinitionOrReference.hxx".}