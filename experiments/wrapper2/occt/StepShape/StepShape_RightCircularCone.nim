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
discard "forward decl of StepShape_RightCircularCone"
discard "forward decl of StepShape_RightCircularCone"
type
  HandleC1C1* = Handle[StepShapeRightCircularCone]
  StepShapeRightCircularCone* {.importcpp: "StepShape_RightCircularCone",
                               header: "StepShape_RightCircularCone.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                            ## !
                                                                                                                            ## Returns
                                                                                                                            ## a
                                                                                                                            ## RightCircularCone


proc constructStepShapeRightCircularCone*(): StepShapeRightCircularCone {.
    constructor, importcpp: "StepShape_RightCircularCone(@)",
    header: "StepShape_RightCircularCone.hxx".}
proc init*(this: var StepShapeRightCircularCone;
          aName: Handle[TCollectionHAsciiString];
          aPosition: Handle[StepGeomAxis1Placement]; aHeight: cfloat;
          aRadius: cfloat; aSemiAngle: cfloat) {.importcpp: "Init",
    header: "StepShape_RightCircularCone.hxx".}
proc setPosition*(this: var StepShapeRightCircularCone;
                 aPosition: Handle[StepGeomAxis1Placement]) {.
    importcpp: "SetPosition", header: "StepShape_RightCircularCone.hxx".}
proc position*(this: StepShapeRightCircularCone): Handle[StepGeomAxis1Placement] {.
    noSideEffect, importcpp: "Position", header: "StepShape_RightCircularCone.hxx".}
proc setHeight*(this: var StepShapeRightCircularCone; aHeight: cfloat) {.
    importcpp: "SetHeight", header: "StepShape_RightCircularCone.hxx".}
proc height*(this: StepShapeRightCircularCone): cfloat {.noSideEffect,
    importcpp: "Height", header: "StepShape_RightCircularCone.hxx".}
proc setRadius*(this: var StepShapeRightCircularCone; aRadius: cfloat) {.
    importcpp: "SetRadius", header: "StepShape_RightCircularCone.hxx".}
proc radius*(this: StepShapeRightCircularCone): cfloat {.noSideEffect,
    importcpp: "Radius", header: "StepShape_RightCircularCone.hxx".}
proc setSemiAngle*(this: var StepShapeRightCircularCone; aSemiAngle: cfloat) {.
    importcpp: "SetSemiAngle", header: "StepShape_RightCircularCone.hxx".}
proc semiAngle*(this: StepShapeRightCircularCone): cfloat {.noSideEffect,
    importcpp: "SemiAngle", header: "StepShape_RightCircularCone.hxx".}
type
  StepShapeRightCircularConebaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_RightCircularCone::get_type_name(@)",
                            header: "StepShape_RightCircularCone.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_RightCircularCone::get_type_descriptor(@)",
    header: "StepShape_RightCircularCone.hxx".}
proc dynamicType*(this: StepShapeRightCircularCone): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RightCircularCone.hxx".}

























