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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_Representation

discard "forward decl of StepRepr_ExternallyDefinedRepresentation"
discard "forward decl of StepRepr_ExternallyDefinedRepresentation"
type
  Handle_StepRepr_ExternallyDefinedRepresentation* = handle[
      StepRepr_ExternallyDefinedRepresentation]
  StepRepr_ExternallyDefinedRepresentation* {.
      importcpp: "StepRepr_ExternallyDefinedRepresentation",
      header: "StepRepr_ExternallyDefinedRepresentation.hxx", bycopy.} = object of StepRepr_Representation


proc constructStepRepr_ExternallyDefinedRepresentation*(): StepRepr_ExternallyDefinedRepresentation {.
    constructor, importcpp: "StepRepr_ExternallyDefinedRepresentation(@)",
    header: "StepRepr_ExternallyDefinedRepresentation.hxx".}
type
  StepRepr_ExternallyDefinedRepresentationbase_type* = StepRepr_Representation

proc get_type_name*(): cstring {.importcpp: "StepRepr_ExternallyDefinedRepresentation::get_type_name(@)", header: "StepRepr_ExternallyDefinedRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_ExternallyDefinedRepresentation::get_type_descriptor(@)",
    header: "StepRepr_ExternallyDefinedRepresentation.hxx".}
proc DynamicType*(this: StepRepr_ExternallyDefinedRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_ExternallyDefinedRepresentation.hxx".}