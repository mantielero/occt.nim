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

discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_RightCircularCylinder"
discard "forward decl of StepShape_RightCircularCylinder"
type
  HandleC1C1* = Handle[StepShapeRightCircularCylinder]
  StepShapeRightCircularCylinder* {.importcpp: "StepShape_RightCircularCylinder", header: "StepShape_RightCircularCylinder.hxx",
                                   bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## a
                                                                                       ## RightCircularCylinder


proc constructStepShapeRightCircularCylinder*(): StepShapeRightCircularCylinder {.
    constructor, importcpp: "StepShape_RightCircularCylinder(@)",
    header: "StepShape_RightCircularCylinder.hxx".}
proc init*(this: var StepShapeRightCircularCylinder;
          aName: Handle[TCollectionHAsciiString];
          aPosition: Handle[StepGeomAxis1Placement]; aHeight: cfloat;
          aRadius: cfloat) {.importcpp: "Init",
                           header: "StepShape_RightCircularCylinder.hxx".}
proc setPosition*(this: var StepShapeRightCircularCylinder;
                 aPosition: Handle[StepGeomAxis1Placement]) {.
    importcpp: "SetPosition", header: "StepShape_RightCircularCylinder.hxx".}
proc position*(this: StepShapeRightCircularCylinder): Handle[StepGeomAxis1Placement] {.
    noSideEffect, importcpp: "Position",
    header: "StepShape_RightCircularCylinder.hxx".}
proc setHeight*(this: var StepShapeRightCircularCylinder; aHeight: cfloat) {.
    importcpp: "SetHeight", header: "StepShape_RightCircularCylinder.hxx".}
proc height*(this: StepShapeRightCircularCylinder): cfloat {.noSideEffect,
    importcpp: "Height", header: "StepShape_RightCircularCylinder.hxx".}
proc setRadius*(this: var StepShapeRightCircularCylinder; aRadius: cfloat) {.
    importcpp: "SetRadius", header: "StepShape_RightCircularCylinder.hxx".}
proc radius*(this: StepShapeRightCircularCylinder): cfloat {.noSideEffect,
    importcpp: "Radius", header: "StepShape_RightCircularCylinder.hxx".}
type
  StepShapeRightCircularCylinderbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_RightCircularCylinder::get_type_name(@)",
                            header: "StepShape_RightCircularCylinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_RightCircularCylinder::get_type_descriptor(@)",
    header: "StepShape_RightCircularCylinder.hxx".}
proc dynamicType*(this: StepShapeRightCircularCylinder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RightCircularCylinder.hxx".}

























