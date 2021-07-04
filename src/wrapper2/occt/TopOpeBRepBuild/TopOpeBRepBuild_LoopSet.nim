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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopOpeBRepBuild_ListOfLoop,
  TopOpeBRepBuild_ListIteratorOfListOfLoop, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuild_LoopSet* {.importcpp: "TopOpeBRepBuild_LoopSet",
                            header: "TopOpeBRepBuild_LoopSet.hxx", bycopy.} = object


proc constructTopOpeBRepBuild_LoopSet*(): TopOpeBRepBuild_LoopSet {.constructor,
    importcpp: "TopOpeBRepBuild_LoopSet(@)", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc destroyTopOpeBRepBuild_LoopSet*(this: var TopOpeBRepBuild_LoopSet) {.
    importcpp: "#.~TopOpeBRepBuild_LoopSet()",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc ChangeListOfLoop*(this: var TopOpeBRepBuild_LoopSet): var TopOpeBRepBuild_ListOfLoop {.
    importcpp: "ChangeListOfLoop", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc InitLoop*(this: var TopOpeBRepBuild_LoopSet) {.importcpp: "InitLoop",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc MoreLoop*(this: TopOpeBRepBuild_LoopSet): Standard_Boolean {.noSideEffect,
    importcpp: "MoreLoop", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc NextLoop*(this: var TopOpeBRepBuild_LoopSet) {.importcpp: "NextLoop",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc Loop*(this: TopOpeBRepBuild_LoopSet): handle[TopOpeBRepBuild_Loop] {.
    noSideEffect, importcpp: "Loop", header: "TopOpeBRepBuild_LoopSet.hxx".}