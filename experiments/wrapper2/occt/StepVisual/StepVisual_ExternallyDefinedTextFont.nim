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

discard "forward decl of StepVisual_ExternallyDefinedTextFont"
discard "forward decl of StepVisual_ExternallyDefinedTextFont"
type
  HandleStepVisualExternallyDefinedTextFont* = Handle[
      StepVisualExternallyDefinedTextFont]

## ! Representation of STEP entity ExternallyDefinedTextFont

type
  StepVisualExternallyDefinedTextFont* {.importcpp: "StepVisual_ExternallyDefinedTextFont", header: "StepVisual_ExternallyDefinedTextFont.hxx",
                                        bycopy.} = object of StepBasicExternallyDefinedItem ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructStepVisualExternallyDefinedTextFont*(): StepVisualExternallyDefinedTextFont {.
    constructor, importcpp: "StepVisual_ExternallyDefinedTextFont(@)",
    header: "StepVisual_ExternallyDefinedTextFont.hxx".}
type
  StepVisualExternallyDefinedTextFontbaseType* = StepBasicExternallyDefinedItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_ExternallyDefinedTextFont::get_type_name(@)",
                            header: "StepVisual_ExternallyDefinedTextFont.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_ExternallyDefinedTextFont::get_type_descriptor(@)",
    header: "StepVisual_ExternallyDefinedTextFont.hxx".}
proc dynamicType*(this: StepVisualExternallyDefinedTextFont): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_ExternallyDefinedTextFont.hxx".}
