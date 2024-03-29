import ../selectmgr/selectmgr_types
import ../standard/standard_types
import ais_types
import ../prs3d/prs3d_types
import ../prsmgr/prsmgr_types





##  Created by: Ilya SEVRIKOV
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

## ! Entity owner for selection management of AIS_Trihedron object.



proc newAIS_TrihedronOwner*(theSelObject: Handle[SelectMgrSelectableObject];
                           theDatumPart: Prs3dDatumParts; thePriority: cint): AIS_TrihedronOwner {.
    cdecl, constructor, importcpp: "AIS_TrihedronOwner(@)", header: "AIS_TrihedronOwner.hxx".}
proc datumPart*(this: AIS_TrihedronOwner): Prs3dDatumParts {.noSideEffect, cdecl,
    importcpp: "DatumPart", header: "AIS_TrihedronOwner.hxx".}
proc hilightWithColor*(this: var AIS_TrihedronOwner;
                      thePM: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: cint) {.cdecl,
    importcpp: "HilightWithColor", header: "AIS_TrihedronOwner.hxx".}
proc isHilighted*(this: AIS_TrihedronOwner;
                 thePM: Handle[PrsMgrPresentationManager]; theMode: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsHilighted", header: "AIS_TrihedronOwner.hxx".}
proc unhilight*(this: var AIS_TrihedronOwner;
               thePM: Handle[PrsMgrPresentationManager]; theMode: cint) {.cdecl,
    importcpp: "Unhilight", header: "AIS_TrihedronOwner.hxx".}



