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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopOpeBRepBuild_ListOfListOfLoop,
  TopOpeBRepBuild_ListIteratorOfListOfListOfLoop,
  TopOpeBRepBuild_ListIteratorOfListOfLoop, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_State, TopOpeBRepBuild_ListOfLoop, TopOpeBRepBuild_LoopEnum,
  ../Standard/Standard_Integer, ../Standard/Standard_Address

discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuild_AreaBuilder* {.importcpp: "TopOpeBRepBuild_AreaBuilder",
                                header: "TopOpeBRepBuild_AreaBuilder.hxx", bycopy.} = object


proc constructTopOpeBRepBuild_AreaBuilder*(): TopOpeBRepBuild_AreaBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_AreaBuilder(@)",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc constructTopOpeBRepBuild_AreaBuilder*(LS: var TopOpeBRepBuild_LoopSet;
    LC: var TopOpeBRepBuild_LoopClassifier;
    ForceClass: Standard_Boolean = Standard_False): TopOpeBRepBuild_AreaBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_AreaBuilder(@)",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc destroyTopOpeBRepBuild_AreaBuilder*(this: var TopOpeBRepBuild_AreaBuilder) {.
    importcpp: "#.~TopOpeBRepBuild_AreaBuilder()",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc InitAreaBuilder*(this: var TopOpeBRepBuild_AreaBuilder;
                     LS: var TopOpeBRepBuild_LoopSet;
                     LC: var TopOpeBRepBuild_LoopClassifier;
                     ForceClass: Standard_Boolean = Standard_False) {.
    importcpp: "InitAreaBuilder", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc InitArea*(this: var TopOpeBRepBuild_AreaBuilder): Standard_Integer {.
    importcpp: "InitArea", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc MoreArea*(this: TopOpeBRepBuild_AreaBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreArea", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc NextArea*(this: var TopOpeBRepBuild_AreaBuilder) {.importcpp: "NextArea",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc InitLoop*(this: var TopOpeBRepBuild_AreaBuilder): Standard_Integer {.
    importcpp: "InitLoop", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc MoreLoop*(this: TopOpeBRepBuild_AreaBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreLoop", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc NextLoop*(this: var TopOpeBRepBuild_AreaBuilder) {.importcpp: "NextLoop",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc Loop*(this: TopOpeBRepBuild_AreaBuilder): handle[TopOpeBRepBuild_Loop] {.
    noSideEffect, importcpp: "Loop", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc ADD_Loop_TO_LISTOFLoop*(this: TopOpeBRepBuild_AreaBuilder;
                            L: handle[TopOpeBRepBuild_Loop];
                            LOL: var TopOpeBRepBuild_ListOfLoop;
                            s: Standard_Address = nil) {.noSideEffect,
    importcpp: "ADD_Loop_TO_LISTOFLoop", header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc REM_Loop_FROM_LISTOFLoop*(this: TopOpeBRepBuild_AreaBuilder; ITLOL: var TopOpeBRepBuild_ListIteratorOfListOfLoop;
                              LOL: var TopOpeBRepBuild_ListOfLoop;
                              s: Standard_Address = nil) {.noSideEffect,
    importcpp: "REM_Loop_FROM_LISTOFLoop",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}
proc ADD_LISTOFLoop_TO_LISTOFLoop*(this: TopOpeBRepBuild_AreaBuilder;
                                  LOL1: var TopOpeBRepBuild_ListOfLoop;
                                  LOL2: var TopOpeBRepBuild_ListOfLoop;
                                  s: Standard_Address = nil;
                                  s1: Standard_Address = nil;
                                  s2: Standard_Address = nil) {.noSideEffect,
    importcpp: "ADD_LISTOFLoop_TO_LISTOFLoop",
    header: "TopOpeBRepBuild_AreaBuilder.hxx".}