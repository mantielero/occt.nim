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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepElement_MeasureOrUnspecifiedValue, StepElement_SurfaceSection

discard "forward decl of StepElement_MeasureOrUnspecifiedValue"
discard "forward decl of StepElement_UniformSurfaceSection"
discard "forward decl of StepElement_UniformSurfaceSection"
type
  Handle_StepElement_UniformSurfaceSection* = handle[
      StepElement_UniformSurfaceSection]

## ! Representation of STEP entity UniformSurfaceSection

type
  StepElement_UniformSurfaceSection* {.importcpp: "StepElement_UniformSurfaceSection", header: "StepElement_UniformSurfaceSection.hxx",
                                      bycopy.} = object of StepElement_SurfaceSection ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor


proc constructStepElement_UniformSurfaceSection*(): StepElement_UniformSurfaceSection {.
    constructor, importcpp: "StepElement_UniformSurfaceSection(@)",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc Init*(this: var StepElement_UniformSurfaceSection;
          aSurfaceSection_Offset: StepElement_MeasureOrUnspecifiedValue;
    aSurfaceSection_NonStructuralMass: StepElement_MeasureOrUnspecifiedValue;
    aSurfaceSection_NonStructuralMassOffset: StepElement_MeasureOrUnspecifiedValue;
          aThickness: Standard_Real;
          aBendingThickness: StepElement_MeasureOrUnspecifiedValue;
          aShearThickness: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "Init", header: "StepElement_UniformSurfaceSection.hxx".}
proc Thickness*(this: StepElement_UniformSurfaceSection): Standard_Real {.
    noSideEffect, importcpp: "Thickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc SetThickness*(this: var StepElement_UniformSurfaceSection;
                  Thickness: Standard_Real) {.importcpp: "SetThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc BendingThickness*(this: StepElement_UniformSurfaceSection): StepElement_MeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "BendingThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc SetBendingThickness*(this: var StepElement_UniformSurfaceSection;
    BendingThickness: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "SetBendingThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc ShearThickness*(this: StepElement_UniformSurfaceSection): StepElement_MeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "ShearThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc SetShearThickness*(this: var StepElement_UniformSurfaceSection;
                       ShearThickness: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "SetShearThickness",
    header: "StepElement_UniformSurfaceSection.hxx".}
type
  StepElement_UniformSurfaceSectionbase_type* = StepElement_SurfaceSection

proc get_type_name*(): cstring {.importcpp: "StepElement_UniformSurfaceSection::get_type_name(@)",
                              header: "StepElement_UniformSurfaceSection.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepElement_UniformSurfaceSection::get_type_descriptor(@)",
    header: "StepElement_UniformSurfaceSection.hxx".}
proc DynamicType*(this: StepElement_UniformSurfaceSection): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_UniformSurfaceSection.hxx".}