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

## !!!Ignored construct:  # _AIS_Manipulator_HeaderFile [NewLine] # _AIS_Manipulator_HeaderFile [NewLine] # AIS_InteractiveObject.hxx [NewLine] # AIS_ManipulatorMode.hxx [NewLine] # ../gp/gp.hxx [NewLine] # ../gp/gp_Ax1.hxx [NewLine] # ../gp/gp_Dir.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Graphic3d/Graphic3d_ArrayOfQuadrangles.hxx [NewLine] # ../Graphic3d/Graphic3d_ArrayOfTriangles.hxx [NewLine] # ../Graphic3d/Graphic3d_Group.hxx [NewLine] # ../NCollection/NCollection_HSequence.hxx [NewLine] # ../Poly/Poly_Triangulation.hxx [NewLine] # ../V3d/V3d_View.hxx [NewLine] # ../Standard/Standard_Version.hxx [NewLine] # ../Standard/Standard_DefineHandle.hxx [NewLine] NCOLLECTION_HSEQUENCE ( AIS_ManipulatorObjectSequence , opencascade :: handle < AIS_InteractiveObject > [end of template] ) class AIS_Manipulator ;
## Error: expected ';'!!!

type
  Handle_AIS_ManipulatorAIS_Manipulator* = handle[AIS_Manipulator]

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


proc constructAIS_Manipulator*(): AIS_Manipulator {.constructor,
    importcpp: "AIS_Manipulator(@)", header: "AIS_Manipulator.hxx".}
proc constructAIS_Manipulator*(thePosition: gp_Ax2): AIS_Manipulator {.constructor,
    importcpp: "AIS_Manipulator(@)", header: "AIS_Manipulator.hxx".}
proc SetPart*(this: var AIS_Manipulator; theAxisIndex: Standard_Integer;
             theMode: AIS_ManipulatorMode; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetPart", header: "AIS_Manipulator.hxx".}
proc SetPart*(this: var AIS_Manipulator; theMode: AIS_ManipulatorMode;
             theIsEnabled: Standard_Boolean) {.importcpp: "SetPart",
    header: "AIS_Manipulator.hxx".}
type
  AIS_ManipulatorOptionsForAttach* {.importcpp: "AIS_Manipulator::OptionsForAttach",
                                    header: "AIS_Manipulator.hxx", bycopy.} = object
    AdjustPosition* {.importc: "AdjustPosition".}: Standard_Boolean
    AdjustSize* {.importc: "AdjustSize".}: Standard_Boolean
    EnableModes* {.importc: "EnableModes".}: Standard_Boolean


proc constructAIS_ManipulatorOptionsForAttach*(): AIS_ManipulatorOptionsForAttach {.
    constructor, importcpp: "AIS_Manipulator::OptionsForAttach(@)",
    header: "AIS_Manipulator.hxx".}
proc SetAdjustPosition*(this: var AIS_ManipulatorOptionsForAttach;
                       theApply: Standard_Boolean): var AIS_ManipulatorOptionsForAttach {.
    importcpp: "SetAdjustPosition", header: "AIS_Manipulator.hxx".}
proc SetAdjustSize*(this: var AIS_ManipulatorOptionsForAttach;
                   theApply: Standard_Boolean): var AIS_ManipulatorOptionsForAttach {.
    importcpp: "SetAdjustSize", header: "AIS_Manipulator.hxx".}
proc SetEnableModes*(this: var AIS_ManipulatorOptionsForAttach;
                    theApply: Standard_Boolean): var AIS_ManipulatorOptionsForAttach {.
    importcpp: "SetEnableModes", header: "AIS_Manipulator.hxx".}
proc Attach*(this: var AIS_Manipulator; theObject: handle[AIS_InteractiveObject];
    theOptions: AIS_ManipulatorOptionsForAttach = constructOptionsForAttach()) {.
    importcpp: "Attach", header: "AIS_Manipulator.hxx".}
proc Attach*(this: var AIS_Manipulator;
            theObject: handle[AIS_ManipulatorObjectSequence]; theOptions: AIS_ManipulatorOptionsForAttach = constructOptionsForAttach()) {.
    importcpp: "Attach", header: "AIS_Manipulator.hxx".}
proc EnableMode*(this: var AIS_Manipulator; theMode: AIS_ManipulatorMode) {.
    importcpp: "EnableMode", header: "AIS_Manipulator.hxx".}
proc SetModeActivationOnDetection*(this: var AIS_Manipulator;
                                  theToEnable: Standard_Boolean) {.
    importcpp: "SetModeActivationOnDetection", header: "AIS_Manipulator.hxx".}
proc IsModeActivationOnDetection*(this: AIS_Manipulator): Standard_Boolean {.
    noSideEffect, importcpp: "IsModeActivationOnDetection",
    header: "AIS_Manipulator.hxx".}
proc ProcessDragging*(this: var AIS_Manipulator;
                     theCtx: handle[AIS_InteractiveContext];
                     theView: handle[V3d_View];
                     theOwner: handle[SelectMgr_EntityOwner];
                     theDragFrom: Graphic3d_Vec2i; theDragTo: Graphic3d_Vec2i;
                     theAction: AIS_DragAction): Standard_Boolean {.
    importcpp: "ProcessDragging", header: "AIS_Manipulator.hxx".}
proc StartTransform*(this: var AIS_Manipulator; theX: Standard_Integer;
                    theY: Standard_Integer; theView: handle[V3d_View]) {.
    importcpp: "StartTransform", header: "AIS_Manipulator.hxx".}
proc Transform*(this: var AIS_Manipulator; aTrsf: gp_Trsf) {.importcpp: "Transform",
    header: "AIS_Manipulator.hxx".}
proc StopTransform*(this: var AIS_Manipulator;
                   theToApply: Standard_Boolean = Standard_True) {.
    importcpp: "StopTransform", header: "AIS_Manipulator.hxx".}
proc Transform*(this: var AIS_Manipulator; theX: Standard_Integer;
               theY: Standard_Integer; theView: handle[V3d_View]): gp_Trsf {.
    importcpp: "Transform", header: "AIS_Manipulator.hxx".}
proc ObjectTransformation*(this: var AIS_Manipulator; theX: Standard_Integer;
                          theY: Standard_Integer; theView: handle[V3d_View];
                          theTrsf: var gp_Trsf): Standard_Boolean {.
    importcpp: "ObjectTransformation", header: "AIS_Manipulator.hxx".}
proc DeactivateCurrentMode*(this: var AIS_Manipulator) {.
    importcpp: "DeactivateCurrentMode", header: "AIS_Manipulator.hxx".}
proc Detach*(this: var AIS_Manipulator) {.importcpp: "Detach",
                                      header: "AIS_Manipulator.hxx".}
proc Objects*(this: AIS_Manipulator): handle[AIS_ManipulatorObjectSequence] {.
    noSideEffect, importcpp: "Objects", header: "AIS_Manipulator.hxx".}
proc Object*(this: AIS_Manipulator): handle[AIS_InteractiveObject] {.noSideEffect,
    importcpp: "Object", header: "AIS_Manipulator.hxx".}
proc Object*(this: AIS_Manipulator; theIndex: Standard_Integer): handle[
    AIS_InteractiveObject] {.noSideEffect, importcpp: "Object",
                            header: "AIS_Manipulator.hxx".}
proc IsAttached*(this: AIS_Manipulator): Standard_Boolean {.noSideEffect,
    importcpp: "IsAttached", header: "AIS_Manipulator.hxx".}
proc HasActiveMode*(this: AIS_Manipulator): Standard_Boolean {.noSideEffect,
    importcpp: "HasActiveMode", header: "AIS_Manipulator.hxx".}
proc HasActiveTransformation*(this: var AIS_Manipulator): Standard_Boolean {.
    importcpp: "HasActiveTransformation", header: "AIS_Manipulator.hxx".}
proc StartTransformation*(this: AIS_Manipulator): gp_Trsf {.noSideEffect,
    importcpp: "StartTransformation", header: "AIS_Manipulator.hxx".}
proc StartTransformation*(this: AIS_Manipulator; theIndex: Standard_Integer): gp_Trsf {.
    noSideEffect, importcpp: "StartTransformation", header: "AIS_Manipulator.hxx".}
proc SetZoomPersistence*(this: var AIS_Manipulator; theToEnable: Standard_Boolean) {.
    importcpp: "SetZoomPersistence", header: "AIS_Manipulator.hxx".}
proc ZoomPersistence*(this: AIS_Manipulator): Standard_Boolean {.noSideEffect,
    importcpp: "ZoomPersistence", header: "AIS_Manipulator.hxx".}
proc SetTransformPersistence*(this: var AIS_Manipulator;
                             theTrsfPers: handle[Graphic3d_TransformPers]) {.
    importcpp: "SetTransformPersistence", header: "AIS_Manipulator.hxx".}
proc ActiveMode*(this: AIS_Manipulator): AIS_ManipulatorMode {.noSideEffect,
    importcpp: "ActiveMode", header: "AIS_Manipulator.hxx".}
proc ActiveAxisIndex*(this: AIS_Manipulator): Standard_Integer {.noSideEffect,
    importcpp: "ActiveAxisIndex", header: "AIS_Manipulator.hxx".}
proc Position*(this: AIS_Manipulator): gp_Ax2 {.noSideEffect, importcpp: "Position",
    header: "AIS_Manipulator.hxx".}
proc SetPosition*(this: var AIS_Manipulator; thePosition: gp_Ax2) {.
    importcpp: "SetPosition", header: "AIS_Manipulator.hxx".}
proc Size*(this: AIS_Manipulator): Standard_ShortReal {.noSideEffect,
    importcpp: "Size", header: "AIS_Manipulator.hxx".}
proc SetSize*(this: var AIS_Manipulator; theSideLength: Standard_ShortReal) {.
    importcpp: "SetSize", header: "AIS_Manipulator.hxx".}
proc SetGap*(this: var AIS_Manipulator; theValue: Standard_ShortReal) {.
    importcpp: "SetGap", header: "AIS_Manipulator.hxx".}
type
  AIS_ManipulatorBehaviorOnTransform* {.importcpp: "AIS_Manipulator::BehaviorOnTransform",
                                       header: "AIS_Manipulator.hxx", bycopy.} = object
    FollowTranslation* {.importc: "FollowTranslation".}: Standard_Boolean
    FollowRotation* {.importc: "FollowRotation".}: Standard_Boolean
    FollowDragging* {.importc: "FollowDragging".}: Standard_Boolean


proc constructAIS_ManipulatorBehaviorOnTransform*(): AIS_ManipulatorBehaviorOnTransform {.
    constructor, importcpp: "AIS_Manipulator::BehaviorOnTransform(@)",
    header: "AIS_Manipulator.hxx".}
proc SetFollowTranslation*(this: var AIS_ManipulatorBehaviorOnTransform;
                          theApply: Standard_Boolean): var AIS_ManipulatorBehaviorOnTransform {.
    importcpp: "SetFollowTranslation", header: "AIS_Manipulator.hxx".}
proc SetFollowRotation*(this: var AIS_ManipulatorBehaviorOnTransform;
                       theApply: Standard_Boolean): var AIS_ManipulatorBehaviorOnTransform {.
    importcpp: "SetFollowRotation", header: "AIS_Manipulator.hxx".}
proc SetFollowDragging*(this: var AIS_ManipulatorBehaviorOnTransform;
                       theApply: Standard_Boolean): var AIS_ManipulatorBehaviorOnTransform {.
    importcpp: "SetFollowDragging", header: "AIS_Manipulator.hxx".}
proc SetTransformBehavior*(this: var AIS_Manipulator;
                          theSettings: AIS_ManipulatorBehaviorOnTransform) {.
    importcpp: "SetTransformBehavior", header: "AIS_Manipulator.hxx".}
proc ChangeTransformBehavior*(this: var AIS_Manipulator): var AIS_ManipulatorBehaviorOnTransform {.
    importcpp: "ChangeTransformBehavior", header: "AIS_Manipulator.hxx".}
proc TransformBehavior*(this: AIS_Manipulator): AIS_ManipulatorBehaviorOnTransform {.
    noSideEffect, importcpp: "TransformBehavior", header: "AIS_Manipulator.hxx".}
proc Compute*(this: var AIS_Manipulator;
             thePrsMgr: handle[PrsMgr_PresentationManager3d];
             thePrs: handle[Prs3d_Presentation]; theMode: Standard_Integer = 0) {.
    importcpp: "Compute", header: "AIS_Manipulator.hxx".}
proc ComputeSelection*(this: var AIS_Manipulator;
                      theSelection: handle[SelectMgr_Selection];
                      theMode: Standard_Integer) {.importcpp: "ComputeSelection",
    header: "AIS_Manipulator.hxx".}
proc IsAutoHilight*(this: AIS_Manipulator): Standard_Boolean {.noSideEffect,
    importcpp: "IsAutoHilight", header: "AIS_Manipulator.hxx".}
proc ClearSelected*(this: var AIS_Manipulator) {.importcpp: "ClearSelected",
    header: "AIS_Manipulator.hxx".}
proc HilightSelected*(this: var AIS_Manipulator;
                     thePM: handle[PrsMgr_PresentationManager3d];
                     theSeq: SelectMgr_SequenceOfOwner) {.
    importcpp: "HilightSelected", header: "AIS_Manipulator.hxx".}
proc HilightOwnerWithColor*(this: var AIS_Manipulator;
                           thePM: handle[PrsMgr_PresentationManager3d];
                           theStyle: handle[Prs3d_Drawer];
                           theOwner: handle[SelectMgr_EntityOwner]) {.
    importcpp: "HilightOwnerWithColor", header: "AIS_Manipulator.hxx".}
## using statement

type
  AIS_Manipulatorbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_Manipulator::get_type_name(@)",
                              header: "AIS_Manipulator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Manipulator::get_type_descriptor(@)",
    header: "AIS_Manipulator.hxx".}
proc DynamicType*(this: AIS_Manipulator): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Manipulator.hxx".}