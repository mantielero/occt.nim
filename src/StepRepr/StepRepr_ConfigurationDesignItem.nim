##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionFormation"
type
  StepReprConfigurationDesignItem* {.importcpp: "StepRepr_ConfigurationDesignItem", header: "StepRepr_ConfigurationDesignItem.hxx",
                                    bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepReprConfigurationDesignItem; theSize: csize_t): pointer {.
    importcpp: "StepRepr_ConfigurationDesignItem::operator new",
    header: "StepRepr_ConfigurationDesignItem.hxx".}
proc `delete`*(this: var StepReprConfigurationDesignItem; theAddress: pointer) {.
    importcpp: "StepRepr_ConfigurationDesignItem::operator delete",
    header: "StepRepr_ConfigurationDesignItem.hxx".}
proc `new[]`*(this: var StepReprConfigurationDesignItem; theSize: csize_t): pointer {.
    importcpp: "StepRepr_ConfigurationDesignItem::operator new[]",
    header: "StepRepr_ConfigurationDesignItem.hxx".}
proc `delete[]`*(this: var StepReprConfigurationDesignItem; theAddress: pointer) {.
    importcpp: "StepRepr_ConfigurationDesignItem::operator delete[]",
    header: "StepRepr_ConfigurationDesignItem.hxx".}
proc `new`*(this: var StepReprConfigurationDesignItem; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepRepr_ConfigurationDesignItem::operator new", header: "StepRepr_ConfigurationDesignItem.hxx".}
proc `delete`*(this: var StepReprConfigurationDesignItem; a2: pointer; a3: pointer) {.
    importcpp: "StepRepr_ConfigurationDesignItem::operator delete",
    header: "StepRepr_ConfigurationDesignItem.hxx".}
proc constructStepReprConfigurationDesignItem*(): StepReprConfigurationDesignItem {.
    constructor, importcpp: "StepRepr_ConfigurationDesignItem(@)",
    header: "StepRepr_ConfigurationDesignItem.hxx".}
proc caseNum*(this: StepReprConfigurationDesignItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepRepr_ConfigurationDesignItem.hxx".}
proc productDefinition*(this: StepReprConfigurationDesignItem): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                 header: "StepRepr_ConfigurationDesignItem.hxx".}
proc productDefinitionFormation*(this: StepReprConfigurationDesignItem): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation",
    header: "StepRepr_ConfigurationDesignItem.hxx".}