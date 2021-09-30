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


proc `new`*(this: var TopOpeBRepBuildAreaBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_AreaBuilder::operator new",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildAreaBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_AreaBuilder::operator delete",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildAreaBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_AreaBuilder::operator new[]",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildAreaBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_AreaBuilder::operator delete[]",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc `new`*(this: var TopOpeBRepBuildAreaBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_AreaBuilder::operator new",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildAreaBuilder; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_AreaBuilder::operator delete",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc constructTopOpeBRepBuildAreaBuilder*(): TopOpeBRepBuildAreaBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_AreaBuilder(@)",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc constructTopOpeBRepBuildAreaBuilder*(ls: var TopOpeBRepBuildLoopSet;
    lc: var TopOpeBRepBuildLoopClassifier; forceClass: StandardBoolean = false): TopOpeBRepBuildAreaBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_AreaBuilder(@)",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc destroyTopOpeBRepBuildAreaBuilder*(this: var TopOpeBRepBuildAreaBuilder) {.
    importcpp: "#.~TopOpeBRepBuild_AreaBuilder()",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc initAreaBuilder*(this: var TopOpeBRepBuildAreaBuilder;
                     ls: var TopOpeBRepBuildLoopSet;
                     lc: var TopOpeBRepBuildLoopClassifier;
                     forceClass: StandardBoolean = false) {.
    importcpp: "InitAreaBuilder", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc initArea*(this: var TopOpeBRepBuildAreaBuilder): int {.importcpp: "InitArea",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc moreArea*(this: TopOpeBRepBuildAreaBuilder): StandardBoolean {.noSideEffect,
    importcpp: "MoreArea", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc nextArea*(this: var TopOpeBRepBuildAreaBuilder) {.importcpp: "NextArea",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc initLoop*(this: var TopOpeBRepBuildAreaBuilder): int {.importcpp: "InitLoop",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc moreLoop*(this: TopOpeBRepBuildAreaBuilder): StandardBoolean {.noSideEffect,
    importcpp: "MoreLoop", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc nextLoop*(this: var TopOpeBRepBuildAreaBuilder) {.importcpp: "NextLoop",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc loop*(this: TopOpeBRepBuildAreaBuilder): Handle[TopOpeBRepBuildLoop] {.
    noSideEffect, importcpp: "Loop", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc aDD_LoopTO_LISTOFLoop*(this: TopOpeBRepBuildAreaBuilder;
                           L: Handle[TopOpeBRepBuildLoop];
                           lol: var TopOpeBRepBuildListOfLoop;
                           s: StandardAddress = nil) {.noSideEffect,
    importcpp: "ADD_Loop_TO_LISTOFLoop", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc rEM_LoopFROM_LISTOFLoop*(this: TopOpeBRepBuildAreaBuilder; itlol: var TopOpeBRepBuildListIteratorOfListOfLoop;
                             lol: var TopOpeBRepBuildListOfLoop;
                             s: StandardAddress = nil) {.noSideEffect,
    importcpp: "REM_Loop_FROM_LISTOFLoop",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc aDD_LISTOFLoopTO_LISTOFLoop*(this: TopOpeBRepBuildAreaBuilder;
                                 lol1: var TopOpeBRepBuildListOfLoop;
                                 lol2: var TopOpeBRepBuildListOfLoop;
                                 s: StandardAddress = nil;
                                 s1: StandardAddress = nil;
                                 s2: StandardAddress = nil) {.noSideEffect,
    importcpp: "ADD_LISTOFLoop_TO_LISTOFLoop",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}