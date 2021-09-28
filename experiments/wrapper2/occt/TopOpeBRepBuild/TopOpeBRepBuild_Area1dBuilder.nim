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

discard "forward decl of TopOpeBRepBuild_PaveSet"
discard "forward decl of TopOpeBRepBuild_PaveClassifier"
discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuildArea1dBuilder* {.importcpp: "TopOpeBRepBuild_Area1dBuilder",
                                 header: "TopOpeBRepBuild_Area1dBuilder.hxx",
                                 bycopy.} = object of TopOpeBRepBuildAreaBuilder


proc constructTopOpeBRepBuildArea1dBuilder*(): TopOpeBRepBuildArea1dBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_Area1dBuilder(@)",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc constructTopOpeBRepBuildArea1dBuilder*(ls: var TopOpeBRepBuildPaveSet;
    lc: var TopOpeBRepBuildPaveClassifier; forceClass: bool = false): TopOpeBRepBuildArea1dBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_Area1dBuilder(@)",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc initAreaBuilder*(this: var TopOpeBRepBuildArea1dBuilder;
                     ls: var TopOpeBRepBuildLoopSet;
                     lc: var TopOpeBRepBuildLoopClassifier;
                     forceClass: bool = false) {.importcpp: "InitAreaBuilder",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc aDD_LoopTO_LISTOFLoop*(this: TopOpeBRepBuildArea1dBuilder;
                           L: Handle[TopOpeBRepBuildLoop];
                           lol: var TopOpeBRepBuildListOfLoop;
                           s: StandardAddress = nil) {.noSideEffect,
    importcpp: "ADD_Loop_TO_LISTOFLoop",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc rEM_LoopFROM_LISTOFLoop*(this: TopOpeBRepBuildArea1dBuilder; itlol: var TopOpeBRepBuildListIteratorOfListOfLoop;
                             lol: var TopOpeBRepBuildListOfLoop;
                             s: StandardAddress = nil) {.noSideEffect,
    importcpp: "REM_Loop_FROM_LISTOFLoop",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc aDD_LISTOFLoopTO_LISTOFLoop*(this: TopOpeBRepBuildArea1dBuilder;
                                 lol1: var TopOpeBRepBuildListOfLoop;
                                 lol2: var TopOpeBRepBuildListOfLoop;
                                 s: StandardAddress = nil;
                                 s1: StandardAddress = nil;
                                 s2: StandardAddress = nil) {.noSideEffect,
    importcpp: "ADD_LISTOFLoop_TO_LISTOFLoop",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc dumpList*(L: TopOpeBRepBuildListOfLoop) {.
    importcpp: "TopOpeBRepBuild_Area1dBuilder::DumpList(@)",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}

























