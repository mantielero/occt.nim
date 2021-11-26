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
discard "forward decl of StepElement_UniformSurfaceSection"
discard "forward decl of StepElement_UniformSurfaceSection"
type
  HandleC1C1* = Handle[StepElementUniformSurfaceSection]

## ! Representation of STEP entity UniformSurfaceSection

type
  StepElementUniformSurfaceSection* {.importcpp: "StepElement_UniformSurfaceSection", header: "StepElement_UniformSurfaceSection.hxx",
                                     bycopy.} = object of StepElementSurfaceSection ## !
                                                                               ## Empty
                                                                               ## constructor


proc constructStepElementUniformSurfaceSection*(): StepElementUniformSurfaceSection {.
    constructor, importcpp: "StepElement_UniformSurfaceSection(@)",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc init*(this: var StepElementUniformSurfaceSection;
          aSurfaceSectionOffset: StepElementMeasureOrUnspecifiedValue;
    aSurfaceSectionNonStructuralMass: StepElementMeasureOrUnspecifiedValue;
    aSurfaceSectionNonStructuralMassOffset: StepElementMeasureOrUnspecifiedValue;
          aThickness: StandardReal;
          aBendingThickness: StepElementMeasureOrUnspecifiedValue;
          aShearThickness: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "Init", header: "StepElement_UniformSurfaceSection.hxx".}
proc thickness*(this: StepElementUniformSurfaceSection): StandardReal {.
    noSideEffect, importcpp: "Thickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc setThickness*(this: var StepElementUniformSurfaceSection;
                  thickness: StandardReal) {.importcpp: "SetThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc bendingThickness*(this: StepElementUniformSurfaceSection): StepElementMeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "BendingThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc setBendingThickness*(this: var StepElementUniformSurfaceSection;
                         bendingThickness: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "SetBendingThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc shearThickness*(this: StepElementUniformSurfaceSection): StepElementMeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "ShearThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc setShearThickness*(this: var StepElementUniformSurfaceSection;
                       shearThickness: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "SetShearThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
type
  StepElementUniformSurfaceSectionbaseType* = StepElementSurfaceSection

proc getTypeName*(): cstring {.importcpp: "StepElement_UniformSurfaceSection::get_type_name(@)",
                            header: "StepElement_UniformSurfaceSection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_UniformSurfaceSection::get_type_descriptor(@)",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc dynamicType*(this: StepElementUniformSurfaceSection): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_UniformSurfaceSection.hxx".}