##  Created on: 1998-06-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepBasic/StepBasic_ProductDefinitionRelationship

discard "forward decl of StepRepr_SuppliedPartRelationship"
discard "forward decl of StepRepr_SuppliedPartRelationship"
type
  Handle_StepRepr_SuppliedPartRelationship* = handle[
      StepRepr_SuppliedPartRelationship]
  StepRepr_SuppliedPartRelationship* {.importcpp: "StepRepr_SuppliedPartRelationship", header: "StepRepr_SuppliedPartRelationship.hxx",
                                      bycopy.} = object of StepBasic_ProductDefinitionRelationship


proc constructStepRepr_SuppliedPartRelationship*(): StepRepr_SuppliedPartRelationship {.
    constructor, importcpp: "StepRepr_SuppliedPartRelationship(@)",
    header: "StepRepr_SuppliedPartRelationship.hxx".}
type
  StepRepr_SuppliedPartRelationshipbase_type* = StepBasic_ProductDefinitionRelationship

proc get_type_name*(): cstring {.importcpp: "StepRepr_SuppliedPartRelationship::get_type_name(@)",
                              header: "StepRepr_SuppliedPartRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_SuppliedPartRelationship::get_type_descriptor(@)",
    header: "StepRepr_SuppliedPartRelationship.hxx".}
proc DynamicType*(this: StepRepr_SuppliedPartRelationship): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_SuppliedPartRelationship.hxx".}