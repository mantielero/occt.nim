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
discard "forward decl of StepGeom_Axis2Placement2d"
discard "forward decl of StepGeom_Axis2Placement2d"
type
  HandleStepGeomAxis2Placement2d* = Handle[StepGeomAxis2Placement2d]
  StepGeomAxis2Placement2d* {.importcpp: "StepGeom_Axis2Placement2d",
                             header: "StepGeom_Axis2Placement2d.hxx", bycopy.} = object of StepGeomPlacement ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## Axis2Placement2d


proc constructStepGeomAxis2Placement2d*(): StepGeomAxis2Placement2d {.constructor,
    importcpp: "StepGeom_Axis2Placement2d(@)",
    header: "StepGeom_Axis2Placement2d.hxx".}
proc init*(this: var StepGeomAxis2Placement2d;
          aName: Handle[TCollectionHAsciiString];
          aLocation: Handle[StepGeomCartesianPoint]; hasArefDirection: bool;
          aRefDirection: Handle[StepGeomDirection]) {.importcpp: "Init",
    header: "StepGeom_Axis2Placement2d.hxx".}
proc setRefDirection*(this: var StepGeomAxis2Placement2d;
                     aRefDirection: Handle[StepGeomDirection]) {.
    importcpp: "SetRefDirection", header: "StepGeom_Axis2Placement2d.hxx".}
proc unSetRefDirection*(this: var StepGeomAxis2Placement2d) {.
    importcpp: "UnSetRefDirection", header: "StepGeom_Axis2Placement2d.hxx".}
proc refDirection*(this: StepGeomAxis2Placement2d): Handle[StepGeomDirection] {.
    noSideEffect, importcpp: "RefDirection",
    header: "StepGeom_Axis2Placement2d.hxx".}
proc hasRefDirection*(this: StepGeomAxis2Placement2d): bool {.noSideEffect,
    importcpp: "HasRefDirection", header: "StepGeom_Axis2Placement2d.hxx".}
type
  StepGeomAxis2Placement2dbaseType* = StepGeomPlacement

proc getTypeName*(): cstring {.importcpp: "StepGeom_Axis2Placement2d::get_type_name(@)",
                            header: "StepGeom_Axis2Placement2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Axis2Placement2d::get_type_descriptor(@)",
    header: "StepGeom_Axis2Placement2d.hxx".}
proc dynamicType*(this: StepGeomAxis2Placement2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_Axis2Placement2d.hxx".}
