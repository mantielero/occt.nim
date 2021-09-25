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
discard "forward decl of StepGeom_Circle"
discard "forward decl of StepGeom_Circle"
type
  HandleStepGeomCircle* = Handle[StepGeomCircle]
  StepGeomCircle* {.importcpp: "StepGeom_Circle", header: "StepGeom_Circle.hxx",
                   bycopy.} = object of StepGeomConic ## ! Returns a Circle


proc constructStepGeomCircle*(): StepGeomCircle {.constructor,
    importcpp: "StepGeom_Circle(@)", header: "StepGeom_Circle.hxx".}
proc init*(this: var StepGeomCircle; aName: Handle[TCollectionHAsciiString];
          aPosition: StepGeomAxis2Placement; aRadius: float) {.importcpp: "Init",
    header: "StepGeom_Circle.hxx".}
proc setRadius*(this: var StepGeomCircle; aRadius: float) {.importcpp: "SetRadius",
    header: "StepGeom_Circle.hxx".}
proc radius*(this: StepGeomCircle): float {.noSideEffect, importcpp: "Radius",
                                        header: "StepGeom_Circle.hxx".}
type
  StepGeomCirclebaseType* = StepGeomConic

proc getTypeName*(): cstring {.importcpp: "StepGeom_Circle::get_type_name(@)",
                            header: "StepGeom_Circle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Circle::get_type_descriptor(@)",
    header: "StepGeom_Circle.hxx".}
proc dynamicType*(this: StepGeomCircle): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Circle.hxx".}
