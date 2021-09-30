##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Type of highlighting to apply specific style.

type
  Prs3dTypeOfHighlight* {.size: sizeof(cint), importcpp: "Prs3d_TypeOfHighlight",
                         header: "Prs3d_TypeOfHighlight.hxx".} = enum
    Prs3dTypeOfHighlightNone = 0, ## !< no highlighting
    Prs3dTypeOfHighlightSelected, ## !< entire object is selected
    Prs3dTypeOfHighlightDynamic, ## !< entire object is dynamically highlighted
    Prs3dTypeOfHighlightLocalSelected, ## !< part of the object is selected
    Prs3dTypeOfHighlightLocalDynamic, ## !< part of the object is dynamically highlighted
    Prs3dTypeOfHighlightSubIntensity, ## !< sub-intensity style
    Prs3dTypeOfHighlightNB



























