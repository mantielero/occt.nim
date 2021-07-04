##  Created on: 2000-07-03
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepRepr_ProductDefinitionUsage

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_AssemblyComponentUsage"
discard "forward decl of StepRepr_AssemblyComponentUsage"
type
  Handle_StepRepr_AssemblyComponentUsage* = handle[StepRepr_AssemblyComponentUsage]

## ! Representation of STEP entity AssemblyComponentUsage

type
  StepRepr_AssemblyComponentUsage* {.importcpp: "StepRepr_AssemblyComponentUsage", header: "StepRepr_AssemblyComponentUsage.hxx",
                                    bycopy.} = object of StepRepr_ProductDefinitionUsage ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor


proc constructStepRepr_AssemblyComponentUsage*(): StepRepr_AssemblyComponentUsage {.
    constructor, importcpp: "StepRepr_AssemblyComponentUsage(@)",
    header: "StepRepr_AssemblyComponentUsage.hxx".}
proc Init*(this: var StepRepr_AssemblyComponentUsage;
          aProductDefinitionRelationship_Id: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_Name: handle[TCollection_HAsciiString];
          hasProductDefinitionRelationship_Description: Standard_Boolean;
    aProductDefinitionRelationship_Description: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_RelatingProductDefinition: handle[
    StepBasic_ProductDefinition]; aProductDefinitionRelationship_RelatedProductDefinition: handle[
    StepBasic_ProductDefinition]; hasReferenceDesignator: Standard_Boolean;
          aReferenceDesignator: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepRepr_AssemblyComponentUsage.hxx".}
proc Init*(this: var StepRepr_AssemblyComponentUsage;
          aProductDefinitionRelationship_Id: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_Name: handle[TCollection_HAsciiString];
          hasProductDefinitionRelationship_Description: Standard_Boolean;
    aProductDefinitionRelationship_Description: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_RelatingProductDefinition: StepBasic_ProductDefinitionOrReference;
    aProductDefinitionRelationship_RelatedProductDefinition: StepBasic_ProductDefinitionOrReference;
          hasReferenceDesignator: Standard_Boolean;
          aReferenceDesignator: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepRepr_AssemblyComponentUsage.hxx".}
proc ReferenceDesignator*(this: StepRepr_AssemblyComponentUsage): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ReferenceDesignator",
                               header: "StepRepr_AssemblyComponentUsage.hxx".}
proc SetReferenceDesignator*(this: var StepRepr_AssemblyComponentUsage;
    ReferenceDesignator: handle[TCollection_HAsciiString]) {.
    importcpp: "SetReferenceDesignator",
    header: "StepRepr_AssemblyComponentUsage.hxx".}
proc HasReferenceDesignator*(this: StepRepr_AssemblyComponentUsage): Standard_Boolean {.
    noSideEffect, importcpp: "HasReferenceDesignator",
    header: "StepRepr_AssemblyComponentUsage.hxx".}
type
  StepRepr_AssemblyComponentUsagebase_type* = StepRepr_ProductDefinitionUsage

proc get_type_name*(): cstring {.importcpp: "StepRepr_AssemblyComponentUsage::get_type_name(@)",
                              header: "StepRepr_AssemblyComponentUsage.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_AssemblyComponentUsage::get_type_descriptor(@)",
    header: "StepRepr_AssemblyComponentUsage.hxx".}
proc DynamicType*(this: StepRepr_AssemblyComponentUsage): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_AssemblyComponentUsage.hxx".}