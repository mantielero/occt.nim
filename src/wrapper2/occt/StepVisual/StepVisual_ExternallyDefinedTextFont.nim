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

discard "forward decl of StepVisual_ExternallyDefinedTextFont"
discard "forward decl of StepVisual_ExternallyDefinedTextFont"
type
  Handle_StepVisual_ExternallyDefinedTextFont* = handle[
      StepVisual_ExternallyDefinedTextFont]

## ! Representation of STEP entity ExternallyDefinedTextFont

type
  StepVisual_ExternallyDefinedTextFont* {.
      importcpp: "StepVisual_ExternallyDefinedTextFont",
      header: "StepVisual_ExternallyDefinedTextFont.hxx", bycopy.} = object of StepBasic_ExternallyDefinedItem ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepVisual_ExternallyDefinedTextFont*(): StepVisual_ExternallyDefinedTextFont {.
    constructor, importcpp: "StepVisual_ExternallyDefinedTextFont(@)",
    header: "StepVisual_ExternallyDefinedTextFont.hxx".}
type
  StepVisual_ExternallyDefinedTextFontbase_type* = StepBasic_ExternallyDefinedItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_ExternallyDefinedTextFont::get_type_name(@)", header: "StepVisual_ExternallyDefinedTextFont.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_ExternallyDefinedTextFont::get_type_descriptor(@)",
    header: "StepVisual_ExternallyDefinedTextFont.hxx".}
proc DynamicType*(this: StepVisual_ExternallyDefinedTextFont): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_ExternallyDefinedTextFont.hxx".}