##  Created on: 1998-03-26
##  Created by: Robert COUBLANC
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

## ! This class provides data and criterion for sorting candidate
## ! entities in the process of interactive selection by mouse click

type
  SelectMgrSortCriterion* {.importcpp: "SelectMgr_SortCriterion",
                           header: "SelectMgr_SortCriterion.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor.
    entity* {.importc: "Entity".}: Handle[Select3D_SensitiveEntity] ## !< detected entity
    point* {.importc: "Point".}: GpPnt ## !< 3D point
    normal* {.importc: "Normal".}: Graphic3dVec3 ## !< surface normal or 0 vector if undefined
    depth* {.importc: "Depth".}: StandardReal ## !< distance from the view plane to the entity
    minDist* {.importc: "MinDist".}: StandardReal ## !< distance from the clicked point to the entity on the view plane
    tolerance* {.importc: "Tolerance".}: StandardReal ## !< tolerance used for selecting candidates
    priority* {.importc: "Priority".}: StandardInteger ## !< selection priority
    zLayerPosition* {.importc: "ZLayerPosition".}: StandardInteger ## !< ZLayer rendering order index, stronger than a depth
    nbOwnerMatches* {.importc: "NbOwnerMatches".}: StandardInteger ## !< overall number of entities collected for the same owner


proc constructSelectMgrSortCriterion*(): SelectMgrSortCriterion {.constructor,
    importcpp: "SelectMgr_SortCriterion(@)", header: "SelectMgr_SortCriterion.hxx".}
proc isCloserDepth*(this: SelectMgrSortCriterion; theOther: SelectMgrSortCriterion): bool {.
    noSideEffect, importcpp: "IsCloserDepth", header: "SelectMgr_SortCriterion.hxx".}
proc isHigherPriority*(this: SelectMgrSortCriterion;
                      theOther: SelectMgrSortCriterion): bool {.noSideEffect,
    importcpp: "IsHigherPriority", header: "SelectMgr_SortCriterion.hxx".}

