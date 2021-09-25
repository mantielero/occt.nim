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
discard "forward decl of StepShape_Torus"
discard "forward decl of StepShape_Torus"
type
  HandleStepShapeTorus* = Handle[StepShapeTorus]
  StepShapeTorus* {.importcpp: "StepShape_Torus", header: "StepShape_Torus.hxx",
                   bycopy.} = object of StepGeomGeometricRepresentationItem ## ! Returns a Torus


proc constructStepShapeTorus*(): StepShapeTorus {.constructor,
    importcpp: "StepShape_Torus(@)", header: "StepShape_Torus.hxx".}
proc init*(this: var StepShapeTorus; aName: Handle[TCollectionHAsciiString];
          aPosition: Handle[StepGeomAxis1Placement]; aMajorRadius: float;
          aMinorRadius: float) {.importcpp: "Init", header: "StepShape_Torus.hxx".}
proc setPosition*(this: var StepShapeTorus;
                 aPosition: Handle[StepGeomAxis1Placement]) {.
    importcpp: "SetPosition", header: "StepShape_Torus.hxx".}
proc position*(this: StepShapeTorus): Handle[StepGeomAxis1Placement] {.noSideEffect,
    importcpp: "Position", header: "StepShape_Torus.hxx".}
proc setMajorRadius*(this: var StepShapeTorus; aMajorRadius: float) {.
    importcpp: "SetMajorRadius", header: "StepShape_Torus.hxx".}
proc majorRadius*(this: StepShapeTorus): float {.noSideEffect,
    importcpp: "MajorRadius", header: "StepShape_Torus.hxx".}
proc setMinorRadius*(this: var StepShapeTorus; aMinorRadius: float) {.
    importcpp: "SetMinorRadius", header: "StepShape_Torus.hxx".}
proc minorRadius*(this: StepShapeTorus): float {.noSideEffect,
    importcpp: "MinorRadius", header: "StepShape_Torus.hxx".}
type
  StepShapeTorusbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_Torus::get_type_name(@)",
                            header: "StepShape_Torus.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_Torus::get_type_descriptor(@)",
    header: "StepShape_Torus.hxx".}
proc dynamicType*(this: StepShapeTorus): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Torus.hxx".}
