##  Created on: 2003-01-28
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinition"
type
  StepBasicProductOrFormationOrDefinition* {.
      importcpp: "StepBasic_ProductOrFormationOrDefinition",
      header: "StepBasic_ProductOrFormationOrDefinition.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepBasicProductOrFormationOrDefinition; theSize: csize_t): pointer {.
    importcpp: "StepBasic_ProductOrFormationOrDefinition::operator new",
    header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc `delete`*(this: var StepBasicProductOrFormationOrDefinition;
              theAddress: pointer) {.importcpp: "StepBasic_ProductOrFormationOrDefinition::operator delete", header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc `new[]`*(this: var StepBasicProductOrFormationOrDefinition; theSize: csize_t): pointer {.
    importcpp: "StepBasic_ProductOrFormationOrDefinition::operator new[]",
    header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc `delete[]`*(this: var StepBasicProductOrFormationOrDefinition;
                theAddress: pointer) {.importcpp: "StepBasic_ProductOrFormationOrDefinition::operator delete[]", header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc `new`*(this: var StepBasicProductOrFormationOrDefinition; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepBasic_ProductOrFormationOrDefinition::operator new", header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc `delete`*(this: var StepBasicProductOrFormationOrDefinition; a2: pointer;
              a3: pointer) {.importcpp: "StepBasic_ProductOrFormationOrDefinition::operator delete", header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc constructStepBasicProductOrFormationOrDefinition*(): StepBasicProductOrFormationOrDefinition {.
    constructor, importcpp: "StepBasic_ProductOrFormationOrDefinition(@)",
    header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc caseNum*(this: StepBasicProductOrFormationOrDefinition;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc product*(this: StepBasicProductOrFormationOrDefinition): Handle[
    StepBasicProduct] {.noSideEffect, importcpp: "Product",
                       header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc productDefinitionFormation*(this: StepBasicProductOrFormationOrDefinition): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation",
    header: "StepBasic_ProductOrFormationOrDefinition.hxx".}
proc productDefinition*(this: StepBasicProductOrFormationOrDefinition): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepBasic_ProductOrFormationOrDefinition.hxx".}