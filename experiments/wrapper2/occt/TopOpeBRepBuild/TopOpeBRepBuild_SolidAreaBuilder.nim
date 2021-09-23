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
  ../Standard/Standard_Handle, TopOpeBRepBuild_Area3dBuilder,
  ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
type
  TopOpeBRepBuild_SolidAreaBuilder* {.importcpp: "TopOpeBRepBuild_SolidAreaBuilder", header: "TopOpeBRepBuild_SolidAreaBuilder.hxx",
                                     bycopy.} = object of TopOpeBRepBuild_Area3dBuilder


proc constructTopOpeBRepBuild_SolidAreaBuilder*(): TopOpeBRepBuild_SolidAreaBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_SolidAreaBuilder(@)",
    header: "TopOpeBRepBuild_SolidAreaBuilder.hxx".}
proc constructTopOpeBRepBuild_SolidAreaBuilder*(LS: var TopOpeBRepBuild_LoopSet;
    LC: var TopOpeBRepBuild_LoopClassifier;
    ForceClass: Standard_Boolean = Standard_False): TopOpeBRepBuild_SolidAreaBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_SolidAreaBuilder(@)",
    header: "TopOpeBRepBuild_SolidAreaBuilder.hxx".}
proc InitSolidAreaBuilder*(this: var TopOpeBRepBuild_SolidAreaBuilder;
                          LS: var TopOpeBRepBuild_LoopSet;
                          LC: var TopOpeBRepBuild_LoopClassifier;
                          ForceClass: Standard_Boolean = Standard_False) {.
    importcpp: "InitSolidAreaBuilder",
    header: "TopOpeBRepBuild_SolidAreaBuilder.hxx".}