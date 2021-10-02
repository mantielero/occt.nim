##  Created on: 2016-04-26
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

discard "forward decl of StepRepr_ConstructiveGeometryRepresentation"
discard "forward decl of StepRepr_ConstructiveGeometryRepresentation"
type
  HandleC1C1* = Handle[StepReprConstructiveGeometryRepresentation]
  StepReprConstructiveGeometryRepresentation* {.
      importcpp: "StepRepr_ConstructiveGeometryRepresentation",
      header: "StepRepr_ConstructiveGeometryRepresentation.hxx", bycopy.} = object of StepReprRepresentation ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## ConstructiveGeometryRepresentation


proc constructStepReprConstructiveGeometryRepresentation*(): StepReprConstructiveGeometryRepresentation {.
    constructor, importcpp: "StepRepr_ConstructiveGeometryRepresentation(@)",
    header: "StepRepr_ConstructiveGeometryRepresentation.hxx".}
type
  StepReprConstructiveGeometryRepresentationbaseType* = StepReprRepresentation

proc getTypeName*(): cstring {.importcpp: "StepRepr_ConstructiveGeometryRepresentation::get_type_name(@)", header: "StepRepr_ConstructiveGeometryRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_ConstructiveGeometryRepresentation::get_type_descriptor(@)",
    header: "StepRepr_ConstructiveGeometryRepresentation.hxx".}
proc dynamicType*(this: StepReprConstructiveGeometryRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_ConstructiveGeometryRepresentation.hxx".}