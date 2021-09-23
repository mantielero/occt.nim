##  Created on: 2015-08-11
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_ShapeAspect

discard "forward decl of StepRepr_CompShAspAndDatumFeatAndShAsp"
discard "forward decl of StepRepr_CompShAspAndDatumFeatAndShAsp"
type
  Handle_StepRepr_CompShAspAndDatumFeatAndShAsp* = handle[
      StepRepr_CompShAspAndDatumFeatAndShAsp]

## ! Added for Dimensional Tolerances

type
  StepRepr_CompShAspAndDatumFeatAndShAsp* {.
      importcpp: "StepRepr_CompShAspAndDatumFeatAndShAsp",
      header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx", bycopy.} = object of StepRepr_ShapeAspect


proc constructStepRepr_CompShAspAndDatumFeatAndShAsp*(): StepRepr_CompShAspAndDatumFeatAndShAsp {.
    constructor, importcpp: "StepRepr_CompShAspAndDatumFeatAndShAsp(@)",
    header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx".}
type
  StepRepr_CompShAspAndDatumFeatAndShAspbase_type* = StepRepr_ShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepRepr_CompShAspAndDatumFeatAndShAsp::get_type_name(@)", header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_CompShAspAndDatumFeatAndShAsp::get_type_descriptor(@)",
    header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx".}
proc DynamicType*(this: StepRepr_CompShAspAndDatumFeatAndShAsp): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx".}