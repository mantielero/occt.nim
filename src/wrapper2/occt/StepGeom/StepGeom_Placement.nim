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
  StepGeom_GeometricRepresentationItem

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Placement"
discard "forward decl of StepGeom_Placement"
type
  Handle_StepGeom_Placement* = handle[StepGeom_Placement]
  StepGeom_Placement* {.importcpp: "StepGeom_Placement",
                       header: "StepGeom_Placement.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## Placement


proc constructStepGeom_Placement*(): StepGeom_Placement {.constructor,
    importcpp: "StepGeom_Placement(@)", header: "StepGeom_Placement.hxx".}
proc Init*(this: var StepGeom_Placement; aName: handle[TCollection_HAsciiString];
          aLocation: handle[StepGeom_CartesianPoint]) {.importcpp: "Init",
    header: "StepGeom_Placement.hxx".}
proc SetLocation*(this: var StepGeom_Placement;
                 aLocation: handle[StepGeom_CartesianPoint]) {.
    importcpp: "SetLocation", header: "StepGeom_Placement.hxx".}
proc Location*(this: StepGeom_Placement): handle[StepGeom_CartesianPoint] {.
    noSideEffect, importcpp: "Location", header: "StepGeom_Placement.hxx".}
type
  StepGeom_Placementbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepGeom_Placement::get_type_name(@)",
                              header: "StepGeom_Placement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Placement::get_type_descriptor(@)",
    header: "StepGeom_Placement.hxx".}
proc DynamicType*(this: StepGeom_Placement): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Placement.hxx".}