import ../../tkmath/gp/gp_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/tcolstd/tcolstd_types
import selectmgr_types





##  Created on: 1995-02-15
##  Created by: Roberc Coublanc
##  Copyright (c) 1995-1999 Matra Datavision
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

when defined(Status):
  discard




proc clear*(this: var SelectMgrViewerSelector) {.cdecl, importcpp: "Clear",
    header: "SelectMgr_ViewerSelector.hxx".}
proc customPixelTolerance*(this: SelectMgrViewerSelector): cint {.noSideEffect,
    cdecl, importcpp: "CustomPixelTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc setPixelTolerance*(this: var SelectMgrViewerSelector; theTolerance: cint) {.
    cdecl, importcpp: "SetPixelTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc sensitivity*(this: SelectMgrViewerSelector): cfloat {.noSideEffect, cdecl,
    importcpp: "Sensitivity", header: "SelectMgr_ViewerSelector.hxx".}
proc pixelTolerance*(this: SelectMgrViewerSelector): cint {.noSideEffect, cdecl,
    importcpp: "PixelTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc sortResult*(this: var SelectMgrViewerSelector) {.cdecl, importcpp: "SortResult",
    header: "SelectMgr_ViewerSelector.hxx".}
proc onePicked*(this: SelectMgrViewerSelector): Handle[SelectMgrEntityOwner] {.
    noSideEffect, cdecl, importcpp: "OnePicked", header: "SelectMgr_ViewerSelector.hxx".}
proc toPickClosest*(this: SelectMgrViewerSelector): bool {.noSideEffect, cdecl,
    importcpp: "ToPickClosest", header: "SelectMgr_ViewerSelector.hxx".}
proc setPickClosest*(this: var SelectMgrViewerSelector; theToPreferClosest: bool) {.
    cdecl, importcpp: "SetPickClosest", header: "SelectMgr_ViewerSelector.hxx".}
proc depthToleranceType*(this: SelectMgrViewerSelector): SelectMgrTypeOfDepthTolerance {.
    noSideEffect, cdecl, importcpp: "DepthToleranceType", header: "SelectMgr_ViewerSelector.hxx".}
proc depthTolerance*(this: SelectMgrViewerSelector): cfloat {.noSideEffect, cdecl,
    importcpp: "DepthTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc setDepthTolerance*(this: var SelectMgrViewerSelector;
                       theType: SelectMgrTypeOfDepthTolerance;
                       theTolerance: cfloat) {.cdecl,
    importcpp: "SetDepthTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc nbPicked*(this: SelectMgrViewerSelector): cint {.noSideEffect, cdecl,
    importcpp: "NbPicked", header: "SelectMgr_ViewerSelector.hxx".}
proc clearPicked*(this: var SelectMgrViewerSelector) {.cdecl,
    importcpp: "ClearPicked", header: "SelectMgr_ViewerSelector.hxx".}
proc picked*(this: SelectMgrViewerSelector; theRank: cint): Handle[
    SelectMgrEntityOwner] {.noSideEffect, cdecl, importcpp: "Picked", header: "SelectMgr_ViewerSelector.hxx".}
proc pickedData*(this: SelectMgrViewerSelector; theRank: cint): SelectMgrSortCriterion {.
    noSideEffect, cdecl, importcpp: "PickedData", header: "SelectMgr_ViewerSelector.hxx".}
proc pickedEntity*(this: SelectMgrViewerSelector; theRank: cint): Handle[
    Select3D_SensitiveEntity] {.noSideEffect, cdecl, importcpp: "PickedEntity",
                               header: "SelectMgr_ViewerSelector.hxx".}
proc pickedPoint*(this: SelectMgrViewerSelector; theRank: cint): PntObj {.noSideEffect,
    cdecl, importcpp: "PickedPoint", header: "SelectMgr_ViewerSelector.hxx".}
proc contains*(this: SelectMgrViewerSelector;
              theObject: Handle[SelectMgrSelectableObject]): bool {.noSideEffect,
    cdecl, importcpp: "Contains", header: "SelectMgr_ViewerSelector.hxx".}
proc entitySetBuilder*(this: var SelectMgrViewerSelector): Handle[
    Select3D_BVHBuilder3d] {.cdecl, importcpp: "EntitySetBuilder", header: "SelectMgr_ViewerSelector.hxx".}
proc setEntitySetBuilder*(this: var SelectMgrViewerSelector;
                         theBuilder: Handle[Select3D_BVHBuilder3d]) {.cdecl,
    importcpp: "SetEntitySetBuilder", header: "SelectMgr_ViewerSelector.hxx".}
proc modes*(this: SelectMgrViewerSelector;
           theSelectableObject: Handle[SelectMgrSelectableObject];
           theModeList: var TColStdListOfInteger;
           theWantedState: SelectMgrStateOfSelection = selectMgrSOS_Any): bool {.
    noSideEffect, cdecl, importcpp: "Modes", header: "SelectMgr_ViewerSelector.hxx".}
proc isActive*(this: SelectMgrViewerSelector;
              theSelectableObject: Handle[SelectMgrSelectableObject];
              theMode: cint): bool {.noSideEffect, cdecl, importcpp: "IsActive",
                                  header: "SelectMgr_ViewerSelector.hxx".}
proc isInside*(this: SelectMgrViewerSelector;
              theSelectableObject: Handle[SelectMgrSelectableObject];
              theMode: cint): bool {.noSideEffect, cdecl, importcpp: "IsInside",
                                  header: "SelectMgr_ViewerSelector.hxx".}
proc status*(this: SelectMgrViewerSelector;
            theSelection: Handle[SelectMgrSelection]): SelectMgrStateOfSelection {.
    noSideEffect, cdecl, importcpp: "Status", header: "SelectMgr_ViewerSelector.hxx".}
proc status*(this: SelectMgrViewerSelector;
            theSelectableObject: Handle[SelectMgrSelectableObject]): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Status", header: "SelectMgr_ViewerSelector.hxx".}
proc activeOwners*(this: SelectMgrViewerSelector;
                  theOwners: var NCollectionList[Handle[SelectMgrEntityOwner]]) {.
    noSideEffect, cdecl, importcpp: "ActiveOwners", header: "SelectMgr_ViewerSelector.hxx".}
proc addSelectableObject*(this: var SelectMgrViewerSelector;
                         theObject: Handle[SelectMgrSelectableObject]) {.cdecl,
    importcpp: "AddSelectableObject", header: "SelectMgr_ViewerSelector.hxx".}
proc addSelectionToObject*(this: var SelectMgrViewerSelector;
                          theObject: Handle[SelectMgrSelectableObject];
                          theSelection: Handle[SelectMgrSelection]) {.cdecl,
    importcpp: "AddSelectionToObject", header: "SelectMgr_ViewerSelector.hxx".}
proc moveSelectableObject*(this: var SelectMgrViewerSelector;
                          theObject: Handle[SelectMgrSelectableObject]) {.cdecl,
    importcpp: "MoveSelectableObject", header: "SelectMgr_ViewerSelector.hxx".}
proc removeSelectableObject*(this: var SelectMgrViewerSelector;
                            theObject: Handle[SelectMgrSelectableObject]) {.cdecl,
    importcpp: "RemoveSelectableObject", header: "SelectMgr_ViewerSelector.hxx".}
proc removeSelectionOfObject*(this: var SelectMgrViewerSelector;
                             theObject: Handle[SelectMgrSelectableObject];
                             theSelection: Handle[SelectMgrSelection]) {.cdecl,
    importcpp: "RemoveSelectionOfObject", header: "SelectMgr_ViewerSelector.hxx".}
proc rebuildObjectsTree*(this: var SelectMgrViewerSelector; theIsForce: bool = false) {.
    cdecl, importcpp: "RebuildObjectsTree", header: "SelectMgr_ViewerSelector.hxx".}
proc rebuildSensitivesTree*(this: var SelectMgrViewerSelector;
                           theObject: Handle[SelectMgrSelectableObject];
                           theIsForce: bool = false) {.cdecl,
    importcpp: "RebuildSensitivesTree", header: "SelectMgr_ViewerSelector.hxx".}
proc getManager*(this: var SelectMgrViewerSelector): var SelectMgrSelectingVolumeManager {.
    cdecl, importcpp: "GetManager", header: "SelectMgr_ViewerSelector.hxx".}
proc selectableObjects*(this: SelectMgrViewerSelector): SelectMgrSelectableObjectSet {.
    noSideEffect, cdecl, importcpp: "SelectableObjects", header: "SelectMgr_ViewerSelector.hxx".}
proc resetSelectionActivationStatus*(this: var SelectMgrViewerSelector) {.cdecl,
    importcpp: "ResetSelectionActivationStatus", header: "SelectMgr_ViewerSelector.hxx".}
proc allowOverlapDetection*(this: var SelectMgrViewerSelector; theIsToAllow: bool) {.
    cdecl, importcpp: "AllowOverlapDetection", header: "SelectMgr_ViewerSelector.hxx".}
proc dumpJson*(this: SelectMgrViewerSelector; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_ViewerSelector.hxx".}
proc init*(this: var SelectMgrViewerSelector) {.cdecl, importcpp: "Init", header: "SelectMgr_ViewerSelector.hxx".}
proc more*(this: var SelectMgrViewerSelector): bool {.cdecl, importcpp: "More",
    header: "SelectMgr_ViewerSelector.hxx".}
proc next*(this: var SelectMgrViewerSelector) {.cdecl, importcpp: "Next", header: "SelectMgr_ViewerSelector.hxx".}
proc picked*(this: SelectMgrViewerSelector): Handle[SelectMgrEntityOwner] {.
    noSideEffect, cdecl, importcpp: "Picked", header: "SelectMgr_ViewerSelector.hxx".}
proc initDetected*(this: var SelectMgrViewerSelector) {.cdecl,
    importcpp: "InitDetected", header: "SelectMgr_ViewerSelector.hxx".}
proc nextDetected*(this: var SelectMgrViewerSelector) {.cdecl,
    importcpp: "NextDetected", header: "SelectMgr_ViewerSelector.hxx".}
proc moreDetected*(this: var SelectMgrViewerSelector): bool {.cdecl,
    importcpp: "MoreDetected", header: "SelectMgr_ViewerSelector.hxx".}
proc detectedEntity*(this: SelectMgrViewerSelector): Handle[
    Select3D_SensitiveEntity] {.noSideEffect, cdecl, importcpp: "DetectedEntity",
                               header: "SelectMgr_ViewerSelector.hxx".}
proc setToPrebuildBVH*(this: var SelectMgrViewerSelector; theToPrebuild: bool;
                      theThreadsNum: cint = -1) {.cdecl,
    importcpp: "SetToPrebuildBVH", header: "SelectMgr_ViewerSelector.hxx".}
proc queueBVHBuild*(this: var SelectMgrViewerSelector;
                   theEntity: Handle[Select3D_SensitiveEntity]) {.cdecl,
    importcpp: "QueueBVHBuild", header: "SelectMgr_ViewerSelector.hxx".}
proc waitForBVHBuild*(this: var SelectMgrViewerSelector) {.cdecl,
    importcpp: "WaitForBVHBuild", header: "SelectMgr_ViewerSelector.hxx".}
proc toPrebuildBVH*(this: SelectMgrViewerSelector): bool {.noSideEffect, cdecl,
    importcpp: "ToPrebuildBVH", header: "SelectMgr_ViewerSelector.hxx".}



