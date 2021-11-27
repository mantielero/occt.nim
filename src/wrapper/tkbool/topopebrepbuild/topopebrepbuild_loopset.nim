##  Created on: 1993-03-23
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuildLoopSet* {.importcpp: "TopOpeBRepBuild_LoopSet",
                           header: "TopOpeBRepBuild_LoopSet.hxx", bycopy.} = object of RootObj


proc newTopOpeBRepBuildLoopSet*(): TopOpeBRepBuildLoopSet {.cdecl, constructor,
    importcpp: "TopOpeBRepBuild_LoopSet(@)", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc destroyTopOpeBRepBuildLoopSet*(this: var TopOpeBRepBuildLoopSet) {.cdecl,
    importcpp: "#.~TopOpeBRepBuild_LoopSet()", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc changeListOfLoop*(this: var TopOpeBRepBuildLoopSet): var TopOpeBRepBuildListOfLoop {.
    cdecl, importcpp: "ChangeListOfLoop", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc initLoop*(this: var TopOpeBRepBuildLoopSet) {.cdecl, importcpp: "InitLoop",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc moreLoop*(this: TopOpeBRepBuildLoopSet): bool {.noSideEffect, cdecl,
    importcpp: "MoreLoop", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc nextLoop*(this: var TopOpeBRepBuildLoopSet) {.cdecl, importcpp: "NextLoop",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc loop*(this: TopOpeBRepBuildLoopSet): Handle[TopOpeBRepBuildLoop] {.
    noSideEffect, cdecl, importcpp: "Loop", header: "TopOpeBRepBuild_LoopSet.hxx".}