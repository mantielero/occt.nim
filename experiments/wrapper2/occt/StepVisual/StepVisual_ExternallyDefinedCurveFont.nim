##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../StepBasic/StepBasic_ExternallyDefinedItem

discard "forward decl of StepVisual_ExternallyDefinedCurveFont"
discard "forward decl of StepVisual_ExternallyDefinedCurveFont"
type
  Handle_StepVisual_ExternallyDefinedCurveFont* = handle[
      StepVisual_ExternallyDefinedCurveFont]

## ! Representation of STEP entity ExternallyDefinedCurveFont

type
  StepVisual_ExternallyDefinedCurveFont* {.
      importcpp: "StepVisual_ExternallyDefinedCurveFont",
      header: "StepVisual_ExternallyDefinedCurveFont.hxx", bycopy.} = object of StepBasic_ExternallyDefinedItem ##
                                                                                                         ## !
                                                                                                         ## Empty
                                                                                                         ## constructor


proc constructStepVisual_ExternallyDefinedCurveFont*(): StepVisual_ExternallyDefinedCurveFont {.
    constructor, importcpp: "StepVisual_ExternallyDefinedCurveFont(@)",
    header: "StepVisual_ExternallyDefinedCurveFont.hxx".}
type
  StepVisual_ExternallyDefinedCurveFontbase_type* = StepBasic_ExternallyDefinedItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_ExternallyDefinedCurveFont::get_type_name(@)", header: "StepVisual_ExternallyDefinedCurveFont.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_ExternallyDefinedCurveFont::get_type_descriptor(@)",
    header: "StepVisual_ExternallyDefinedCurveFont.hxx".}
proc DynamicType*(this: StepVisual_ExternallyDefinedCurveFont): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_ExternallyDefinedCurveFont.hxx".}