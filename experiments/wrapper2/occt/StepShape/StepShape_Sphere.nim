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

discard "forward decl of StepGeom_Point"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Sphere"
discard "forward decl of StepShape_Sphere"
type
  HandleC1C1* = Handle[StepShapeSphere]
  StepShapeSphere* {.importcpp: "StepShape_Sphere", header: "StepShape_Sphere.hxx",
                    bycopy.} = object of StepGeomGeometricRepresentationItem ## ! Returns a Sphere


proc constructStepShapeSphere*(): StepShapeSphere {.constructor,
    importcpp: "StepShape_Sphere(@)", header: "StepShape_Sphere.hxx".}
proc init*(this: var StepShapeSphere; aName: Handle[TCollectionHAsciiString];
          aRadius: cfloat; aCentre: Handle[StepGeomPoint]) {.importcpp: "Init",
    header: "StepShape_Sphere.hxx".}
proc setRadius*(this: var StepShapeSphere; aRadius: cfloat) {.importcpp: "SetRadius",
    header: "StepShape_Sphere.hxx".}
proc radius*(this: StepShapeSphere): cfloat {.noSideEffect, importcpp: "Radius",
    header: "StepShape_Sphere.hxx".}
proc setCentre*(this: var StepShapeSphere; aCentre: Handle[StepGeomPoint]) {.
    importcpp: "SetCentre", header: "StepShape_Sphere.hxx".}
proc centre*(this: StepShapeSphere): Handle[StepGeomPoint] {.noSideEffect,
    importcpp: "Centre", header: "StepShape_Sphere.hxx".}
type
  StepShapeSpherebaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_Sphere::get_type_name(@)",
                            header: "StepShape_Sphere.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_Sphere::get_type_descriptor(@)",
    header: "StepShape_Sphere.hxx".}
proc dynamicType*(this: StepShapeSphere): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Sphere.hxx".}

























