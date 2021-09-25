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

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_CoordinatesList"
type
  HandleStepVisualCoordinatesList* = Handle[StepVisualCoordinatesList]
  StepVisualCoordinatesList* {.importcpp: "StepVisual_CoordinatesList",
                              header: "StepVisual_CoordinatesList.hxx", bycopy.} = object of StepVisualTessellatedItem ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## coordinate
                                                                                                                ## list


proc constructStepVisualCoordinatesList*(): StepVisualCoordinatesList {.
    constructor, importcpp: "StepVisual_CoordinatesList(@)",
    header: "StepVisual_CoordinatesList.hxx".}
proc init*(this: var StepVisualCoordinatesList;
          theName: Handle[TCollectionHAsciiString];
          thePoints: Handle[TColgpHArray1OfXYZ]) {.importcpp: "Init",
    header: "StepVisual_CoordinatesList.hxx".}
proc points*(this: StepVisualCoordinatesList): Handle[TColgpHArray1OfXYZ] {.
    noSideEffect, importcpp: "Points", header: "StepVisual_CoordinatesList.hxx".}
type
  StepVisualCoordinatesListbaseType* = StepVisualTessellatedItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_CoordinatesList::get_type_name(@)",
                            header: "StepVisual_CoordinatesList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CoordinatesList::get_type_descriptor(@)",
    header: "StepVisual_CoordinatesList.hxx".}
proc dynamicType*(this: StepVisualCoordinatesList): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_CoordinatesList.hxx".}
