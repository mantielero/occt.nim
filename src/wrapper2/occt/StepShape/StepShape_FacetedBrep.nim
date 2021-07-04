##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_ManifoldSolidBrep

discard "forward decl of StepShape_FacetedBrep"
discard "forward decl of StepShape_FacetedBrep"
type
  Handle_StepShape_FacetedBrep* = handle[StepShape_FacetedBrep]
  StepShape_FacetedBrep* {.importcpp: "StepShape_FacetedBrep",
                          header: "StepShape_FacetedBrep.hxx", bycopy.} = object of StepShape_ManifoldSolidBrep ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## FacetedBrep


proc constructStepShape_FacetedBrep*(): StepShape_FacetedBrep {.constructor,
    importcpp: "StepShape_FacetedBrep(@)", header: "StepShape_FacetedBrep.hxx".}
type
  StepShape_FacetedBrepbase_type* = StepShape_ManifoldSolidBrep

proc get_type_name*(): cstring {.importcpp: "StepShape_FacetedBrep::get_type_name(@)",
                              header: "StepShape_FacetedBrep.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_FacetedBrep::get_type_descriptor(@)",
    header: "StepShape_FacetedBrep.hxx".}
proc DynamicType*(this: StepShape_FacetedBrep): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_FacetedBrep.hxx".}