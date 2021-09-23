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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepGeom/StepGeom_Axis2Placement, StepVisual_PlanarExtent,
  ../Standard/Standard_Real

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepVisual_PlanarBox"
discard "forward decl of StepVisual_PlanarBox"
type
  Handle_StepVisual_PlanarBox* = handle[StepVisual_PlanarBox]
  StepVisual_PlanarBox* {.importcpp: "StepVisual_PlanarBox",
                         header: "StepVisual_PlanarBox.hxx", bycopy.} = object of StepVisual_PlanarExtent ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## PlanarBox


proc constructStepVisual_PlanarBox*(): StepVisual_PlanarBox {.constructor,
    importcpp: "StepVisual_PlanarBox(@)", header: "StepVisual_PlanarBox.hxx".}
proc Init*(this: var StepVisual_PlanarBox; aName: handle[TCollection_HAsciiString];
          aSizeInX: Standard_Real; aSizeInY: Standard_Real;
          aPlacement: StepGeom_Axis2Placement) {.importcpp: "Init",
    header: "StepVisual_PlanarBox.hxx".}
proc SetPlacement*(this: var StepVisual_PlanarBox;
                  aPlacement: StepGeom_Axis2Placement) {.
    importcpp: "SetPlacement", header: "StepVisual_PlanarBox.hxx".}
proc Placement*(this: StepVisual_PlanarBox): StepGeom_Axis2Placement {.noSideEffect,
    importcpp: "Placement", header: "StepVisual_PlanarBox.hxx".}
type
  StepVisual_PlanarBoxbase_type* = StepVisual_PlanarExtent

proc get_type_name*(): cstring {.importcpp: "StepVisual_PlanarBox::get_type_name(@)",
                              header: "StepVisual_PlanarBox.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_PlanarBox::get_type_descriptor(@)",
    header: "StepVisual_PlanarBox.hxx".}
proc DynamicType*(this: StepVisual_PlanarBox): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_PlanarBox.hxx".}