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

discard "forward decl of StepElement_MeasureOrUnspecifiedValue"
discard "forward decl of StepElement_SurfaceSection"
discard "forward decl of StepElement_SurfaceSection"
type
  HandleC1C1* = Handle[StepElementSurfaceSection]

## ! Representation of STEP entity SurfaceSection

type
  StepElementSurfaceSection* {.importcpp: "StepElement_SurfaceSection",
                              header: "StepElement_SurfaceSection.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepElementSurfaceSection*(): StepElementSurfaceSection {.
    constructor, importcpp: "StepElement_SurfaceSection(@)",
    header: "StepElement_SurfaceSection.hxx".}
proc init*(this: var StepElementSurfaceSection;
          aOffset: StepElementMeasureOrUnspecifiedValue;
          aNonStructuralMass: StepElementMeasureOrUnspecifiedValue;
          aNonStructuralMassOffset: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "Init", header: "StepElement_SurfaceSection.hxx".}
proc offset*(this: StepElementSurfaceSection): StepElementMeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "Offset", header: "StepElement_SurfaceSection.hxx".}
proc setOffset*(this: var StepElementSurfaceSection;
               offset: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "SetOffset", header: "StepElement_SurfaceSection.hxx".}
proc nonStructuralMass*(this: StepElementSurfaceSection): StepElementMeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "NonStructuralMass",
    header: "StepElement_SurfaceSection.hxx".}
proc setNonStructuralMass*(this: var StepElementSurfaceSection; nonStructuralMass: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "SetNonStructuralMass", header: "StepElement_SurfaceSection.hxx".}
proc nonStructuralMassOffset*(this: StepElementSurfaceSection): StepElementMeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "NonStructuralMassOffset",
    header: "StepElement_SurfaceSection.hxx".}
proc setNonStructuralMassOffset*(this: var StepElementSurfaceSection;
    nonStructuralMassOffset: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "SetNonStructuralMassOffset",
    header: "StepElement_SurfaceSection.hxx".}
type
  StepElementSurfaceSectionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepElement_SurfaceSection::get_type_name(@)",
                            header: "StepElement_SurfaceSection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_SurfaceSection::get_type_descriptor(@)",
    header: "StepElement_SurfaceSection.hxx".}
proc dynamicType*(this: StepElementSurfaceSection): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_SurfaceSection.hxx".}