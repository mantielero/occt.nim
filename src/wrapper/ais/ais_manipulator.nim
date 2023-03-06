import ../selectmgr/selectmgr_types
import ../gp/gp_types
import ../standard/standard_types
import ais_types
import ../ncollection/ncollection_types
import ../prs3d/prs3d_types
import ../prsmgr/prsmgr_types
import ../v3d/v3d_types
import ../graphic3d/graphic3d_types





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



proc newAIS_ManipulatorObjectSequence*(): AIS_ManipulatorObjectSequence {.cdecl,
    constructor, importcpp: "AIS_ManipulatorObjectSequence(@)", header: "AIS_Manipulator.hxx".}
proc newAIS_ManipulatorObjectSequence*(theOther: NCollectionSequence[
    Handle[AIS_InteractiveObject]]): AIS_ManipulatorObjectSequence {.cdecl,
    constructor, importcpp: "AIS_ManipulatorObjectSequence(@)", header: "AIS_Manipulator.hxx".}
proc sequence*(this: AIS_ManipulatorObjectSequence): NCollectionSequence[
    Handle[AIS_InteractiveObject]] {.noSideEffect, cdecl, importcpp: "Sequence",
                                    header: "AIS_Manipulator.hxx".}
#proc append*(this: var AIS_ManipulatorObjectSequence;
#            theItem: ValueType[Handle[AIS_InteractiveObject]]) {.cdecl,
#    importcpp: "Append", header: "AIS_Manipulator.hxx".}
proc append*(this: var AIS_ManipulatorObjectSequence;
            theSequence: var NCollectionSequence[Handle[AIS_InteractiveObject]]) {.
    cdecl, importcpp: "Append", header: "AIS_Manipulator.hxx".}
proc changeSequence*(this: var AIS_ManipulatorObjectSequence): var NCollectionSequence[
    Handle[AIS_InteractiveObject]] {.cdecl, importcpp: "ChangeSequence",
                                    header: "AIS_Manipulator.hxx".}




proc newAIS_Manipulator*(): AIS_Manipulator {.cdecl, constructor,
    importcpp: "AIS_Manipulator(@)", header: "AIS_Manipulator.hxx".}
proc newAIS_Manipulator*(thePosition: gp_Ax2): AIS_Manipulator {.cdecl, constructor,
    importcpp: "AIS_Manipulator(@)", header: "AIS_Manipulator.hxx".}
proc setPart*(this: var AIS_Manipulator; theAxisIndex: cint;
             theMode: AIS_ManipulatorMode; theIsEnabled: bool) {.cdecl,
    importcpp: "SetPart", header: "AIS_Manipulator.hxx".}
proc setPart*(this: var AIS_Manipulator; theMode: AIS_ManipulatorMode;
             theIsEnabled: bool) {.cdecl, importcpp: "SetPart", header: "AIS_Manipulator.hxx".}


proc newAIS_ManipulatorOptionsForAttach*(): AIS_ManipulatorOptionsForAttach {.
    cdecl, constructor, importcpp: "AIS_Manipulator::OptionsForAttach(@)",
    header: "AIS_Manipulator.hxx".}
proc setAdjustPosition*(this: var AIS_ManipulatorOptionsForAttach; theApply: bool): var AIS_ManipulatorOptionsForAttach {.
    cdecl, importcpp: "SetAdjustPosition", header: "AIS_Manipulator.hxx".}
proc setAdjustSize*(this: var AIS_ManipulatorOptionsForAttach; theApply: bool): var AIS_ManipulatorOptionsForAttach {.
    cdecl, importcpp: "SetAdjustSize", header: "AIS_Manipulator.hxx".}
proc setEnableModes*(this: var AIS_ManipulatorOptionsForAttach; theApply: bool): var AIS_ManipulatorOptionsForAttach {.
    cdecl, importcpp: "SetEnableModes", header: "AIS_Manipulator.hxx".}
#proc attach*(this: var AIS_Manipulator; theObject: Handle[AIS_InteractiveObject];
#            theOptions: AIS_ManipulatorOptionsForAttach = newOptionsForAttach()) {.
#    cdecl, importcpp: "Attach", header: "AIS_Manipulator.hxx".}
#proc attach*(this: var AIS_Manipulator;
#            theObject: Handle[AIS_ManipulatorObjectSequence];
#            theOptions: AIS_ManipulatorOptionsForAttach = newOptionsForAttach()) {.
#    cdecl, importcpp: "Attach", header: "AIS_Manipulator.hxx".}
proc enableMode*(this: var AIS_Manipulator; theMode: AIS_ManipulatorMode) {.cdecl,
    importcpp: "EnableMode", header: "AIS_Manipulator.hxx".}
proc setModeActivationOnDetection*(this: var AIS_Manipulator; theToEnable: bool) {.
    cdecl, importcpp: "SetModeActivationOnDetection", header: "AIS_Manipulator.hxx".}
proc isModeActivationOnDetection*(this: AIS_Manipulator): bool {.noSideEffect, cdecl,
    importcpp: "IsModeActivationOnDetection", header: "AIS_Manipulator.hxx".}
proc processDragging*(this: var AIS_Manipulator;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView];
                     theOwner: Handle[SelectMgrEntityOwner];
                     theDragFrom: Graphic3dVec2i; theDragTo: Graphic3dVec2i;
                     theAction: AIS_DragAction): bool {.cdecl,
    importcpp: "ProcessDragging", header: "AIS_Manipulator.hxx".}
proc startTransform*(this: var AIS_Manipulator; theX: cint; theY: cint;
                    theView: Handle[V3dView]) {.cdecl, importcpp: "StartTransform",
    header: "AIS_Manipulator.hxx".}
proc transform*(this: var AIS_Manipulator; aTrsf: gp_Trsf) {.cdecl,
    importcpp: "Transform", header: "AIS_Manipulator.hxx".}
proc stopTransform*(this: var AIS_Manipulator; theToApply: bool = true) {.cdecl,
    importcpp: "StopTransform", header: "AIS_Manipulator.hxx".}
proc transform*(this: var AIS_Manipulator; theX: cint; theY: cint;
               theView: Handle[V3dView]): gp_Trsf {.cdecl, importcpp: "Transform",
    header: "AIS_Manipulator.hxx".}
proc objectTransformation*(this: var AIS_Manipulator; theX: cint; theY: cint;
                          theView: Handle[V3dView]; theTrsf: var gp_Trsf): bool {.cdecl,
    importcpp: "ObjectTransformation", header: "AIS_Manipulator.hxx".}
proc deactivateCurrentMode*(this: var AIS_Manipulator) {.cdecl,
    importcpp: "DeactivateCurrentMode", header: "AIS_Manipulator.hxx".}
proc detach*(this: var AIS_Manipulator) {.cdecl, importcpp: "Detach", header: "AIS_Manipulator.hxx".}
proc objects*(this: AIS_Manipulator): Handle[AIS_ManipulatorObjectSequence] {.
    noSideEffect, cdecl, importcpp: "Objects", header: "AIS_Manipulator.hxx".}
proc `object`*(this: AIS_Manipulator): Handle[AIS_InteractiveObject] {.noSideEffect,
    cdecl, importcpp: "Object", header: "AIS_Manipulator.hxx".}
proc `object`*(this: AIS_Manipulator; theIndex: cint): Handle[AIS_InteractiveObject] {.
    noSideEffect, cdecl, importcpp: "Object", header: "AIS_Manipulator.hxx".}
proc isAttached*(this: AIS_Manipulator): bool {.noSideEffect, cdecl,
    importcpp: "IsAttached", header: "AIS_Manipulator.hxx".}
proc hasActiveMode*(this: AIS_Manipulator): bool {.noSideEffect, cdecl,
    importcpp: "HasActiveMode", header: "AIS_Manipulator.hxx".}
proc hasActiveTransformation*(this: var AIS_Manipulator): bool {.cdecl,
    importcpp: "HasActiveTransformation", header: "AIS_Manipulator.hxx".}
proc startTransformation*(this: AIS_Manipulator): gp_Trsf {.noSideEffect, cdecl,
    importcpp: "StartTransformation", header: "AIS_Manipulator.hxx".}
proc startTransformation*(this: AIS_Manipulator; theIndex: cint): gp_Trsf {.noSideEffect,
    cdecl, importcpp: "StartTransformation", header: "AIS_Manipulator.hxx".}
proc setZoomPersistence*(this: var AIS_Manipulator; theToEnable: bool) {.cdecl,
    importcpp: "SetZoomPersistence", header: "AIS_Manipulator.hxx".}
proc zoomPersistence*(this: AIS_Manipulator): bool {.noSideEffect, cdecl,
    importcpp: "ZoomPersistence", header: "AIS_Manipulator.hxx".}
proc setTransformPersistence*(this: var AIS_Manipulator;
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.cdecl,
    importcpp: "SetTransformPersistence", header: "AIS_Manipulator.hxx".}
proc activeMode*(this: AIS_Manipulator): AIS_ManipulatorMode {.noSideEffect, cdecl,
    importcpp: "ActiveMode", header: "AIS_Manipulator.hxx".}
proc activeAxisIndex*(this: AIS_Manipulator): cint {.noSideEffect, cdecl,
    importcpp: "ActiveAxisIndex", header: "AIS_Manipulator.hxx".}
proc position*(this: AIS_Manipulator): gp_Ax2 {.noSideEffect, cdecl,
    importcpp: "Position", header: "AIS_Manipulator.hxx".}
proc setPosition*(this: var AIS_Manipulator; thePosition: gp_Ax2) {.cdecl,
    importcpp: "SetPosition", header: "AIS_Manipulator.hxx".}
proc size*(this: AIS_Manipulator): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Size", header: "AIS_Manipulator.hxx".}
proc setSize*(this: var AIS_Manipulator; theSideLength: StandardShortReal) {.cdecl,
    importcpp: "SetSize", header: "AIS_Manipulator.hxx".}
proc setGap*(this: var AIS_Manipulator; theValue: StandardShortReal) {.cdecl,
    importcpp: "SetGap", header: "AIS_Manipulator.hxx".}


proc newAIS_ManipulatorBehaviorOnTransform*(): AIS_ManipulatorBehaviorOnTransform {.
    cdecl, constructor, importcpp: "AIS_Manipulator::BehaviorOnTransform(@)",
    header: "AIS_Manipulator.hxx".}
proc setFollowTranslation*(this: var AIS_ManipulatorBehaviorOnTransform;
                          theApply: bool): var AIS_ManipulatorBehaviorOnTransform {.
    cdecl, importcpp: "SetFollowTranslation", header: "AIS_Manipulator.hxx".}
proc setFollowRotation*(this: var AIS_ManipulatorBehaviorOnTransform; theApply: bool): var AIS_ManipulatorBehaviorOnTransform {.
    cdecl, importcpp: "SetFollowRotation", header: "AIS_Manipulator.hxx".}
proc setFollowDragging*(this: var AIS_ManipulatorBehaviorOnTransform; theApply: bool): var AIS_ManipulatorBehaviorOnTransform {.
    cdecl, importcpp: "SetFollowDragging", header: "AIS_Manipulator.hxx".}
proc setTransformBehavior*(this: var AIS_Manipulator;
                          theSettings: AIS_ManipulatorBehaviorOnTransform) {.
    cdecl, importcpp: "SetTransformBehavior", header: "AIS_Manipulator.hxx".}
proc changeTransformBehavior*(this: var AIS_Manipulator): var AIS_ManipulatorBehaviorOnTransform {.
    cdecl, importcpp: "ChangeTransformBehavior", header: "AIS_Manipulator.hxx".}
proc transformBehavior*(this: AIS_Manipulator): AIS_ManipulatorBehaviorOnTransform {.
    noSideEffect, cdecl, importcpp: "TransformBehavior", header: "AIS_Manipulator.hxx".}
proc compute*(this: var AIS_Manipulator;
             thePrsMgr: Handle[PrsMgrPresentationManager3d];
             thePrs: Handle[Prs3dPresentation]; theMode: cint = 0) {.cdecl,
    importcpp: "Compute", header: "AIS_Manipulator.hxx".}
proc computeSelection*(this: var AIS_Manipulator;
                      theSelection: Handle[SelectMgrSelection]; theMode: cint) {.
    cdecl, importcpp: "ComputeSelection", header: "AIS_Manipulator.hxx".}
proc isAutoHilight*(this: AIS_Manipulator): bool {.noSideEffect, cdecl,
    importcpp: "IsAutoHilight", header: "AIS_Manipulator.hxx".}
proc clearSelected*(this: var AIS_Manipulator) {.cdecl, importcpp: "ClearSelected",
    header: "AIS_Manipulator.hxx".}
proc hilightSelected*(this: var AIS_Manipulator;
                     thePM: Handle[PrsMgrPresentationManager3d];
                     theSeq: SelectMgrSequenceOfOwner) {.cdecl,
    importcpp: "HilightSelected", header: "AIS_Manipulator.hxx".}
proc hilightOwnerWithColor*(this: var AIS_Manipulator;
                           thePM: Handle[PrsMgrPresentationManager3d];
                           theStyle: Handle[Prs3dDrawer];
                           theOwner: Handle[SelectMgrEntityOwner]) {.cdecl,
    importcpp: "HilightOwnerWithColor", header: "AIS_Manipulator.hxx".}
## using statement



