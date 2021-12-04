##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Define the type of depth tolerance for considering picked entities to lie on the same depth (distance from eye to entity).
## ! @sa SelectMgr_SortCriterion, SelectMgr_ViewerSelector

type
  SelectMgrTypeOfDepthTolerance* {.size: sizeof(cint),
                                  importcpp: "SelectMgr_TypeOfDepthTolerance",
                                  header: "SelectMgr_TypeOfDepthTolerance.hxx".} = enum
    SelectMgrTypeOfDepthToleranceUniform, ## !< use a predefined tolerance value (defined in 3D world scale) to compare any entities
    SelectMgrTypeOfDepthToleranceUniformPixels, ## !< use a predefined tolerance value (defined in pixels) to compare any entities
    SelectMgrTypeOfDepthToleranceSensitivityFactor ## !< use sensitivity factor (in pixels) assigned to specific entity

