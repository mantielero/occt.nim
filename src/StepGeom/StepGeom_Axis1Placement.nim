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

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of StepGeom_Axis1Placement"
type
  HandleC1C1* = Handle[StepGeomAxis1Placement]
  StepGeomAxis1Placement* {.importcpp: "StepGeom_Axis1Placement",
                           header: "StepGeom_Axis1Placement.hxx", bycopy.} = object of StepGeomPlacement ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## Axis1Placement


proc constructStepGeomAxis1Placement*(): StepGeomAxis1Placement {.constructor,
    importcpp: "StepGeom_Axis1Placement(@)", header: "StepGeom_Axis1Placement.hxx".}
proc init*(this: var StepGeomAxis1Placement; aName: Handle[TCollectionHAsciiString];
          aLocation: Handle[StepGeomCartesianPoint]; hasAaxis: StandardBoolean;
          aAxis: Handle[StepGeomDirection]) {.importcpp: "Init",
    header: "StepGeom_Axis1Placement.hxx".}
proc setAxis*(this: var StepGeomAxis1Placement; aAxis: Handle[StepGeomDirection]) {.
    importcpp: "SetAxis", header: "StepGeom_Axis1Placement.hxx".}
proc unSetAxis*(this: var StepGeomAxis1Placement) {.importcpp: "UnSetAxis",
    header: "StepGeom_Axis1Placement.hxx".}
proc axis*(this: StepGeomAxis1Placement): Handle[StepGeomDirection] {.noSideEffect,
    importcpp: "Axis", header: "StepGeom_Axis1Placement.hxx".}
proc hasAxis*(this: StepGeomAxis1Placement): StandardBoolean {.noSideEffect,
    importcpp: "HasAxis", header: "StepGeom_Axis1Placement.hxx".}
type
  StepGeomAxis1PlacementbaseType* = StepGeomPlacement

proc getTypeName*(): cstring {.importcpp: "StepGeom_Axis1Placement::get_type_name(@)",
                            header: "StepGeom_Axis1Placement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Axis1Placement::get_type_descriptor(@)",
    header: "StepGeom_Axis1Placement.hxx".}
proc dynamicType*(this: StepGeomAxis1Placement): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_Axis1Placement.hxx".}