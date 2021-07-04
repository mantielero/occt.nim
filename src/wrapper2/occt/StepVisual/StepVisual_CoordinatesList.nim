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
  ../Standard/Standard_Handle, ../TColgp/TColgp_HArray1OfXYZ,
  StepVisual_TessellatedItem

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_CoordinatesList"
type
  Handle_StepVisual_CoordinatesList* = handle[StepVisual_CoordinatesList]
  StepVisual_CoordinatesList* {.importcpp: "StepVisual_CoordinatesList",
                               header: "StepVisual_CoordinatesList.hxx", bycopy.} = object of StepVisual_TessellatedItem ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## coordinate
                                                                                                                  ## list


proc constructStepVisual_CoordinatesList*(): StepVisual_CoordinatesList {.
    constructor, importcpp: "StepVisual_CoordinatesList(@)",
    header: "StepVisual_CoordinatesList.hxx".}
proc Init*(this: var StepVisual_CoordinatesList;
          theName: handle[TCollection_HAsciiString];
          thePoints: handle[TColgp_HArray1OfXYZ]) {.importcpp: "Init",
    header: "StepVisual_CoordinatesList.hxx".}
proc Points*(this: StepVisual_CoordinatesList): handle[TColgp_HArray1OfXYZ] {.
    noSideEffect, importcpp: "Points", header: "StepVisual_CoordinatesList.hxx".}
type
  StepVisual_CoordinatesListbase_type* = StepVisual_TessellatedItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_CoordinatesList::get_type_name(@)",
                              header: "StepVisual_CoordinatesList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CoordinatesList::get_type_descriptor(@)",
    header: "StepVisual_CoordinatesList.hxx".}
proc DynamicType*(this: StepVisual_CoordinatesList): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_CoordinatesList.hxx".}