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
discard "forward decl of StepShape_Torus"
discard "forward decl of StepShape_Torus"
type
  Handle_StepShape_Torus* = handle[StepShape_Torus]
  StepShape_Torus* {.importcpp: "StepShape_Torus", header: "StepShape_Torus.hxx",
                    bycopy.} = object of StepGeom_GeometricRepresentationItem ## ! Returns a Torus


proc constructStepShape_Torus*(): StepShape_Torus {.constructor,
    importcpp: "StepShape_Torus(@)", header: "StepShape_Torus.hxx".}
proc Init*(this: var StepShape_Torus; aName: handle[TCollection_HAsciiString];
          aPosition: handle[StepGeom_Axis1Placement]; aMajorRadius: Standard_Real;
          aMinorRadius: Standard_Real) {.importcpp: "Init",
                                       header: "StepShape_Torus.hxx".}
proc SetPosition*(this: var StepShape_Torus;
                 aPosition: handle[StepGeom_Axis1Placement]) {.
    importcpp: "SetPosition", header: "StepShape_Torus.hxx".}
proc Position*(this: StepShape_Torus): handle[StepGeom_Axis1Placement] {.
    noSideEffect, importcpp: "Position", header: "StepShape_Torus.hxx".}
proc SetMajorRadius*(this: var StepShape_Torus; aMajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "StepShape_Torus.hxx".}
proc MajorRadius*(this: StepShape_Torus): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "StepShape_Torus.hxx".}
proc SetMinorRadius*(this: var StepShape_Torus; aMinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "StepShape_Torus.hxx".}
proc MinorRadius*(this: StepShape_Torus): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "StepShape_Torus.hxx".}
type
  StepShape_Torusbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_Torus::get_type_name(@)",
                              header: "StepShape_Torus.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_Torus::get_type_descriptor(@)",
    header: "StepShape_Torus.hxx".}
proc DynamicType*(this: StepShape_Torus): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Torus.hxx".}