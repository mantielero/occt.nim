import ../selectmgr/selectmgr_types
import prsdim_types
import ../../tkernel/standard/standard_types
import ../prs3d/prs3d_types
import ../prsmgr/prsmgr_types





##  Created on: 1996-12-05
##  Created by: Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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





proc newPrsDimDimensionOwner*(theSelObject: Handle[SelectMgrSelectableObject];
                             theSelMode: PrsDimDimensionSelectionMode;
                             thePriority: cint = 0): PrsDimDimensionOwner {.cdecl,
    constructor, importcpp: "PrsDim_DimensionOwner(@)", header: "PrsDim_DimensionOwner.hxx".}
proc selectionMode*(this: PrsDimDimensionOwner): PrsDimDimensionSelectionMode {.
    noSideEffect, cdecl, importcpp: "SelectionMode", header: "PrsDim_DimensionOwner.hxx".}
proc hilightWithColor*(this: var PrsDimDimensionOwner;
                      thePM: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: cint = 0) {.cdecl,
    importcpp: "HilightWithColor", header: "PrsDim_DimensionOwner.hxx".}
proc isHilighted*(this: PrsDimDimensionOwner;
                 thePM: Handle[PrsMgrPresentationManager]; theMode: cint = 0): bool {.
    noSideEffect, cdecl, importcpp: "IsHilighted", header: "PrsDim_DimensionOwner.hxx".}
proc unhilight*(this: var PrsDimDimensionOwner;
               thePM: Handle[PrsMgrPresentationManager]; theMode: cint = 0) {.cdecl,
    importcpp: "Unhilight", header: "PrsDim_DimensionOwner.hxx".}


