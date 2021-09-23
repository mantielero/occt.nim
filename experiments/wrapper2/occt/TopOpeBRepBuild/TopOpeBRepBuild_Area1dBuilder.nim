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
  ../Standard/Standard_Handle, TopOpeBRepBuild_AreaBuilder,
  ../Standard/Standard_Boolean, TopOpeBRepBuild_ListOfLoop,
  ../Standard/Standard_Address, TopOpeBRepBuild_ListIteratorOfListOfLoop

discard "forward decl of TopOpeBRepBuild_PaveSet"
discard "forward decl of TopOpeBRepBuild_PaveClassifier"
discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuild_Area1dBuilder* {.importcpp: "TopOpeBRepBuild_Area1dBuilder",
                                  header: "TopOpeBRepBuild_Area1dBuilder.hxx",
                                  bycopy.} = object of TopOpeBRepBuild_AreaBuilder


proc constructTopOpeBRepBuild_Area1dBuilder*(): TopOpeBRepBuild_Area1dBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_Area1dBuilder(@)",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc constructTopOpeBRepBuild_Area1dBuilder*(LS: var TopOpeBRepBuild_PaveSet;
    LC: var TopOpeBRepBuild_PaveClassifier;
    ForceClass: Standard_Boolean = Standard_False): TopOpeBRepBuild_Area1dBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_Area1dBuilder(@)",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc InitAreaBuilder*(this: var TopOpeBRepBuild_Area1dBuilder;
                     LS: var TopOpeBRepBuild_LoopSet;
                     LC: var TopOpeBRepBuild_LoopClassifier;
                     ForceClass: Standard_Boolean = Standard_False) {.
    importcpp: "InitAreaBuilder", header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc ADD_Loop_TO_LISTOFLoop*(this: TopOpeBRepBuild_Area1dBuilder;
                            L: handle[TopOpeBRepBuild_Loop];
                            LOL: var TopOpeBRepBuild_ListOfLoop;
                            s: Standard_Address = nil) {.noSideEffect,
    importcpp: "ADD_Loop_TO_LISTOFLoop",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc REM_Loop_FROM_LISTOFLoop*(this: TopOpeBRepBuild_Area1dBuilder; ITLOL: var TopOpeBRepBuild_ListIteratorOfListOfLoop;
                              LOL: var TopOpeBRepBuild_ListOfLoop;
                              s: Standard_Address = nil) {.noSideEffect,
    importcpp: "REM_Loop_FROM_LISTOFLoop",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc ADD_LISTOFLoop_TO_LISTOFLoop*(this: TopOpeBRepBuild_Area1dBuilder;
                                  LOL1: var TopOpeBRepBuild_ListOfLoop;
                                  LOL2: var TopOpeBRepBuild_ListOfLoop;
                                  s: Standard_Address = nil;
                                  s1: Standard_Address = nil;
                                  s2: Standard_Address = nil) {.noSideEffect,
    importcpp: "ADD_LISTOFLoop_TO_LISTOFLoop",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}
proc DumpList*(L: TopOpeBRepBuild_ListOfLoop) {.
    importcpp: "TopOpeBRepBuild_Area1dBuilder::DumpList(@)",
    header: "TopOpeBRepBuild_Area1dBuilder.hxx".}