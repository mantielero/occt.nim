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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_ProductDefinition

discard "forward decl of StepBasic_PhysicallyModeledProductDefinition"
discard "forward decl of StepBasic_PhysicallyModeledProductDefinition"
type
  Handle_StepBasic_PhysicallyModeledProductDefinition* = handle[
      StepBasic_PhysicallyModeledProductDefinition]
  StepBasic_PhysicallyModeledProductDefinition* {.
      importcpp: "StepBasic_PhysicallyModeledProductDefinition",
      header: "StepBasic_PhysicallyModeledProductDefinition.hxx", bycopy.} = object of StepBasic_ProductDefinition


proc constructStepBasic_PhysicallyModeledProductDefinition*(): StepBasic_PhysicallyModeledProductDefinition {.
    constructor, importcpp: "StepBasic_PhysicallyModeledProductDefinition(@)",
    header: "StepBasic_PhysicallyModeledProductDefinition.hxx".}
type
  StepBasic_PhysicallyModeledProductDefinitionbase_type* = StepBasic_ProductDefinition

proc get_type_name*(): cstring {.importcpp: "StepBasic_PhysicallyModeledProductDefinition::get_type_name(@)", header: "StepBasic_PhysicallyModeledProductDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_PhysicallyModeledProductDefinition::get_type_descriptor(@)",
    header: "StepBasic_PhysicallyModeledProductDefinition.hxx".}
proc DynamicType*(this: StepBasic_PhysicallyModeledProductDefinition): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_PhysicallyModeledProductDefinition.hxx".}