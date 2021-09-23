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

import
  ../BVH/BVH_Box, ../gp/gp_Pnt, ../TColgp/TColgp_HArray1OfPnt,
  SelectBasics_PickResult, ../Standard/Standard_Dump

discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  SelectBasics_SelectingVolumeManager* {.importcpp: "SelectBasics_SelectingVolumeManager", header: "SelectBasics_SelectingVolumeManager.hxx",
                                        bycopy.} = object ## ! Available selection types
    ## !< Active selection type: point, box or polyline

  SelectBasics_SelectingVolumeManagerSelectionType* {.size: sizeof(cint),
      importcpp: "SelectBasics_SelectingVolumeManager::SelectionType",
      header: "SelectBasics_SelectingVolumeManager.hxx".} = enum
    Point, Box, Polyline, Unknown


proc constructSelectBasics_SelectingVolumeManager*(): SelectBasics_SelectingVolumeManager {.
    constructor, importcpp: "SelectBasics_SelectingVolumeManager(@)",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc destroySelectBasics_SelectingVolumeManager*(
    this: var SelectBasics_SelectingVolumeManager) {.
    importcpp: "#.~SelectBasics_SelectingVolumeManager()",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc GetActiveSelectionType*(this: SelectBasics_SelectingVolumeManager): Standard_Integer {.
    noSideEffect, importcpp: "GetActiveSelectionType",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectBasics_SelectingVolumeManager;
              theBoxMin: NCollection_Vec3[Standard_Real];
              theBoxMax: NCollection_Vec3[Standard_Real];
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectBasics_SelectingVolumeManager;
              theBoxMin: NCollection_Vec3[Standard_Real];
              theBoxMax: NCollection_Vec3[Standard_Real];
              theInside: ptr Standard_Boolean = nil): Standard_Boolean {.noSideEffect,
    importcpp: "Overlaps", header: "SelectBasics_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectBasics_SelectingVolumeManager; thePnt: gp_Pnt;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectBasics_SelectingVolumeManager; thePnt: gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectBasics_SelectingVolumeManager;
              theArrayOfPts: handle[TColgp_HArray1OfPnt];
              theSensType: Standard_Integer;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectBasics_SelectingVolumeManager;
              theArrayOfPts: TColgp_Array1OfPnt; theSensType: Standard_Integer;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectBasics_SelectingVolumeManager; thePt1: gp_Pnt;
              thePt2: gp_Pnt; thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectBasics_SelectingVolumeManager; thePt1: gp_Pnt;
              thePt2: gp_Pnt; thePt3: gp_Pnt; theSensType: Standard_Integer;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc DistToGeometryCenter*(this: SelectBasics_SelectingVolumeManager;
                          theCOG: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "DistToGeometryCenter",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc DetectedPoint*(this: SelectBasics_SelectingVolumeManager;
                   theDepth: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "DetectedPoint", header: "SelectBasics_SelectingVolumeManager.hxx".}
proc IsOverlapAllowed*(this: SelectBasics_SelectingVolumeManager): Standard_Boolean {.
    noSideEffect, importcpp: "IsOverlapAllowed",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc GetNearPickedPnt*(this: SelectBasics_SelectingVolumeManager): gp_Pnt {.
    noSideEffect, importcpp: "GetNearPickedPnt",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc GetFarPickedPnt*(this: SelectBasics_SelectingVolumeManager): gp_Pnt {.
    noSideEffect, importcpp: "GetFarPickedPnt",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc GetMousePosition*(this: SelectBasics_SelectingVolumeManager): gp_Pnt2d {.
    noSideEffect, importcpp: "GetMousePosition",
    header: "SelectBasics_SelectingVolumeManager.hxx".}
proc GetPlanes*(this: SelectBasics_SelectingVolumeManager; thePlaneEquations: var NCollection_Vector[
    NCollection_Vec4[Standard_Real]]) {.noSideEffect, importcpp: "GetPlanes", header: "SelectBasics_SelectingVolumeManager.hxx".}
proc DumpJson*(this: SelectBasics_SelectingVolumeManager;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "SelectBasics_SelectingVolumeManager.hxx".}