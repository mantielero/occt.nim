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

import
  ../Graphic3d/Graphic3d_Vec3, ../Graphic3d/Graphic3d_ZLayerId,
  ../Precision/Precision, ../Select3D/Select3D_SensitiveEntity

## ! This class provides data and criterion for sorting candidate
## ! entities in the process of interactive selection by mouse click

type
  SelectMgr_SortCriterion* {.importcpp: "SelectMgr_SortCriterion",
                            header: "SelectMgr_SortCriterion.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor.
    Entity* {.importc: "Entity".}: handle[Select3D_SensitiveEntity] ## !< detected entity
    Point* {.importc: "Point".}: gp_Pnt ## !< 3D point
    Normal* {.importc: "Normal".}: Graphic3d_Vec3 ## !< surface normal or 0 vector if undefined
    Depth* {.importc: "Depth".}: Standard_Real ## !< distance from the view plane to the entity
    MinDist* {.importc: "MinDist".}: Standard_Real ## !< distance from the clicked point to the entity on the view plane
    Tolerance* {.importc: "Tolerance".}: Standard_Real ## !< tolerance used for selecting candidates
    Priority* {.importc: "Priority".}: Standard_Integer ## !< selection priority
    ZLayerPosition* {.importc: "ZLayerPosition".}: Standard_Integer ## !< ZLayer rendering order index, stronger than a depth
    NbOwnerMatches* {.importc: "NbOwnerMatches".}: Standard_Integer ## !< overall number of entities collected for the same owner


proc constructSelectMgr_SortCriterion*(): SelectMgr_SortCriterion {.constructor,
    importcpp: "SelectMgr_SortCriterion(@)", header: "SelectMgr_SortCriterion.hxx".}
proc IsCloserDepth*(this: SelectMgr_SortCriterion;
                   theOther: SelectMgr_SortCriterion): bool {.noSideEffect,
    importcpp: "IsCloserDepth", header: "SelectMgr_SortCriterion.hxx".}
proc IsHigherPriority*(this: SelectMgr_SortCriterion;
                      theOther: SelectMgr_SortCriterion): bool {.noSideEffect,
    importcpp: "IsHigherPriority", header: "SelectMgr_SortCriterion.hxx".}