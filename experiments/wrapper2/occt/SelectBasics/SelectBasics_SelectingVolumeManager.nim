##  Created on: 2014-08-21
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  SelectBasicsSelectingVolumeManager* {.importcpp: "SelectBasics_SelectingVolumeManager", header: "SelectBasics_SelectingVolumeManager.hxx",
                                       bycopy.} = object ## ! Available selection types
    ## !< Active selection type: point, box or polyline

  SelectBasicsSelectingVolumeManagerSelectionType* {.size: sizeof(cint),
      importcpp: "SelectBasics_SelectingVolumeManager::SelectionType",
      header: "SelectBasics_SelectingVolumeManager.hxx".} = enum
    Point, Box, Polyline, Unknown


proc constructSelectBasicsSelectingVolumeManager*(): SelectBasicsSelectingVolumeManager {.
    constructor, importcpp: "SelectBasics_SelectingVolumeManager(@)",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc destroySelectBasicsSelectingVolumeManager*(
    this: var SelectBasicsSelectingVolumeManager) {.
    importcpp: "#.~SelectBasics_SelectingVolumeManager()",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc getActiveSelectionType*(this: SelectBasicsSelectingVolumeManager): int {.
    noSideEffect, importcpp: "GetActiveSelectionType",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectBasicsSelectingVolumeManager;
              theBoxMin: NCollectionVec3[float];
              theBoxMax: NCollectionVec3[float];
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect,
    importcpp: "Overlaps", header: "SelectBasics_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectBasicsSelectingVolumeManager;
              theBoxMin: NCollectionVec3[float];
              theBoxMax: NCollectionVec3[float]; theInside: ptr bool = nil): bool {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectBasicsSelectingVolumeManager; thePnt: Pnt;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect,
    importcpp: "Overlaps", header: "SelectBasics_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectBasicsSelectingVolumeManager; thePnt: Pnt): bool {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectBasicsSelectingVolumeManager;
              theArrayOfPts: Handle[TColgpHArray1OfPnt]; theSensType: int;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect,
    importcpp: "Overlaps", header: "SelectBasics_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectBasicsSelectingVolumeManager;
              theArrayOfPts: TColgpArray1OfPnt; theSensType: int;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect,
    importcpp: "Overlaps", header: "SelectBasics_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectBasicsSelectingVolumeManager; thePt1: Pnt; thePt2: Pnt;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect,
    importcpp: "Overlaps", header: "SelectBasics_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectBasicsSelectingVolumeManager; thePt1: Pnt; thePt2: Pnt;
              thePt3: Pnt; theSensType: int;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect,
    importcpp: "Overlaps", header: "SelectBasics_SelectingVolumeManager.hxx".}
proc distToGeometryCenter*(this: SelectBasicsSelectingVolumeManager; theCOG: Pnt): float {.
    noSideEffect, importcpp: "DistToGeometryCenter",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc detectedPoint*(this: SelectBasicsSelectingVolumeManager; theDepth: float): Pnt {.
    noSideEffect, importcpp: "DetectedPoint",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc isOverlapAllowed*(this: SelectBasicsSelectingVolumeManager): bool {.
    noSideEffect, importcpp: "IsOverlapAllowed",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc getNearPickedPnt*(this: SelectBasicsSelectingVolumeManager): Pnt {.
    noSideEffect, importcpp: "GetNearPickedPnt",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc getFarPickedPnt*(this: SelectBasicsSelectingVolumeManager): Pnt {.noSideEffect,
    importcpp: "GetFarPickedPnt",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc getMousePosition*(this: SelectBasicsSelectingVolumeManager): Pnt2d {.
    noSideEffect, importcpp: "GetMousePosition",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc getPlanes*(this: SelectBasicsSelectingVolumeManager;
               thePlaneEquations: var NCollectionVector[NCollectionVec4[float]]) {.
    noSideEffect, importcpp: "GetPlanes",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc dumpJson*(this: SelectBasicsSelectingVolumeManager;
              theOStream: var StandardOStream; theDepth: int = -1) {.noSideEffect,
    importcpp: "DumpJson", header: "SelectBasics_SelectingVolumeManager.hxx".}
