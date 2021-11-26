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


proc newTopOpeBRepBuildFuseFace*(): TopOpeBRepBuildFuseFace {.cdecl, constructor,
    importcpp: "TopOpeBRepBuild_FuseFace(@)", dynlib: tkbool.}
proc newTopOpeBRepBuildFuseFace*(lif: TopToolsListOfShape;
                                lrf: TopToolsListOfShape; cxm: cint): TopOpeBRepBuildFuseFace {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_FuseFace(@)", dynlib: tkbool.}
proc init*(this: var TopOpeBRepBuildFuseFace; lif: TopToolsListOfShape;
          lrf: TopToolsListOfShape; cxm: cint) {.cdecl, importcpp: "Init",
    dynlib: tkbool.}
proc performFace*(this: var TopOpeBRepBuildFuseFace) {.cdecl,
    importcpp: "PerformFace", dynlib: tkbool.}
proc performEdge*(this: var TopOpeBRepBuildFuseFace) {.cdecl,
    importcpp: "PerformEdge", dynlib: tkbool.}
proc clearEdge*(this: var TopOpeBRepBuildFuseFace) {.cdecl, importcpp: "ClearEdge",
    dynlib: tkbool.}
proc clearVertex*(this: var TopOpeBRepBuildFuseFace) {.cdecl,
    importcpp: "ClearVertex", dynlib: tkbool.}
proc isDone*(this: TopOpeBRepBuildFuseFace): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkbool.}
proc isModified*(this: TopOpeBRepBuildFuseFace): bool {.noSideEffect, cdecl,
    importcpp: "IsModified", dynlib: tkbool.}
proc lFuseFace*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "LFuseFace", dynlib: tkbool.}
proc lInternEdge*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "LInternEdge", dynlib: tkbool.}
proc lExternEdge*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "LExternEdge", dynlib: tkbool.}
proc lModifEdge*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "LModifEdge", dynlib: tkbool.}
proc lInternVertex*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "LInternVertex", dynlib: tkbool.}
proc lExternVertex*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "LExternVertex", dynlib: tkbool.}
proc lModifVertex*(this: TopOpeBRepBuildFuseFace): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "LModifVertex", dynlib: tkbool.}