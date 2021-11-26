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

discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_Sphere"
discard "forward decl of StepShape_Block"
discard "forward decl of StepShape_RightAngularWedge"
discard "forward decl of StepShape_Torus"
discard "forward decl of StepShape_RightCircularCone"
discard "forward decl of StepShape_RightCircularCylinder"
type
  StepShapeCsgPrimitive* {.importcpp: "StepShape_CsgPrimitive",
                          header: "StepShape_CsgPrimitive.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepShapeCsgPrimitive; theSize: csize_t): pointer {.
    importcpp: "StepShape_CsgPrimitive::operator new",
    header: "StepShape_CsgPrimitive.hxx".}
proc `delete`*(this: var StepShapeCsgPrimitive; theAddress: pointer) {.
    importcpp: "StepShape_CsgPrimitive::operator delete",
    header: "StepShape_CsgPrimitive.hxx".}
proc `new[]`*(this: var StepShapeCsgPrimitive; theSize: csize_t): pointer {.
    importcpp: "StepShape_CsgPrimitive::operator new[]",
    header: "StepShape_CsgPrimitive.hxx".}
proc `delete[]`*(this: var StepShapeCsgPrimitive; theAddress: pointer) {.
    importcpp: "StepShape_CsgPrimitive::operator delete[]",
    header: "StepShape_CsgPrimitive.hxx".}
proc `new`*(this: var StepShapeCsgPrimitive; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepShape_CsgPrimitive::operator new",
    header: "StepShape_CsgPrimitive.hxx".}
proc `delete`*(this: var StepShapeCsgPrimitive; a2: pointer; a3: pointer) {.
    importcpp: "StepShape_CsgPrimitive::operator delete",
    header: "StepShape_CsgPrimitive.hxx".}
proc constructStepShapeCsgPrimitive*(): StepShapeCsgPrimitive {.constructor,
    importcpp: "StepShape_CsgPrimitive(@)", header: "StepShape_CsgPrimitive.hxx".}
proc caseNum*(this: StepShapeCsgPrimitive; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepShape_CsgPrimitive.hxx".}
proc sphere*(this: StepShapeCsgPrimitive): Handle[StepShapeSphere] {.noSideEffect,
    importcpp: "Sphere", header: "StepShape_CsgPrimitive.hxx".}
proc `block`*(this: StepShapeCsgPrimitive): Handle[StepShapeBlock] {.noSideEffect,
    importcpp: "Block", header: "StepShape_CsgPrimitive.hxx".}
proc rightAngularWedge*(this: StepShapeCsgPrimitive): Handle[
    StepShapeRightAngularWedge] {.noSideEffect, importcpp: "RightAngularWedge",
                                 header: "StepShape_CsgPrimitive.hxx".}
proc torus*(this: StepShapeCsgPrimitive): Handle[StepShapeTorus] {.noSideEffect,
    importcpp: "Torus", header: "StepShape_CsgPrimitive.hxx".}
proc rightCircularCone*(this: StepShapeCsgPrimitive): Handle[
    StepShapeRightCircularCone] {.noSideEffect, importcpp: "RightCircularCone",
                                 header: "StepShape_CsgPrimitive.hxx".}
proc rightCircularCylinder*(this: StepShapeCsgPrimitive): Handle[
    StepShapeRightCircularCylinder] {.noSideEffect,
                                     importcpp: "RightCircularCylinder",
                                     header: "StepShape_CsgPrimitive.hxx".}