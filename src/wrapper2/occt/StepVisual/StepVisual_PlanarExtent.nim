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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_PlanarExtent"
discard "forward decl of StepVisual_PlanarExtent"
type
  Handle_StepVisual_PlanarExtent* = handle[StepVisual_PlanarExtent]
  StepVisual_PlanarExtent* {.importcpp: "StepVisual_PlanarExtent",
                            header: "StepVisual_PlanarExtent.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                      ## !
                                                                                                                      ## Returns
                                                                                                                      ## a
                                                                                                                      ## PlanarExtent


proc constructStepVisual_PlanarExtent*(): StepVisual_PlanarExtent {.constructor,
    importcpp: "StepVisual_PlanarExtent(@)", header: "StepVisual_PlanarExtent.hxx".}
proc Init*(this: var StepVisual_PlanarExtent;
          aName: handle[TCollection_HAsciiString]; aSizeInX: Standard_Real;
          aSizeInY: Standard_Real) {.importcpp: "Init",
                                   header: "StepVisual_PlanarExtent.hxx".}
proc SetSizeInX*(this: var StepVisual_PlanarExtent; aSizeInX: Standard_Real) {.
    importcpp: "SetSizeInX", header: "StepVisual_PlanarExtent.hxx".}
proc SizeInX*(this: StepVisual_PlanarExtent): Standard_Real {.noSideEffect,
    importcpp: "SizeInX", header: "StepVisual_PlanarExtent.hxx".}
proc SetSizeInY*(this: var StepVisual_PlanarExtent; aSizeInY: Standard_Real) {.
    importcpp: "SetSizeInY", header: "StepVisual_PlanarExtent.hxx".}
proc SizeInY*(this: StepVisual_PlanarExtent): Standard_Real {.noSideEffect,
    importcpp: "SizeInY", header: "StepVisual_PlanarExtent.hxx".}
type
  StepVisual_PlanarExtentbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_PlanarExtent::get_type_name(@)",
                              header: "StepVisual_PlanarExtent.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_PlanarExtent::get_type_descriptor(@)",
    header: "StepVisual_PlanarExtent.hxx".}
proc DynamicType*(this: StepVisual_PlanarExtent): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_PlanarExtent.hxx".}