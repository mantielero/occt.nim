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

discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_QuantifiedAssemblyComponentUsage"
discard "forward decl of StepRepr_QuantifiedAssemblyComponentUsage"
type
  Handle_StepRepr_QuantifiedAssemblyComponentUsage* = handle[
      StepRepr_QuantifiedAssemblyComponentUsage]

## ! Representation of STEP entity QuantifiedAssemblyComponentUsage

type
  StepRepr_QuantifiedAssemblyComponentUsage* {.
      importcpp: "StepRepr_QuantifiedAssemblyComponentUsage",
      header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx", bycopy.} = object of StepRepr_AssemblyComponentUsage ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor


proc constructStepRepr_QuantifiedAssemblyComponentUsage*(): StepRepr_QuantifiedAssemblyComponentUsage {.
    constructor, importcpp: "StepRepr_QuantifiedAssemblyComponentUsage(@)",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc Init*(this: var StepRepr_QuantifiedAssemblyComponentUsage;
          aProductDefinitionRelationship_Id: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_Name: handle[TCollection_HAsciiString];
          hasProductDefinitionRelationship_Description: Standard_Boolean;
    aProductDefinitionRelationship_Description: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_RelatingProductDefinition: handle[
    StepBasic_ProductDefinition]; aProductDefinitionRelationship_RelatedProductDefinition: handle[
    StepBasic_ProductDefinition];
          hasAssemblyComponentUsage_ReferenceDesignator: Standard_Boolean;
    aAssemblyComponentUsage_ReferenceDesignator: handle[TCollection_HAsciiString];
          aQuantity: handle[StepBasic_MeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc Init*(this: var StepRepr_QuantifiedAssemblyComponentUsage;
          aProductDefinitionRelationship_Id: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_Name: handle[TCollection_HAsciiString];
          hasProductDefinitionRelationship_Description: Standard_Boolean;
    aProductDefinitionRelationship_Description: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_RelatingProductDefinition: StepBasic_ProductDefinitionOrReference;
    aProductDefinitionRelationship_RelatedProductDefinition: StepBasic_ProductDefinitionOrReference;
          hasAssemblyComponentUsage_ReferenceDesignator: Standard_Boolean;
    aAssemblyComponentUsage_ReferenceDesignator: handle[TCollection_HAsciiString];
          aQuantity: handle[StepBasic_MeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc Quantity*(this: StepRepr_QuantifiedAssemblyComponentUsage): handle[
    StepBasic_MeasureWithUnit] {.noSideEffect, importcpp: "Quantity", header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc SetQuantity*(this: var StepRepr_QuantifiedAssemblyComponentUsage;
                 Quantity: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "SetQuantity",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
type
  StepRepr_QuantifiedAssemblyComponentUsagebase_type* = StepRepr_AssemblyComponentUsage

proc get_type_name*(): cstring {.importcpp: "StepRepr_QuantifiedAssemblyComponentUsage::get_type_name(@)", header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_QuantifiedAssemblyComponentUsage::get_type_descriptor(@)",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc DynamicType*(this: StepRepr_QuantifiedAssemblyComponentUsage): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}