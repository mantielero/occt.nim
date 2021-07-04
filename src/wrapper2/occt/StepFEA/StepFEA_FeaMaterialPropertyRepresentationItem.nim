##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../StepRepr/StepRepr_RepresentationItem

discard "forward decl of StepFEA_FeaMaterialPropertyRepresentationItem"
discard "forward decl of StepFEA_FeaMaterialPropertyRepresentationItem"
type
  Handle_StepFEA_FeaMaterialPropertyRepresentationItem* = handle[
      StepFEA_FeaMaterialPropertyRepresentationItem]

## ! Representation of STEP entity FeaMaterialPropertyRepresentationItem

type
  StepFEA_FeaMaterialPropertyRepresentationItem* {.
      importcpp: "StepFEA_FeaMaterialPropertyRepresentationItem",
      header: "StepFEA_FeaMaterialPropertyRepresentationItem.hxx", bycopy.} = object of StepRepr_RepresentationItem ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor


proc constructStepFEA_FeaMaterialPropertyRepresentationItem*(): StepFEA_FeaMaterialPropertyRepresentationItem {.
    constructor, importcpp: "StepFEA_FeaMaterialPropertyRepresentationItem(@)",
    header: "StepFEA_FeaMaterialPropertyRepresentationItem.hxx".}
type
  StepFEA_FeaMaterialPropertyRepresentationItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaMaterialPropertyRepresentationItem::get_type_name(@)", header: "StepFEA_FeaMaterialPropertyRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_FeaMaterialPropertyRepresentationItem::get_type_descriptor(@)",
    header: "StepFEA_FeaMaterialPropertyRepresentationItem.hxx".}
proc DynamicType*(this: StepFEA_FeaMaterialPropertyRepresentationItem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepFEA_FeaMaterialPropertyRepresentationItem.hxx".}