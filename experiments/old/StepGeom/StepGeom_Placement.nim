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

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Placement"
discard "forward decl of StepGeom_Placement"
type
  HandleC1C1* = Handle[StepGeomPlacement]
  StepGeomPlacement* {.importcpp: "StepGeom_Placement",
                      header: "StepGeom_Placement.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## Placement


proc constructStepGeomPlacement*(): StepGeomPlacement {.constructor,
    importcpp: "StepGeom_Placement(@)", header: "StepGeom_Placement.hxx".}
proc init*(this: var StepGeomPlacement; aName: Handle[TCollectionHAsciiString];
          aLocation: Handle[StepGeomCartesianPoint]) {.importcpp: "Init",
    header: "StepGeom_Placement.hxx".}
proc setLocation*(this: var StepGeomPlacement;
                 aLocation: Handle[StepGeomCartesianPoint]) {.
    importcpp: "SetLocation", header: "StepGeom_Placement.hxx".}
proc location*(this: StepGeomPlacement): Handle[StepGeomCartesianPoint] {.
    noSideEffect, importcpp: "Location", header: "StepGeom_Placement.hxx".}
type
  StepGeomPlacementbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepGeom_Placement::get_type_name(@)",
                            header: "StepGeom_Placement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Placement::get_type_descriptor(@)",
    header: "StepGeom_Placement.hxx".}
proc dynamicType*(this: StepGeomPlacement): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Placement.hxx".}