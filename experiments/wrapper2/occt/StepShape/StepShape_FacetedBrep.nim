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

discard "forward decl of StepShape_FacetedBrep"
discard "forward decl of StepShape_FacetedBrep"
type
  HandleC1C1* = Handle[StepShapeFacetedBrep]
  StepShapeFacetedBrep* {.importcpp: "StepShape_FacetedBrep",
                         header: "StepShape_FacetedBrep.hxx", bycopy.} = object of StepShapeManifoldSolidBrep ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## FacetedBrep


proc constructStepShapeFacetedBrep*(): StepShapeFacetedBrep {.constructor,
    importcpp: "StepShape_FacetedBrep(@)", header: "StepShape_FacetedBrep.hxx".}
type
  StepShapeFacetedBrepbaseType* = StepShapeManifoldSolidBrep

proc getTypeName*(): cstring {.importcpp: "StepShape_FacetedBrep::get_type_name(@)",
                            header: "StepShape_FacetedBrep.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_FacetedBrep::get_type_descriptor(@)",
    header: "StepShape_FacetedBrep.hxx".}
proc dynamicType*(this: StepShapeFacetedBrep): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_FacetedBrep.hxx".}

























