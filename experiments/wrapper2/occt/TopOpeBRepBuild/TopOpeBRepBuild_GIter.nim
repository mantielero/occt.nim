##  Created on: 1996-02-13
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Address, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_State, ../Standard/Standard_OStream

discard "forward decl of TopOpeBRepBuild_GTopo"
type
  TopOpeBRepBuild_GIter* {.importcpp: "TopOpeBRepBuild_GIter",
                          header: "TopOpeBRepBuild_GIter.hxx", bycopy.} = object


proc constructTopOpeBRepBuild_GIter*(): TopOpeBRepBuild_GIter {.constructor,
    importcpp: "TopOpeBRepBuild_GIter(@)", header: "TopOpeBRepBuild_GIter.hxx".}
proc constructTopOpeBRepBuild_GIter*(G: TopOpeBRepBuild_GTopo): TopOpeBRepBuild_GIter {.
    constructor, importcpp: "TopOpeBRepBuild_GIter(@)",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc Init*(this: var TopOpeBRepBuild_GIter) {.importcpp: "Init",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc Init*(this: var TopOpeBRepBuild_GIter; G: TopOpeBRepBuild_GTopo) {.
    importcpp: "Init", header: "TopOpeBRepBuild_GIter.hxx".}
proc More*(this: TopOpeBRepBuild_GIter): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepBuild_GIter.hxx".}
proc Next*(this: var TopOpeBRepBuild_GIter) {.importcpp: "Next",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc Current*(this: TopOpeBRepBuild_GIter; s1: var TopAbs_State; s2: var TopAbs_State) {.
    noSideEffect, importcpp: "Current", header: "TopOpeBRepBuild_GIter.hxx".}
proc Dump*(this: TopOpeBRepBuild_GIter; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "TopOpeBRepBuild_GIter.hxx".}