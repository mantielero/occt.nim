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
discard "forward decl of StepVisual_PlanarExtent"
discard "forward decl of StepVisual_PlanarExtent"
type
  HandleC1C1* = Handle[StepVisualPlanarExtent]
  StepVisualPlanarExtent* {.importcpp: "StepVisual_PlanarExtent",
                           header: "StepVisual_PlanarExtent.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                    ## !
                                                                                                                    ## Returns
                                                                                                                    ## a
                                                                                                                    ## PlanarExtent


proc constructStepVisualPlanarExtent*(): StepVisualPlanarExtent {.constructor,
    importcpp: "StepVisual_PlanarExtent(@)", header: "StepVisual_PlanarExtent.hxx".}
proc init*(this: var StepVisualPlanarExtent; aName: Handle[TCollectionHAsciiString];
          aSizeInX: StandardReal; aSizeInY: StandardReal) {.importcpp: "Init",
    header: "StepVisual_PlanarExtent.hxx".}
proc setSizeInX*(this: var StepVisualPlanarExtent; aSizeInX: StandardReal) {.
    importcpp: "SetSizeInX", header: "StepVisual_PlanarExtent.hxx".}
proc sizeInX*(this: StepVisualPlanarExtent): StandardReal {.noSideEffect,
    importcpp: "SizeInX", header: "StepVisual_PlanarExtent.hxx".}
proc setSizeInY*(this: var StepVisualPlanarExtent; aSizeInY: StandardReal) {.
    importcpp: "SetSizeInY", header: "StepVisual_PlanarExtent.hxx".}
proc sizeInY*(this: StepVisualPlanarExtent): StandardReal {.noSideEffect,
    importcpp: "SizeInY", header: "StepVisual_PlanarExtent.hxx".}
type
  StepVisualPlanarExtentbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_PlanarExtent::get_type_name(@)",
                            header: "StepVisual_PlanarExtent.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_PlanarExtent::get_type_descriptor(@)",
    header: "StepVisual_PlanarExtent.hxx".}
proc dynamicType*(this: StepVisualPlanarExtent): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_PlanarExtent.hxx".}