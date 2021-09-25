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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepVisual_PlanarBox"
discard "forward decl of StepVisual_PlanarBox"
type
  HandleStepVisualPlanarBox* = Handle[StepVisualPlanarBox]
  StepVisualPlanarBox* {.importcpp: "StepVisual_PlanarBox",
                        header: "StepVisual_PlanarBox.hxx", bycopy.} = object of StepVisualPlanarExtent ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## a
                                                                                                 ## PlanarBox


proc constructStepVisualPlanarBox*(): StepVisualPlanarBox {.constructor,
    importcpp: "StepVisual_PlanarBox(@)", header: "StepVisual_PlanarBox.hxx".}
proc init*(this: var StepVisualPlanarBox; aName: Handle[TCollectionHAsciiString];
          aSizeInX: float; aSizeInY: float; aPlacement: StepGeomAxis2Placement) {.
    importcpp: "Init", header: "StepVisual_PlanarBox.hxx".}
proc setPlacement*(this: var StepVisualPlanarBox; aPlacement: StepGeomAxis2Placement) {.
    importcpp: "SetPlacement", header: "StepVisual_PlanarBox.hxx".}
proc placement*(this: StepVisualPlanarBox): StepGeomAxis2Placement {.noSideEffect,
    importcpp: "Placement", header: "StepVisual_PlanarBox.hxx".}
type
  StepVisualPlanarBoxbaseType* = StepVisualPlanarExtent

proc getTypeName*(): cstring {.importcpp: "StepVisual_PlanarBox::get_type_name(@)",
                            header: "StepVisual_PlanarBox.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_PlanarBox::get_type_descriptor(@)",
    header: "StepVisual_PlanarBox.hxx".}
proc dynamicType*(this: StepVisualPlanarBox): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_PlanarBox.hxx".}
