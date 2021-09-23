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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepRepr_AssemblyComponentUsage, ../Standard/Standard_Boolean

discard "forward decl of StepRepr_AssemblyComponentUsage"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_SpecifiedHigherUsageOccurrence"
discard "forward decl of StepRepr_SpecifiedHigherUsageOccurrence"
type
  Handle_StepRepr_SpecifiedHigherUsageOccurrence* = handle[
      StepRepr_SpecifiedHigherUsageOccurrence]

## ! Representation of STEP entity SpecifiedHigherUsageOccurrence

type
  StepRepr_SpecifiedHigherUsageOccurrence* {.
      importcpp: "StepRepr_SpecifiedHigherUsageOccurrence",
      header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx", bycopy.} = object of StepRepr_AssemblyComponentUsage ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor


proc constructStepRepr_SpecifiedHigherUsageOccurrence*(): StepRepr_SpecifiedHigherUsageOccurrence {.
    constructor, importcpp: "StepRepr_SpecifiedHigherUsageOccurrence(@)",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc Init*(this: var StepRepr_SpecifiedHigherUsageOccurrence;
          aProductDefinitionRelationship_Id: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_Name: handle[TCollection_HAsciiString];
          hasProductDefinitionRelationship_Description: Standard_Boolean;
    aProductDefinitionRelationship_Description: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_RelatingProductDefinition: handle[
    StepBasic_ProductDefinition]; aProductDefinitionRelationship_RelatedProductDefinition: handle[
    StepBasic_ProductDefinition];
          hasAssemblyComponentUsage_ReferenceDesignator: Standard_Boolean;
    aAssemblyComponentUsage_ReferenceDesignator: handle[TCollection_HAsciiString];
          aUpperUsage: handle[StepRepr_AssemblyComponentUsage];
          aNextUsage: handle[StepRepr_NextAssemblyUsageOccurrence]) {.
    importcpp: "Init", header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc Init*(this: var StepRepr_SpecifiedHigherUsageOccurrence;
          aProductDefinitionRelationship_Id: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_Name: handle[TCollection_HAsciiString];
          hasProductDefinitionRelationship_Description: Standard_Boolean;
    aProductDefinitionRelationship_Description: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_RelatingProductDefinition: StepBasic_ProductDefinitionOrReference;
    aProductDefinitionRelationship_RelatedProductDefinition: StepBasic_ProductDefinitionOrReference;
          hasAssemblyComponentUsage_ReferenceDesignator: Standard_Boolean;
    aAssemblyComponentUsage_ReferenceDesignator: handle[TCollection_HAsciiString];
          aUpperUsage: handle[StepRepr_AssemblyComponentUsage];
          aNextUsage: handle[StepRepr_NextAssemblyUsageOccurrence]) {.
    importcpp: "Init", header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc UpperUsage*(this: StepRepr_SpecifiedHigherUsageOccurrence): handle[
    StepRepr_AssemblyComponentUsage] {.noSideEffect, importcpp: "UpperUsage", header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc SetUpperUsage*(this: var StepRepr_SpecifiedHigherUsageOccurrence;
                   UpperUsage: handle[StepRepr_AssemblyComponentUsage]) {.
    importcpp: "SetUpperUsage",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc NextUsage*(this: StepRepr_SpecifiedHigherUsageOccurrence): handle[
    StepRepr_NextAssemblyUsageOccurrence] {.noSideEffect, importcpp: "NextUsage",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc SetNextUsage*(this: var StepRepr_SpecifiedHigherUsageOccurrence;
                  NextUsage: handle[StepRepr_NextAssemblyUsageOccurrence]) {.
    importcpp: "SetNextUsage",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
type
  StepRepr_SpecifiedHigherUsageOccurrencebase_type* = StepRepr_AssemblyComponentUsage

proc get_type_name*(): cstring {.importcpp: "StepRepr_SpecifiedHigherUsageOccurrence::get_type_name(@)", header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_SpecifiedHigherUsageOccurrence::get_type_descriptor(@)",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc DynamicType*(this: StepRepr_SpecifiedHigherUsageOccurrence): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}