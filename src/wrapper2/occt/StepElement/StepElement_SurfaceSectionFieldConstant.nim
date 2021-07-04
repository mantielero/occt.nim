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
  ../Standard/Standard, ../Standard/Standard_Type, StepElement_SurfaceSectionField

discard "forward decl of StepElement_SurfaceSection"
discard "forward decl of StepElement_SurfaceSectionFieldConstant"
discard "forward decl of StepElement_SurfaceSectionFieldConstant"
type
  Handle_StepElement_SurfaceSectionFieldConstant* = handle[
      StepElement_SurfaceSectionFieldConstant]

## ! Representation of STEP entity SurfaceSectionFieldConstant

type
  StepElement_SurfaceSectionFieldConstant* {.
      importcpp: "StepElement_SurfaceSectionFieldConstant",
      header: "StepElement_SurfaceSectionFieldConstant.hxx", bycopy.} = object of StepElement_SurfaceSectionField ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor


proc constructStepElement_SurfaceSectionFieldConstant*(): StepElement_SurfaceSectionFieldConstant {.
    constructor, importcpp: "StepElement_SurfaceSectionFieldConstant(@)",
    header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc Init*(this: var StepElement_SurfaceSectionFieldConstant;
          aDefinition: handle[StepElement_SurfaceSection]) {.importcpp: "Init",
    header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc Definition*(this: StepElement_SurfaceSectionFieldConstant): handle[
    StepElement_SurfaceSection] {.noSideEffect, importcpp: "Definition", header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc SetDefinition*(this: var StepElement_SurfaceSectionFieldConstant;
                   Definition: handle[StepElement_SurfaceSection]) {.
    importcpp: "SetDefinition",
    header: "StepElement_SurfaceSectionFieldConstant.hxx".}
type
  StepElement_SurfaceSectionFieldConstantbase_type* = StepElement_SurfaceSectionField

proc get_type_name*(): cstring {.importcpp: "StepElement_SurfaceSectionFieldConstant::get_type_name(@)", header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepElement_SurfaceSectionFieldConstant::get_type_descriptor(@)",
    header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc DynamicType*(this: StepElement_SurfaceSectionFieldConstant): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepElement_SurfaceSectionFieldConstant.hxx".}