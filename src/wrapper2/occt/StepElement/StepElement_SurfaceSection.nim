##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepElement_MeasureOrUnspecifiedValue, ../Standard/Standard_Transient

discard "forward decl of StepElement_MeasureOrUnspecifiedValue"
discard "forward decl of StepElement_SurfaceSection"
discard "forward decl of StepElement_SurfaceSection"
type
  Handle_StepElement_SurfaceSection* = handle[StepElement_SurfaceSection]

## ! Representation of STEP entity SurfaceSection

type
  StepElement_SurfaceSection* {.importcpp: "StepElement_SurfaceSection",
                               header: "StepElement_SurfaceSection.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepElement_SurfaceSection*(): StepElement_SurfaceSection {.
    constructor, importcpp: "StepElement_SurfaceSection(@)",
    header: "StepElement_SurfaceSection.hxx".}
proc Init*(this: var StepElement_SurfaceSection;
          aOffset: StepElement_MeasureOrUnspecifiedValue;
          aNonStructuralMass: StepElement_MeasureOrUnspecifiedValue;
          aNonStructuralMassOffset: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "Init", header: "StepElement_SurfaceSection.hxx".}
proc Offset*(this: StepElement_SurfaceSection): StepElement_MeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "Offset", header: "StepElement_SurfaceSection.hxx".}
proc SetOffset*(this: var StepElement_SurfaceSection;
               Offset: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "SetOffset", header: "StepElement_SurfaceSection.hxx".}
proc NonStructuralMass*(this: StepElement_SurfaceSection): StepElement_MeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "NonStructuralMass",
    header: "StepElement_SurfaceSection.hxx".}
proc SetNonStructuralMass*(this: var StepElement_SurfaceSection; NonStructuralMass: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "SetNonStructuralMass", header: "StepElement_SurfaceSection.hxx".}
proc NonStructuralMassOffset*(this: StepElement_SurfaceSection): StepElement_MeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "NonStructuralMassOffset",
    header: "StepElement_SurfaceSection.hxx".}
proc SetNonStructuralMassOffset*(this: var StepElement_SurfaceSection;
    NonStructuralMassOffset: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "SetNonStructuralMassOffset",
    header: "StepElement_SurfaceSection.hxx".}
type
  StepElement_SurfaceSectionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepElement_SurfaceSection::get_type_name(@)",
                              header: "StepElement_SurfaceSection.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepElement_SurfaceSection::get_type_descriptor(@)",
    header: "StepElement_SurfaceSection.hxx".}
proc DynamicType*(this: StepElement_SurfaceSection): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_SurfaceSection.hxx".}