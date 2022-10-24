import ais_types

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

## ! Structure defining current animation progress.



proc newAIS_AnimationProgress*(): AIS_AnimationProgress {.cdecl, constructor,
    importcpp: "AIS_AnimationProgress(@)", header: "AIS_Animation.hxx".}




proc newAIS_Animation*(theAnimationName: TCollectionAsciiString): AIS_Animation {.
    cdecl, constructor, importcpp: "AIS_Animation(@)", header: "AIS_Animation.hxx".}
proc destroyAIS_Animation*(this: var AIS_Animation) {.cdecl,
    importcpp: "#.~AIS_Animation()", header: "AIS_Animation.hxx".}
proc name*(this: AIS_Animation): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Name", header: "AIS_Animation.hxx".}
proc startPts*(this: AIS_Animation): cfloat {.noSideEffect, cdecl,
    importcpp: "StartPts", header: "AIS_Animation.hxx".}
proc setStartPts*(this: var AIS_Animation; thePtsStart: cfloat) {.cdecl,
    importcpp: "SetStartPts", header: "AIS_Animation.hxx".}
proc duration*(this: AIS_Animation): cfloat {.noSideEffect, cdecl,
    importcpp: "Duration", header: "AIS_Animation.hxx".}
proc updateTotalDuration*(this: var AIS_Animation) {.cdecl,
    importcpp: "UpdateTotalDuration", header: "AIS_Animation.hxx".}
proc hasOwnDuration*(this: AIS_Animation): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDuration", header: "AIS_Animation.hxx".}
proc ownDuration*(this: AIS_Animation): cfloat {.noSideEffect, cdecl,
    importcpp: "OwnDuration", header: "AIS_Animation.hxx".}
proc setOwnDuration*(this: var AIS_Animation; theDuration: cfloat) {.cdecl,
    importcpp: "SetOwnDuration", header: "AIS_Animation.hxx".}
proc add*(this: var AIS_Animation; theAnimation: Handle[AIS_Animation]) {.cdecl,
    importcpp: "Add", header: "AIS_Animation.hxx".}
proc clear*(this: var AIS_Animation) {.cdecl, importcpp: "Clear", header: "AIS_Animation.hxx".}
proc find*(this: AIS_Animation; theAnimationName: TCollectionAsciiString): Handle[
    AIS_Animation] {.noSideEffect, cdecl, importcpp: "Find", header: "AIS_Animation.hxx".}
proc remove*(this: var AIS_Animation; theAnimation: Handle[AIS_Animation]): bool {.
    cdecl, importcpp: "Remove", header: "AIS_Animation.hxx".}
proc replace*(this: var AIS_Animation; theAnimationOld: Handle[AIS_Animation];
             theAnimationNew: Handle[AIS_Animation]): bool {.cdecl,
    importcpp: "Replace", header: "AIS_Animation.hxx".}
proc copyFrom*(this: var AIS_Animation; theOther: Handle[AIS_Animation]) {.cdecl,
    importcpp: "CopyFrom", header: "AIS_Animation.hxx".}
proc children*(this: AIS_Animation): NCollectionSequence[Handle[AIS_Animation]] {.
    noSideEffect, cdecl, importcpp: "Children", header: "AIS_Animation.hxx".}
proc startTimer*(this: var AIS_Animation; theStartPts: cfloat; thePlaySpeed: cfloat;
                theToUpdate: bool; theToStopTimer: bool = false) {.cdecl,
    importcpp: "StartTimer", header: "AIS_Animation.hxx".}
proc updateTimer*(this: var AIS_Animation): cfloat {.cdecl, importcpp: "UpdateTimer",
    header: "AIS_Animation.hxx".}
proc elapsedTime*(this: AIS_Animation): cfloat {.noSideEffect, cdecl,
    importcpp: "ElapsedTime", header: "AIS_Animation.hxx".}
proc start*(this: var AIS_Animation; theToUpdate: bool) {.cdecl, importcpp: "Start",
    header: "AIS_Animation.hxx".}
proc pause*(this: var AIS_Animation) {.cdecl, importcpp: "Pause", header: "AIS_Animation.hxx".}
proc stop*(this: var AIS_Animation) {.cdecl, importcpp: "Stop", header: "AIS_Animation.hxx".}
proc isStopped*(this: var AIS_Animation): bool {.cdecl, importcpp: "IsStopped",
    header: "AIS_Animation.hxx".}
proc update*(this: var AIS_Animation; thePts: cfloat): bool {.cdecl,
    importcpp: "Update", header: "AIS_Animation.hxx".}
