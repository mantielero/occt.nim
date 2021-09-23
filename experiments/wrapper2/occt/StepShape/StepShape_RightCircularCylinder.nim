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
discard "forward decl of StepShape_RightCircularCylinder"
discard "forward decl of StepShape_RightCircularCylinder"
type
  Handle_StepShape_RightCircularCylinder* = handle[StepShape_RightCircularCylinder]
  StepShape_RightCircularCylinder* {.importcpp: "StepShape_RightCircularCylinder", header: "StepShape_RightCircularCylinder.hxx",
                                    bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## a
                                                                                         ## RightCircularCylinder


proc constructStepShape_RightCircularCylinder*(): StepShape_RightCircularCylinder {.
    constructor, importcpp: "StepShape_RightCircularCylinder(@)",
    header: "StepShape_RightCircularCylinder.hxx".}
proc Init*(this: var StepShape_RightCircularCylinder;
          aName: handle[TCollection_HAsciiString];
          aPosition: handle[StepGeom_Axis1Placement]; aHeight: Standard_Real;
          aRadius: Standard_Real) {.importcpp: "Init",
                                  header: "StepShape_RightCircularCylinder.hxx".}
proc SetPosition*(this: var StepShape_RightCircularCylinder;
                 aPosition: handle[StepGeom_Axis1Placement]) {.
    importcpp: "SetPosition", header: "StepShape_RightCircularCylinder.hxx".}
proc Position*(this: StepShape_RightCircularCylinder): handle[
    StepGeom_Axis1Placement] {.noSideEffect, importcpp: "Position",
                              header: "StepShape_RightCircularCylinder.hxx".}
proc SetHeight*(this: var StepShape_RightCircularCylinder; aHeight: Standard_Real) {.
    importcpp: "SetHeight", header: "StepShape_RightCircularCylinder.hxx".}
proc Height*(this: StepShape_RightCircularCylinder): Standard_Real {.noSideEffect,
    importcpp: "Height", header: "StepShape_RightCircularCylinder.hxx".}
proc SetRadius*(this: var StepShape_RightCircularCylinder; aRadius: Standard_Real) {.
    importcpp: "SetRadius", header: "StepShape_RightCircularCylinder.hxx".}
proc Radius*(this: StepShape_RightCircularCylinder): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "StepShape_RightCircularCylinder.hxx".}
type
  StepShape_RightCircularCylinderbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_RightCircularCylinder::get_type_name(@)",
                              header: "StepShape_RightCircularCylinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_RightCircularCylinder::get_type_descriptor(@)",
    header: "StepShape_RightCircularCylinder.hxx".}
proc DynamicType*(this: StepShape_RightCircularCylinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RightCircularCylinder.hxx".}