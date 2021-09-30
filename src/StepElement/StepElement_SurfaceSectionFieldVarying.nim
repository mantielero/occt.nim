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

discard "forward decl of StepElement_SurfaceSectionFieldVarying"
discard "forward decl of StepElement_SurfaceSectionFieldVarying"
type
  HandleC1C1* = Handle[StepElementSurfaceSectionFieldVarying]

## ! Representation of STEP entity SurfaceSectionFieldVarying

type
  StepElementSurfaceSectionFieldVarying* {.
      importcpp: "StepElement_SurfaceSectionFieldVarying",
      header: "StepElement_SurfaceSectionFieldVarying.hxx", bycopy.} = object of StepElementSurfaceSectionField ##
                                                                                                         ## !
                                                                                                         ## Empty
                                                                                                         ## constructor


proc constructStepElementSurfaceSectionFieldVarying*(): StepElementSurfaceSectionFieldVarying {.
    constructor, importcpp: "StepElement_SurfaceSectionFieldVarying(@)",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc init*(this: var StepElementSurfaceSectionFieldVarying;
          aDefinitions: Handle[StepElementHArray1OfSurfaceSection];
          aAdditionalNodeValues: bool) {.importcpp: "Init", header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc definitions*(this: StepElementSurfaceSectionFieldVarying): Handle[
    StepElementHArray1OfSurfaceSection] {.noSideEffect, importcpp: "Definitions",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc setDefinitions*(this: var StepElementSurfaceSectionFieldVarying;
                    definitions: Handle[StepElementHArray1OfSurfaceSection]) {.
    importcpp: "SetDefinitions",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc additionalNodeValues*(this: StepElementSurfaceSectionFieldVarying): bool {.
    noSideEffect, importcpp: "AdditionalNodeValues",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc setAdditionalNodeValues*(this: var StepElementSurfaceSectionFieldVarying;
                             additionalNodeValues: bool) {.
    importcpp: "SetAdditionalNodeValues",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
type
  StepElementSurfaceSectionFieldVaryingbaseType* = StepElementSurfaceSectionField

proc getTypeName*(): cstring {.importcpp: "StepElement_SurfaceSectionFieldVarying::get_type_name(@)", header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_SurfaceSectionFieldVarying::get_type_descriptor(@)",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}
proc dynamicType*(this: StepElementSurfaceSectionFieldVarying): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_SurfaceSectionFieldVarying.hxx".}

























