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

discard "forward decl of StepFEA_FeaMaterialPropertyRepresentation"
discard "forward decl of StepFEA_FeaMaterialPropertyRepresentation"
type
  HandleC1C1* = Handle[StepFEA_FeaMaterialPropertyRepresentation]

## ! Representation of STEP entity FeaMaterialPropertyRepresentation

type
  StepFEA_FeaMaterialPropertyRepresentation* {.
      importcpp: "StepFEA_FeaMaterialPropertyRepresentation",
      header: "StepFEA_FeaMaterialPropertyRepresentation.hxx", bycopy.} = object of StepReprMaterialPropertyRepresentation ##
                                                                                                                    ## !
                                                                                                                    ## Empty
                                                                                                                    ## constructor


proc constructStepFEA_FeaMaterialPropertyRepresentation*(): StepFEA_FeaMaterialPropertyRepresentation {.
    constructor, importcpp: "StepFEA_FeaMaterialPropertyRepresentation(@)",
    header: "StepFEA_FeaMaterialPropertyRepresentation.hxx".}
type
  StepFEA_FeaMaterialPropertyRepresentationbaseType* = StepReprMaterialPropertyRepresentation

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaMaterialPropertyRepresentation::get_type_name(@)", header: "StepFEA_FeaMaterialPropertyRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_FeaMaterialPropertyRepresentation::get_type_descriptor(@)",
    header: "StepFEA_FeaMaterialPropertyRepresentation.hxx".}
proc dynamicType*(this: StepFEA_FeaMaterialPropertyRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepFEA_FeaMaterialPropertyRepresentation.hxx".}