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

type
  AIS_ManipulatorObjectSequence* {.importcpp: "AIS_ManipulatorObjectSequence",
                                  header: "AIS_Manipulator.hxx", bycopy.} = object of NCollectionSequence[
      Handle[AIS_InteractiveObject]]


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
type
  HandleAIS_ManipulatorObjectSequence* = Handle[AIS_ManipulatorObjectSequence]
  HandleAIS_ManipulatorObjectSequenceAIS_Manipulator* = Handle[AIS_Manipulator]

## ! Interactive object class to manipulate local transformation of another interactive
## ! object or a group of objects via mouse.
## ! It manages three types of manipulations in 3D space:
## ! - translation through axis
## ! - scaling within axis
## ! - rotation around axis
## ! To enable one of this modes, selection mode (from 1 to 3) is to be activated.
## ! There are three orthogonal transformation axes defined by position property of
## ! the manipulator. Particular transformation mode can be disabled for each
## ! of the axes or all of them. Furthermore each of the axes can be hidden or
## ! made visible.
## ! The following steps demonstrate how to attach, configure and use manipulator
## ! for an interactive object:
## ! Step 1. Create manipulator object and adjust it appearance:
## ! @code
## ! Handle(AIS_Manipulator) aManipulator = new AIS_Manipulator();
## ! aManipulator->SetPart (0, AIS_Manipulator::Scaling, Standard_False);
## ! aManipulator->SetPart (1, AIS_Manipulator::Rotation, Standard_False);
## ! // Attach manipulator to already displayed object and manage manipulation modes
## ! aManipulator->AttachToObject (anAISObject);
## ! aManipulator->EnableMode (AIS_Manipulator::Translation);
## ! aManipulator->EnableMode (AIS_Manipulator::Rotation);
## ! aManipulator->EnableMode (AIS_Manipulator::Scaling);
## ! @endcode
## ! Note that you can enable only one manipulation mode but have all visual parts displayed.
## ! This code allows you to view manipulator and select its manipulation parts.
## ! Note that manipulator activates mode on part selection.
## ! If this mode is activated, no selection will be performed for manipulator.
## ! It can be activated with highlighting. To enable this:
## ! @code
## ! aManipulator->SetModeActivationOnDetection (Standard_True);
## ! @endcode
## ! Step 2. To perform transformation of object use next code in your event processing chain:
## ! @code
## ! // catch mouse button down event
## ! if (aManipulator->HasActiveMode())
## ! {
## !   aManipulator->StartTransform (anXPix, anYPix, aV3dView);
## ! }
## ! ...
## ! // or track mouse move event
## ! if (aManipulator->HasActiveMode())
## ! {
## !   aManipulator->Transform (anXPix, anYPix, aV3dView);
## !   aV3dView->Redraw();
## ! }
## ! ...
## ! // or catch mouse button up event (apply) or escape event (cancel)
## ! aManipulator->StopTransform(/*Standard_Boolean toApply*/);
## ! @endcode
## ! Step 3. To deactivate current manipulation mode use:
## ! @code aManipulator->DeactivateCurrentMode();
## ! @endcode
## ! Step 4. To detach manipulator from object use:
## ! @code
## ! aManipulator->Detach();
## ! @endcode
## ! The last method erases manipulator object.

type
  AIS_Manipulator* {.importcpp: "AIS_Manipulator", header: "AIS_Manipulator.hxx",
                    bycopy.} = object of AIS_InteractiveObject ## ! Constructs a manipulator object with default placement and all parts to be displayed.
                                                          ## ! Drag object in the viewer.
                                                          ## ! @param theCtx      [in] interactive context
                                                          ## ! @param theView     [in] active View
                                                          ## ! @param theOwner    [in] the owner of detected entity
                                                          ## ! @param theDragFrom [in] drag start point
                                                          ## ! @param theDragTo   [in] drag end point
                                                          ## ! @param theAction   [in] drag action
                                                          ## ! @return FALSE if object rejects dragging action (e.g. AIS_DragAction_Start)
                                                          ## ! @name Configuration of graphical transformations
                                                          ## ! Enable or disable zoom persistence mode for the manipulator. With
                                                          ## ! this mode turned on the presentation will keep fixed screen size.
                                                          ## ! @warning when turned on this option overrides transform persistence
                                                          ## ! properties and local transformation to achieve necessary visual effect.
                                                          ## ! @warning revise use of AdjustSize argument of of \sa AttachToObjects method
                                                          ## ! when enabling zoom persistence.
                                                          ## ! @name Setters for parameters
                                                          ## ! Behavior settings to be applied when performing transformation:
                                                          ## ! - FollowTranslation - whether the manipulator will be moved together with an object.
                                                          ## ! - FollowRotation - whether the manipulator will be rotated together with an object.
                                                          ## ! @name Presentation computation
                                                          ## ! Fills presentation.
                                                          ## ! @note Manipulator presentation does not use display mode and for all modes has the same presentation.
                                                          ## ! @name Auxiliary classes to fill presentation with proper primitives
                                                          ## ! @name Fields for interactive transformation. Fields only for internal needs. They do not have public interface.
    ## !< Tree axes of the manipulator.
    ## !< Visual part displaying the center sphere of the manipulator.
    ## !< Position of the manipulator object. it displays its location and position of its axes.
    ## !< Index of active axis.
    ## !< Name of active manipulation mode.
    ## !< Manual activation of modes (not on parts selection).
    ## !< Zoom persistence mode activation.
    ## !< Behavior settings applied on manipulator when transforming an object.
    ## !< Owning object transformation for start. It is used internally.
    ## !< Shows if transformation is processed (sequential calls of Transform()).
    ## ! Start position of manipulator.
    ## ! 3d point corresponding to start mouse pick.
    ## ! Previous value of angle during rotation.
    ## ! Aspect used to color current detected part and current selected part.
    ## ! Aspect used to color sector part when it's selected.


proc newAIS_Manipulator*(): AIS_Manipulator {.cdecl, constructor,
    importcpp: "AIS_Manipulator(@)", header: "AIS_Manipulator.hxx".}
proc newAIS_Manipulator*(thePosition: Ax2): AIS_Manipulator {.cdecl, constructor,
    importcpp: "AIS_Manipulator(@)", header: "AIS_Manipulator.hxx".}
proc setPart*(this: var AIS_Manipulator; theAxisIndex: cint;
             theMode: AIS_ManipulatorMode; theIsEnabled: bool) {.cdecl,
    importcpp: "SetPart", header: "AIS_Manipulator.hxx".}
proc setPart*(this: var AIS_Manipulator; theMode: AIS_ManipulatorMode;
             theIsEnabled: bool) {.cdecl, importcpp: "SetPart", header: "AIS_Manipulator.hxx".}
type
  AIS_ManipulatorOptionsForAttach* {.importcpp: "AIS_Manipulator::OptionsForAttach",
                                    header: "AIS_Manipulator.hxx", bycopy.} = object
    adjustPosition* {.importc: "AdjustPosition".}: bool
    adjustSize* {.importc: "AdjustSize".}: bool
    enableModes* {.importc: "EnableModes".}: bool


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
proc transform*(this: var AIS_Manipulator; aTrsf: Trsf) {.cdecl,
    importcpp: "Transform", header: "AIS_Manipulator.hxx".}
proc stopTransform*(this: var AIS_Manipulator; theToApply: bool = true) {.cdecl,
    importcpp: "StopTransform", header: "AIS_Manipulator.hxx".}
proc transform*(this: var AIS_Manipulator; theX: cint; theY: cint;
               theView: Handle[V3dView]): Trsf {.cdecl, importcpp: "Transform",
    header: "AIS_Manipulator.hxx".}
proc objectTransformation*(this: var AIS_Manipulator; theX: cint; theY: cint;
                          theView: Handle[V3dView]; theTrsf: var Trsf): bool {.cdecl,
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
proc startTransformation*(this: AIS_Manipulator): Trsf {.noSideEffect, cdecl,
    importcpp: "StartTransformation", header: "AIS_Manipulator.hxx".}
proc startTransformation*(this: AIS_Manipulator; theIndex: cint): Trsf {.noSideEffect,
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
proc position*(this: AIS_Manipulator): Ax2 {.noSideEffect, cdecl,
    importcpp: "Position", header: "AIS_Manipulator.hxx".}
proc setPosition*(this: var AIS_Manipulator; thePosition: Ax2) {.cdecl,
    importcpp: "SetPosition", header: "AIS_Manipulator.hxx".}
proc size*(this: AIS_Manipulator): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Size", header: "AIS_Manipulator.hxx".}
proc setSize*(this: var AIS_Manipulator; theSideLength: StandardShortReal) {.cdecl,
    importcpp: "SetSize", header: "AIS_Manipulator.hxx".}
proc setGap*(this: var AIS_Manipulator; theValue: StandardShortReal) {.cdecl,
    importcpp: "SetGap", header: "AIS_Manipulator.hxx".}
type
  AIS_ManipulatorBehaviorOnTransform* {.importcpp: "AIS_Manipulator::BehaviorOnTransform",
                                       header: "AIS_Manipulator.hxx", bycopy.} = object
    followTranslation* {.importc: "FollowTranslation".}: bool
    followRotation* {.importc: "FollowRotation".}: bool
    followDragging* {.importc: "FollowDragging".}: bool


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
