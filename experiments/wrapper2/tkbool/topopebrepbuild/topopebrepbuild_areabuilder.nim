##  Created on: 1995-12-21
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuildAreaBuilder* {.importcpp: "TopOpeBRepBuild_AreaBuilder",
                               header: "TopOpeBRepBuild_AreaBuilder.hxx", bycopy.} = object


proc newTopOpeBRepBuildAreaBuilder*(): TopOpeBRepBuildAreaBuilder {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_AreaBuilder(@)", dynlib: tkfillet.}
proc newTopOpeBRepBuildAreaBuilder*(ls: var TopOpeBRepBuildLoopSet;
                                   lc: var TopOpeBRepBuildLoopClassifier;
                                   forceClass: bool = false): TopOpeBRepBuildAreaBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_AreaBuilder(@)",
    dynlib: tkfillet.}
proc destroyTopOpeBRepBuildAreaBuilder*(this: var TopOpeBRepBuildAreaBuilder) {.
    cdecl, importcpp: "#.~TopOpeBRepBuild_AreaBuilder()", dynlib: tkfillet.}
proc initAreaBuilder*(this: var TopOpeBRepBuildAreaBuilder;
                     ls: var TopOpeBRepBuildLoopSet;
                     lc: var TopOpeBRepBuildLoopClassifier;
                     forceClass: bool = false) {.cdecl, importcpp: "InitAreaBuilder",
    dynlib: tkfillet.}
proc initArea*(this: var TopOpeBRepBuildAreaBuilder): cint {.cdecl,
    importcpp: "InitArea", dynlib: tkfillet.}
proc moreArea*(this: TopOpeBRepBuildAreaBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreArea", dynlib: tkfillet.}
proc nextArea*(this: var TopOpeBRepBuildAreaBuilder) {.cdecl, importcpp: "NextArea",
    dynlib: tkfillet.}
proc initLoop*(this: var TopOpeBRepBuildAreaBuilder): cint {.cdecl,
    importcpp: "InitLoop", dynlib: tkfillet.}
proc moreLoop*(this: TopOpeBRepBuildAreaBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreLoop", dynlib: tkfillet.}
proc nextLoop*(this: var TopOpeBRepBuildAreaBuilder) {.cdecl, importcpp: "NextLoop",
    dynlib: tkfillet.}
proc loop*(this: TopOpeBRepBuildAreaBuilder): Handle[TopOpeBRepBuildLoop] {.
    noSideEffect, cdecl, importcpp: "Loop", dynlib: tkfillet.}
proc aDD_LoopTO_LISTOFLoop*(this: TopOpeBRepBuildAreaBuilder;
                           L: Handle[TopOpeBRepBuildLoop];
                           lol: var TopOpeBRepBuildListOfLoop; s: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "ADD_Loop_TO_LISTOFLoop", dynlib: tkfillet.}
proc rEM_LoopFROM_LISTOFLoop*(this: TopOpeBRepBuildAreaBuilder; itlol: var TopOpeBRepBuildListIteratorOfListOfLoop;
                             lol: var TopOpeBRepBuildListOfLoop; s: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "REM_Loop_FROM_LISTOFLoop", dynlib: tkfillet.}
proc aDD_LISTOFLoopTO_LISTOFLoop*(this: TopOpeBRepBuildAreaBuilder;
                                 lol1: var TopOpeBRepBuildListOfLoop;
                                 lol2: var TopOpeBRepBuildListOfLoop;
                                 s: pointer = nil; s1: pointer = nil; s2: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "ADD_LISTOFLoop_TO_LISTOFLoop", dynlib: tkfillet.}