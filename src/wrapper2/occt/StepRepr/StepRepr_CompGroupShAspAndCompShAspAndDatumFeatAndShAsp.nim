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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepRepr_CompShAspAndDatumFeatAndShAsp

discard "forward decl of StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp"
discard "forward decl of StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp"
type
  Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp* = handle[
      StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp]

## ! Added for Dimensional Tolerances

type
  StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp* {.
      importcpp: "StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp",
      header: "StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp.hxx",
      bycopy.} = object of StepRepr_CompShAspAndDatumFeatAndShAsp


proc constructStepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp*(): StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp {.
    constructor,
    importcpp: "StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp(@)",
    header: "StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp.hxx".}
type
  StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAspbase_type* = StepRepr_CompShAspAndDatumFeatAndShAsp

proc get_type_name*(): cstring {.importcpp: "StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp::get_type_name(@)", header: "StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp::get_type_descriptor(@)",
    header: "StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp.hxx".}
proc DynamicType*(this: StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp.hxx".}