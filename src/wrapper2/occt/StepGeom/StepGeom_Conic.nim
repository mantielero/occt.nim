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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_Axis2Placement,
  StepGeom_Curve

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepGeom_Conic"
discard "forward decl of StepGeom_Conic"
type
  Handle_StepGeom_Conic* = handle[StepGeom_Conic]
  StepGeom_Conic* {.importcpp: "StepGeom_Conic", header: "StepGeom_Conic.hxx", bycopy.} = object of StepGeom_Curve ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## Conic


proc constructStepGeom_Conic*(): StepGeom_Conic {.constructor,
    importcpp: "StepGeom_Conic(@)", header: "StepGeom_Conic.hxx".}
proc Init*(this: var StepGeom_Conic; aName: handle[TCollection_HAsciiString];
          aPosition: StepGeom_Axis2Placement) {.importcpp: "Init",
    header: "StepGeom_Conic.hxx".}
proc SetPosition*(this: var StepGeom_Conic; aPosition: StepGeom_Axis2Placement) {.
    importcpp: "SetPosition", header: "StepGeom_Conic.hxx".}
proc Position*(this: StepGeom_Conic): StepGeom_Axis2Placement {.noSideEffect,
    importcpp: "Position", header: "StepGeom_Conic.hxx".}
type
  StepGeom_Conicbase_type* = StepGeom_Curve

proc get_type_name*(): cstring {.importcpp: "StepGeom_Conic::get_type_name(@)",
                              header: "StepGeom_Conic.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Conic::get_type_descriptor(@)",
    header: "StepGeom_Conic.hxx".}
proc DynamicType*(this: StepGeom_Conic): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Conic.hxx".}