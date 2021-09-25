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

discard "forward decl of StepRepr_CompShAspAndDatumFeatAndShAsp"
discard "forward decl of StepRepr_CompShAspAndDatumFeatAndShAsp"
type
  HandleStepReprCompShAspAndDatumFeatAndShAsp* = Handle[
      StepReprCompShAspAndDatumFeatAndShAsp]

## ! Added for Dimensional Tolerances

type
  StepReprCompShAspAndDatumFeatAndShAsp* {.
      importcpp: "StepRepr_CompShAspAndDatumFeatAndShAsp",
      header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx", bycopy.} = object of StepReprShapeAspect


proc constructStepReprCompShAspAndDatumFeatAndShAsp*(): StepReprCompShAspAndDatumFeatAndShAsp {.
    constructor, importcpp: "StepRepr_CompShAspAndDatumFeatAndShAsp(@)",
    header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx".}
type
  StepReprCompShAspAndDatumFeatAndShAspbaseType* = StepReprShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepRepr_CompShAspAndDatumFeatAndShAsp::get_type_name(@)", header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_CompShAspAndDatumFeatAndShAsp::get_type_descriptor(@)",
    header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx".}
proc dynamicType*(this: StepReprCompShAspAndDatumFeatAndShAsp): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_CompShAspAndDatumFeatAndShAsp.hxx".}
