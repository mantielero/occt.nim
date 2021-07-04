##  Created on: 2015-10-29
##  Created by: Galina Kulikova
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_TessellatedItem"
type
  Handle_StepVisual_TessellatedItem* = handle[StepVisual_TessellatedItem]
  StepVisual_TessellatedItem* {.importcpp: "StepVisual_TessellatedItem",
                               header: "StepVisual_TessellatedItem.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                            ## !
                                                                                                                            ## Returns
                                                                                                                            ## a
                                                                                                                            ## DraughtingCalloutElement
                                                                                                                            ## select
                                                                                                                            ## type


proc constructStepVisual_TessellatedItem*(): StepVisual_TessellatedItem {.
    constructor, importcpp: "StepVisual_TessellatedItem(@)",
    header: "StepVisual_TessellatedItem.hxx".}
type
  StepVisual_TessellatedItembase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_TessellatedItem::get_type_name(@)",
                              header: "StepVisual_TessellatedItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_TessellatedItem::get_type_descriptor(@)",
    header: "StepVisual_TessellatedItem.hxx".}
proc DynamicType*(this: StepVisual_TessellatedItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_TessellatedItem.hxx".}