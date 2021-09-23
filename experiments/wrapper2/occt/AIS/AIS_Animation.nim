##  Created by: Anastasia BORISOVA
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

import
  AIS_AnimationTimer, ../NCollection/NCollection_Sequence,
  ../TCollection/TCollection_AsciiString

## ! Structure defining current animation progress.

type
  AIS_AnimationProgress* {.importcpp: "AIS_AnimationProgress",
                          header: "AIS_Animation.hxx", bycopy.} = object
    Pts* {.importc: "Pts".}: Standard_Real ## !< global presentation timestamp
    LocalPts* {.importc: "LocalPts".}: Standard_Real ## !< presentation within current animation
    LocalNormalized* {.importc: "LocalNormalized".}: Standard_Real ## !< normalized position within current animation within 0..1 range


proc constructAIS_AnimationProgress*(): AIS_AnimationProgress {.constructor,
    importcpp: "AIS_AnimationProgress(@)", header: "AIS_Animation.hxx".}
discard "forward decl of AIS_Animation"
type
  Handle_AIS_Animation* = handle[AIS_Animation]

## ! Class represents a basic animation class.
## ! AIS_Animation can be used as:
## !
## ! - Animation Implementor
## !   Sub-classes should override method AIS_Animation::update() to perform specific animation.
## !   AIS package provides limited number of such animation atoms - classes AIS_AnimationObject and AIS_AnimationCamera, which could be enough for defining a simple animation.
## !   In general case, application is expected defining own AIS_Animation sub-classes implementing application-specific animation logic
## !   (e.g. another interpolation or another kind of transformations - like color transition and others).
## !   The basic conception of AIS_Animation::update() is defining an exact scene state for the current presentation timestamp,
## !   providing a smooth and continuous animation well defined at any time step and in any direction.
## !   So that a time difference between two sequential drawn Viewer frames can vary from frame to frame without visual artifacts,
## !   increasing rendering framerate would not lead to animation being executed too fast
## !   and low framerate (on slow hardware) would not lead to animation played longer than defined duration.
## !   Hence, implementation should avoid usage of incremental step logic or should apply it very carefully.
## !
## ! - Animation Container
## !   AIS_Animation (no sub-classing) can be used to aggregate a sequence of Animation items (children).
## !   Each children should be defined with its own duration and start time (presentation timestamp).
## !   It is possible defining collection of nested AIS_Animation items, so that within each container level
## !   children define start playback time relative to its holder.
## !
## ! - Animation playback Controller
## !   It is suggested that application would define a single AIS_Animation instance (optional sub-classing) for controlling animation playback as whole.
## !   Such controller should be filled in by other AIS_Animation as children objects,
## !   and will be managed by application by calling StartTimer(), UpdateTimer() and IsStopped() methods.
## !
## ! Note, that AIS_Animation::StartTimer() defines a timer calculating an elapsed time, not a multimedia timer executing Viewer updates at specific intervals!
## ! Application should avoid using implicit and immediate Viewer updates to ensure that AIS_Animation::UpdateTimer() is called before each redrawing of a Viewer content.
## ! Redrawing logic should be also managed at application level for managing a smooth animation
## ! (by defining a multimedia timer provided by used GUI framework executing updates at desired framerate, or as continuous redraws in loop).

type
  AIS_Animation* {.importcpp: "AIS_Animation", header: "AIS_Animation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## empty
                                                                                                          ## animation.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @return
                                                                                                          ## start
                                                                                                          ## time
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## animation
                                                                                                          ## in
                                                                                                          ## the
                                                                                                          ## timeline
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Start
                                                                                                          ## animation
                                                                                                          ## with
                                                                                                          ## internally
                                                                                                          ## defined
                                                                                                          ## timer
                                                                                                          ## instance.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Calls
                                                                                                          ## ::Start()
                                                                                                          ## internally.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Note,
                                                                                                          ## that
                                                                                                          ## this
                                                                                                          ## method
                                                                                                          ## initializes
                                                                                                          ## a
                                                                                                          ## timer
                                                                                                          ## calculating
                                                                                                          ## an
                                                                                                          ## elapsed
                                                                                                          ## time
                                                                                                          ## (presentation
                                                                                                          ## timestamps
                                                                                                          ## within
                                                                                                          ## AIS_Animation::UpdateTimer()),
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## not
                                                                                                          ## a
                                                                                                          ## multimedia
                                                                                                          ## timer
                                                                                                          ## executing
                                                                                                          ## Viewer
                                                                                                          ## updates
                                                                                                          ## at
                                                                                                          ## specific
                                                                                                          ## intervals!
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Viewer
                                                                                                          ## redrawing
                                                                                                          ## should
                                                                                                          ## be
                                                                                                          ## managed
                                                                                                          ## at
                                                                                                          ## application
                                                                                                          ## level,
                                                                                                          ## so
                                                                                                          ## that
                                                                                                          ## AIS_Animation::UpdateTimer()
                                                                                                          ## is
                                                                                                          ## called
                                                                                                          ## once
                                                                                                          ## right
                                                                                                          ## before
                                                                                                          ## each
                                                                                                          ## redrawing
                                                                                                          ## of
                                                                                                          ## a
                                                                                                          ## Viewer
                                                                                                          ## content.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theStartPts
                                                                                                          ## starting
                                                                                                          ## timer
                                                                                                          ## position
                                                                                                          ## (presentation
                                                                                                          ## timestamp)
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## thePlaySpeed
                                                                                                          ## playback
                                                                                                          ## speed
                                                                                                          ## (1.0
                                                                                                          ## means
                                                                                                          ## normal
                                                                                                          ## speed)
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theToUpdate
                                                                                                          ## flag
                                                                                                          ## to
                                                                                                          ## update
                                                                                                          ## defined
                                                                                                          ## animations
                                                                                                          ## to
                                                                                                          ## specified
                                                                                                          ## start
                                                                                                          ## position
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theToStopTimer
                                                                                                          ## flag
                                                                                                          ## to
                                                                                                          ## pause
                                                                                                          ## timer
                                                                                                          ## at
                                                                                                          ## the
                                                                                                          ## starting
                                                                                                          ## position
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Start
                                                                                                          ## animation.
                                                                                                          ## This
                                                                                                          ## method
                                                                                                          ## changes
                                                                                                          ## status
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## animation
                                                                                                          ## to
                                                                                                          ## Started.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## This
                                                                                                          ## status
                                                                                                          ## defines
                                                                                                          ## whether
                                                                                                          ## animation
                                                                                                          ## is
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## performed
                                                                                                          ## in
                                                                                                          ## the
                                                                                                          ## timeline
                                                                                                          ## or
                                                                                                          ## not.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theToUpdate
                                                                                                          ## call
                                                                                                          ## Update()
                                                                                                          ## method
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Process
                                                                                                          ## one
                                                                                                          ## step
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## animation
                                                                                                          ## according
                                                                                                          ## to
                                                                                                          ## the
                                                                                                          ## input
                                                                                                          ## time
                                                                                                          ## progress,
                                                                                                          ## including
                                                                                                          ## all
                                                                                                          ## children.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Calls
                                                                                                          ## also
                                                                                                          ## ::update()
                                                                                                          ## to
                                                                                                          ## update
                                                                                                          ## own
                                                                                                          ## animation.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Defines
                                                                                                          ## animation
                                                                                                          ## state.
    ## !< animation name
    ## !< sequence of child animations
    ## !< animation state - started, stopped of paused
    ## !< time of start in the timeline
    ## !< duration of animation excluding children
    ## !< duration of animation including children

  AIS_Animationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "AIS_Animation::get_type_name(@)",
                              header: "AIS_Animation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Animation::get_type_descriptor(@)",
    header: "AIS_Animation.hxx".}
proc DynamicType*(this: AIS_Animation): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Animation.hxx".}
proc constructAIS_Animation*(theAnimationName: TCollection_AsciiString): AIS_Animation {.
    constructor, importcpp: "AIS_Animation(@)", header: "AIS_Animation.hxx".}
proc destroyAIS_Animation*(this: var AIS_Animation) {.
    importcpp: "#.~AIS_Animation()", header: "AIS_Animation.hxx".}
proc Name*(this: AIS_Animation): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "AIS_Animation.hxx".}
proc StartPts*(this: AIS_Animation): Standard_Real {.noSideEffect,
    importcpp: "StartPts", header: "AIS_Animation.hxx".}
proc SetStartPts*(this: var AIS_Animation; thePtsStart: Standard_Real) {.
    importcpp: "SetStartPts", header: "AIS_Animation.hxx".}
proc Duration*(this: AIS_Animation): Standard_Real {.noSideEffect,
    importcpp: "Duration", header: "AIS_Animation.hxx".}
proc UpdateTotalDuration*(this: var AIS_Animation) {.
    importcpp: "UpdateTotalDuration", header: "AIS_Animation.hxx".}
proc HasOwnDuration*(this: AIS_Animation): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnDuration", header: "AIS_Animation.hxx".}
proc OwnDuration*(this: AIS_Animation): Standard_Real {.noSideEffect,
    importcpp: "OwnDuration", header: "AIS_Animation.hxx".}
proc SetOwnDuration*(this: var AIS_Animation; theDuration: Standard_Real) {.
    importcpp: "SetOwnDuration", header: "AIS_Animation.hxx".}
proc Add*(this: var AIS_Animation; theAnimation: handle[AIS_Animation]) {.
    importcpp: "Add", header: "AIS_Animation.hxx".}
proc Clear*(this: var AIS_Animation) {.importcpp: "Clear", header: "AIS_Animation.hxx".}
proc Find*(this: AIS_Animation; theAnimationName: TCollection_AsciiString): handle[
    AIS_Animation] {.noSideEffect, importcpp: "Find", header: "AIS_Animation.hxx".}
proc Remove*(this: var AIS_Animation; theAnimation: handle[AIS_Animation]): Standard_Boolean {.
    importcpp: "Remove", header: "AIS_Animation.hxx".}
proc Replace*(this: var AIS_Animation; theAnimationOld: handle[AIS_Animation];
             theAnimationNew: handle[AIS_Animation]): Standard_Boolean {.
    importcpp: "Replace", header: "AIS_Animation.hxx".}
proc CopyFrom*(this: var AIS_Animation; theOther: handle[AIS_Animation]) {.
    importcpp: "CopyFrom", header: "AIS_Animation.hxx".}
proc Children*(this: AIS_Animation): NCollection_Sequence[handle[AIS_Animation]] {.
    noSideEffect, importcpp: "Children", header: "AIS_Animation.hxx".}
proc StartTimer*(this: var AIS_Animation; theStartPts: Standard_Real;
                thePlaySpeed: Standard_Real; theToUpdate: Standard_Boolean;
                theToStopTimer: Standard_Boolean = Standard_False) {.
    importcpp: "StartTimer", header: "AIS_Animation.hxx".}
proc UpdateTimer*(this: var AIS_Animation): Standard_Real {.importcpp: "UpdateTimer",
    header: "AIS_Animation.hxx".}
proc ElapsedTime*(this: AIS_Animation): Standard_Real {.noSideEffect,
    importcpp: "ElapsedTime", header: "AIS_Animation.hxx".}
proc Start*(this: var AIS_Animation; theToUpdate: Standard_Boolean) {.
    importcpp: "Start", header: "AIS_Animation.hxx".}
proc Pause*(this: var AIS_Animation) {.importcpp: "Pause", header: "AIS_Animation.hxx".}
proc Stop*(this: var AIS_Animation) {.importcpp: "Stop", header: "AIS_Animation.hxx".}
proc IsStopped*(this: var AIS_Animation): bool {.importcpp: "IsStopped",
    header: "AIS_Animation.hxx".}
proc Update*(this: var AIS_Animation; thePts: Standard_Real): Standard_Boolean {.
    importcpp: "Update", header: "AIS_Animation.hxx".}