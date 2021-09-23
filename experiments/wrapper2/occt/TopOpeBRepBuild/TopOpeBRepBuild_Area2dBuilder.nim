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
  ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
type
  TopOpeBRepBuild_Area2dBuilder* {.importcpp: "TopOpeBRepBuild_Area2dBuilder",
                                  header: "TopOpeBRepBuild_Area2dBuilder.hxx",
                                  bycopy.} = object of TopOpeBRepBuild_AreaBuilder


proc constructTopOpeBRepBuild_Area2dBuilder*(): TopOpeBRepBuild_Area2dBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_Area2dBuilder(@)",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc constructTopOpeBRepBuild_Area2dBuilder*(LS: var TopOpeBRepBuild_LoopSet;
    LC: var TopOpeBRepBuild_LoopClassifier;
    ForceClass: Standard_Boolean = Standard_False): TopOpeBRepBuild_Area2dBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_Area2dBuilder(@)",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc InitAreaBuilder*(this: var TopOpeBRepBuild_Area2dBuilder;
                     LS: var TopOpeBRepBuild_LoopSet;
                     LC: var TopOpeBRepBuild_LoopClassifier;
                     ForceClass: Standard_Boolean = Standard_False) {.
    importcpp: "InitAreaBuilder", header: "TopOpeBRepBuild_Area2dBuilder.hxx".}