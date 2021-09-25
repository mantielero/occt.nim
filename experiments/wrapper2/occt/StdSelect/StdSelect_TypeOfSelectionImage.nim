##  Created on: 2016-12-09
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

## ! Type of output selection image.

type
  StdSelectTypeOfSelectionImage* {.size: sizeof(cint),
                                  importcpp: "StdSelect_TypeOfSelectionImage",
                                  header: "StdSelect_TypeOfSelectionImage.hxx".} = enum
    StdSelectTypeOfSelectionImageNormalizedDepth = 0, ## !< normalized   depth (grayscale)
    StdSelectTypeOfSelectionImageNormalizedDepthInverted, ## !< normalized   depth, inverted
    StdSelectTypeOfSelectionImageUnnormalizedDepth, ## !< unnormalized depth (grayscale)
    StdSelectTypeOfSelectionImageColoredDetectedObject, ## !< color of detected object
    StdSelectTypeOfSelectionImageColoredEntity, ## !< random color for each entity
    StdSelectTypeOfSelectionImageColoredOwner, ## !< random color for each owner
    StdSelectTypeOfSelectionImageColoredSelectionMode ## !< color of selection mode


