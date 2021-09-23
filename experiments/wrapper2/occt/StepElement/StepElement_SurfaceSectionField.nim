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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepElement_SurfaceSectionField"
discard "forward decl of StepElement_SurfaceSectionField"
type
  Handle_StepElement_SurfaceSectionField* = handle[StepElement_SurfaceSectionField]

## ! Representation of STEP entity SurfaceSectionField

type
  StepElement_SurfaceSectionField* {.importcpp: "StepElement_SurfaceSectionField", header: "StepElement_SurfaceSectionField.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Empty
                                                                       ## constructor


proc constructStepElement_SurfaceSectionField*(): StepElement_SurfaceSectionField {.
    constructor, importcpp: "StepElement_SurfaceSectionField(@)",
    header: "StepElement_SurfaceSectionField.hxx".}
type
  StepElement_SurfaceSectionFieldbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepElement_SurfaceSectionField::get_type_name(@)",
                              header: "StepElement_SurfaceSectionField.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepElement_SurfaceSectionField::get_type_descriptor(@)",
    header: "StepElement_SurfaceSectionField.hxx".}
proc DynamicType*(this: StepElement_SurfaceSectionField): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_SurfaceSectionField.hxx".}