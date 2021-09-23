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

discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_RightCircularCone"
discard "forward decl of StepShape_RightCircularCone"
type
  Handle_StepShape_RightCircularCone* = handle[StepShape_RightCircularCone]
  StepShape_RightCircularCone* {.importcpp: "StepShape_RightCircularCone",
                                header: "StepShape_RightCircularCone.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                              ## !
                                                                                                                              ## Returns
                                                                                                                              ## a
                                                                                                                              ## RightCircularCone


proc constructStepShape_RightCircularCone*(): StepShape_RightCircularCone {.
    constructor, importcpp: "StepShape_RightCircularCone(@)",
    header: "StepShape_RightCircularCone.hxx".}
proc Init*(this: var StepShape_RightCircularCone;
          aName: handle[TCollection_HAsciiString];
          aPosition: handle[StepGeom_Axis1Placement]; aHeight: Standard_Real;
          aRadius: Standard_Real; aSemiAngle: Standard_Real) {.importcpp: "Init",
    header: "StepShape_RightCircularCone.hxx".}
proc SetPosition*(this: var StepShape_RightCircularCone;
                 aPosition: handle[StepGeom_Axis1Placement]) {.
    importcpp: "SetPosition", header: "StepShape_RightCircularCone.hxx".}
proc Position*(this: StepShape_RightCircularCone): handle[StepGeom_Axis1Placement] {.
    noSideEffect, importcpp: "Position", header: "StepShape_RightCircularCone.hxx".}
proc SetHeight*(this: var StepShape_RightCircularCone; aHeight: Standard_Real) {.
    importcpp: "SetHeight", header: "StepShape_RightCircularCone.hxx".}
proc Height*(this: StepShape_RightCircularCone): Standard_Real {.noSideEffect,
    importcpp: "Height", header: "StepShape_RightCircularCone.hxx".}
proc SetRadius*(this: var StepShape_RightCircularCone; aRadius: Standard_Real) {.
    importcpp: "SetRadius", header: "StepShape_RightCircularCone.hxx".}
proc Radius*(this: StepShape_RightCircularCone): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "StepShape_RightCircularCone.hxx".}
proc SetSemiAngle*(this: var StepShape_RightCircularCone; aSemiAngle: Standard_Real) {.
    importcpp: "SetSemiAngle", header: "StepShape_RightCircularCone.hxx".}
proc SemiAngle*(this: StepShape_RightCircularCone): Standard_Real {.noSideEffect,
    importcpp: "SemiAngle", header: "StepShape_RightCircularCone.hxx".}
type
  StepShape_RightCircularConebase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_RightCircularCone::get_type_name(@)",
                              header: "StepShape_RightCircularCone.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_RightCircularCone::get_type_descriptor(@)",
    header: "StepShape_RightCircularCone.hxx".}
proc DynamicType*(this: StepShape_RightCircularCone): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RightCircularCone.hxx".}