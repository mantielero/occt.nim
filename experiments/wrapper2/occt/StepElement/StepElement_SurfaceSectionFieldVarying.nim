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
  StepElement_HArray1OfSurfaceSection, ../Standard/Standard_Boolean,
  StepElement_SurfaceSectionField

discard "forward decl of StepElement_SurfaceSectionFieldVarying"
discard "forward decl of StepElement_SurfaceSectionFieldVarying"
type
  Handle_StepElement_SurfaceSectionFieldVarying* = handle[
      StepElement_SurfaceSectionFieldVarying]

## ! Representation of STEP entity SurfaceSectionFieldVarying

type
  StepElement_SurfaceSectionFieldVarying* {.
      importcpp: "StepElement_SurfaceSectionFieldVarying",
      header: "StepElement_SurfaceSectionFieldVarying.hxx", bycopy.} = object of StepElement_SurfaceSectionField ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepElement_SurfaceSectionFieldVarying*(): StepElement_SurfaceSectionFieldVarying {.
    constructor, importcpp: "StepElement_SurfaceSectionFieldVarying(@)",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc Init*(this: var StepElement_SurfaceSectionFieldVarying;
          aDefinitions: handle[StepElement_HArray1OfSurfaceSection];
          aAdditionalNodeValues: Standard_Boolean) {.importcpp: "Init",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc Definitions*(this: StepElement_SurfaceSectionFieldVarying): handle[
    StepElement_HArray1OfSurfaceSection] {.noSideEffect, importcpp: "Definitions",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc SetDefinitions*(this: var StepElement_SurfaceSectionFieldVarying;
                    Definitions: handle[StepElement_HArray1OfSurfaceSection]) {.
    importcpp: "SetDefinitions",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc AdditionalNodeValues*(this: StepElement_SurfaceSectionFieldVarying): Standard_Boolean {.
    noSideEffect, importcpp: "AdditionalNodeValues",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc SetAdditionalNodeValues*(this: var StepElement_SurfaceSectionFieldVarying;
                             AdditionalNodeValues: Standard_Boolean) {.
    importcpp: "SetAdditionalNodeValues",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
type
  StepElement_SurfaceSectionFieldVaryingbase_type* = StepElement_SurfaceSectionField

proc get_type_name*(): cstring {.importcpp: "StepElement_SurfaceSectionFieldVarying::get_type_name(@)", header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepElement_SurfaceSectionFieldVarying::get_type_descriptor(@)",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc DynamicType*(this: StepElement_SurfaceSectionFieldVarying): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepElement_SurfaceSectionFieldVarying.hxx".}