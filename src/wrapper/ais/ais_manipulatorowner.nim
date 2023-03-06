import ../selectmgr/selectmgr_types
import ../standard/standard_types
import ais_types
import ../prs3d/prs3d_types
import ../prsmgr/prsmgr_types





##  Created on: 2015-12-23
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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





proc newAIS_ManipulatorOwner*(theSelObject: Handle[SelectMgrSelectableObject];
                             theIndex: cint; theMode: AIS_ManipulatorMode;
                             thePriority: cint = 0): AIS_ManipulatorOwner {.cdecl,
    constructor, importcpp: "AIS_ManipulatorOwner(@)", header: "AIS_ManipulatorOwner.hxx".}
proc hilightWithColor*(this: var AIS_ManipulatorOwner;
                      thePM: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: cint) {.cdecl,
    importcpp: "HilightWithColor", header: "AIS_ManipulatorOwner.hxx".}
proc isHilighted*(this: AIS_ManipulatorOwner;
                 thePM: Handle[PrsMgrPresentationManager]; theMode: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsHilighted", header: "AIS_ManipulatorOwner.hxx".}
proc unhilight*(this: var AIS_ManipulatorOwner;
               thePM: Handle[PrsMgrPresentationManager]; theMode: cint) {.cdecl,
    importcpp: "Unhilight", header: "AIS_ManipulatorOwner.hxx".}
proc mode*(this: AIS_ManipulatorOwner): AIS_ManipulatorMode {.noSideEffect, cdecl,
    importcpp: "Mode", header: "AIS_ManipulatorOwner.hxx".}
proc index*(this: AIS_ManipulatorOwner): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "AIS_ManipulatorOwner.hxx".}


