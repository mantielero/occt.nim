import selectmgr_types





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



proc newSelectMgrSortCriterion*(): SelectMgrSortCriterion {.cdecl, constructor,
    importcpp: "SelectMgr_SortCriterion(@)", header: "SelectMgr_SortCriterion.hxx".}
proc isCloserDepth*(this: SelectMgrSortCriterion; theOther: SelectMgrSortCriterion): bool {.
    noSideEffect, cdecl, importcpp: "IsCloserDepth", header: "SelectMgr_SortCriterion.hxx".}
proc isHigherPriority*(this: SelectMgrSortCriterion;
                      theOther: SelectMgrSortCriterion): bool {.noSideEffect, cdecl,
    importcpp: "IsHigherPriority", header: "SelectMgr_SortCriterion.hxx".}


