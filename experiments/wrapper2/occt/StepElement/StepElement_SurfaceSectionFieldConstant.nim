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

discard "forward decl of StepElement_SurfaceSection"
discard "forward decl of StepElement_SurfaceSectionFieldConstant"
discard "forward decl of StepElement_SurfaceSectionFieldConstant"
type
  HandleC1C1* = Handle[StepElementSurfaceSectionFieldConstant]

## ! Representation of STEP entity SurfaceSectionFieldConstant

type
  StepElementSurfaceSectionFieldConstant* {.
      importcpp: "StepElement_SurfaceSectionFieldConstant",
      header: "StepElement_SurfaceSectionFieldConstant.hxx", bycopy.} = object of StepElementSurfaceSectionField ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepElementSurfaceSectionFieldConstant*(): StepElementSurfaceSectionFieldConstant {.
    constructor, importcpp: "StepElement_SurfaceSectionFieldConstant(@)",
    header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc init*(this: var StepElementSurfaceSectionFieldConstant;
          aDefinition: Handle[StepElementSurfaceSection]) {.importcpp: "Init",
    header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc definition*(this: StepElementSurfaceSectionFieldConstant): Handle[
    StepElementSurfaceSection] {.noSideEffect, importcpp: "Definition", header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc setDefinition*(this: var StepElementSurfaceSectionFieldConstant;
                   definition: Handle[StepElementSurfaceSection]) {.
    importcpp: "SetDefinition",
    header: "StepElement_SurfaceSectionFieldConstant.hxx".}
type
  StepElementSurfaceSectionFieldConstantbaseType* = StepElementSurfaceSectionField

proc getTypeName*(): cstring {.importcpp: "StepElement_SurfaceSectionFieldConstant::get_type_name(@)", header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_SurfaceSectionFieldConstant::get_type_descriptor(@)",
    header: "StepElement_SurfaceSectionFieldConstant.hxx".}
proc dynamicType*(this: StepElementSurfaceSectionFieldConstant): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepElement_SurfaceSectionFieldConstant.hxx".}

























