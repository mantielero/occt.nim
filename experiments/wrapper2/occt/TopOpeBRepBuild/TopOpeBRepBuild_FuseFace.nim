##  Created on: 1998-07-28
##  Created by: LECLERE Florence
##  Copyright (c) 1998-1999 Matra Datavision
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

type
  TopOpeBRepBuildFuseFace* {.importcpp: "TopOpeBRepBuild_FuseFace",
                            header: "TopOpeBRepBuild_FuseFace.hxx", bycopy.} = object


proc constructTopOpeBRepBuildFuseFace*(): TopOpeBRepBuildFuseFace {.constructor,
    importcpp: "TopOpeBRepBuild_FuseFace(@)",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc constructTopOpeBRepBuildFuseFace*(lif: TopToolsListOfShape;
                                      lrf: TopToolsListOfShape; cxm: int): TopOpeBRepBuildFuseFace {.
    constructor, importcpp: "TopOpeBRepBuild_FuseFace(@)",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc init*(this: var TopOpeBRepBuildFuseFace; lif: TopToolsListOfShape;
          lrf: TopToolsListOfShape; cxm: int) {.importcpp: "Init",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc performFace*(this: var TopOpeBRepBuildFuseFace) {.importcpp: "PerformFace",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc performEdge*(this: var TopOpeBRepBuildFuseFace) {.importcpp: "PerformEdge",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc clearEdge*(this: var TopOpeBRepBuildFuseFace) {.importcpp: "ClearEdge",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc clearVertex*(this: var TopOpeBRepBuildFuseFace) {.importcpp: "ClearVertex",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc isDone*(this: TopOpeBRepBuildFuseFace): bool {.noSideEffect,
    importcpp: "IsDone", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc isModified*(this: TopOpeBRepBuildFuseFace): bool {.noSideEffect,
    importcpp: "IsModified", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc lFuseFace*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.noSideEffect,
    importcpp: "LFuseFace", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc lInternEdge*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, importcpp: "LInternEdge", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc lExternEdge*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, importcpp: "LExternEdge", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc lModifEdge*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.noSideEffect,
    importcpp: "LModifEdge", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc lInternVertex*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, importcpp: "LInternVertex",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc lExternVertex*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, importcpp: "LExternVertex",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc lModifVertex*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, importcpp: "LModifVertex", header: "TopOpeBRepBuild_FuseFace.hxx".}
