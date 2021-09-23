##  Created on: 1993-03-03
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
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_State

discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuild_LoopClassifier* {.importcpp: "TopOpeBRepBuild_LoopClassifier", header: "TopOpeBRepBuild_LoopClassifier.hxx",
                                   bycopy.} = object


proc destroyTopOpeBRepBuild_LoopClassifier*(
    this: var TopOpeBRepBuild_LoopClassifier) {.
    importcpp: "#.~TopOpeBRepBuild_LoopClassifier()",
    header: "TopOpeBRepBuild_LoopClassifier.hxx".}
proc Compare*(this: var TopOpeBRepBuild_LoopClassifier;
             L1: handle[TopOpeBRepBuild_Loop]; L2: handle[TopOpeBRepBuild_Loop]): TopAbs_State {.
    importcpp: "Compare", header: "TopOpeBRepBuild_LoopClassifier.hxx".}