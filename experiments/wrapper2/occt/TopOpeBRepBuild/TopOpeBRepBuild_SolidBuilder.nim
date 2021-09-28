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

discard "forward decl of TopOpeBRepBuild_ShellFaceSet"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_ShapeSet"
type
  TopOpeBRepBuildSolidBuilder* {.importcpp: "TopOpeBRepBuild_SolidBuilder",
                                header: "TopOpeBRepBuild_SolidBuilder.hxx", bycopy.} = object


proc constructTopOpeBRepBuildSolidBuilder*(): TopOpeBRepBuildSolidBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_SolidBuilder(@)",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc constructTopOpeBRepBuildSolidBuilder*(fs: var TopOpeBRepBuildShellFaceSet;
    forceClass: bool = false): TopOpeBRepBuildSolidBuilder {.constructor,
    importcpp: "TopOpeBRepBuild_SolidBuilder(@)",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc initSolidBuilder*(this: var TopOpeBRepBuildSolidBuilder;
                      fs: var TopOpeBRepBuildShellFaceSet; forceClass: bool) {.
    importcpp: "InitSolidBuilder", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc initSolid*(this: var TopOpeBRepBuildSolidBuilder): cint {.
    importcpp: "InitSolid", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc moreSolid*(this: TopOpeBRepBuildSolidBuilder): bool {.noSideEffect,
    importcpp: "MoreSolid", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc nextSolid*(this: var TopOpeBRepBuildSolidBuilder) {.importcpp: "NextSolid",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc initShell*(this: var TopOpeBRepBuildSolidBuilder): cint {.
    importcpp: "InitShell", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc moreShell*(this: TopOpeBRepBuildSolidBuilder): bool {.noSideEffect,
    importcpp: "MoreShell", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc nextShell*(this: var TopOpeBRepBuildSolidBuilder) {.importcpp: "NextShell",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc isOldShell*(this: TopOpeBRepBuildSolidBuilder): bool {.noSideEffect,
    importcpp: "IsOldShell", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc oldShell*(this: TopOpeBRepBuildSolidBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "OldShell", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc initFace*(this: var TopOpeBRepBuildSolidBuilder): cint {.importcpp: "InitFace",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc moreFace*(this: TopOpeBRepBuildSolidBuilder): bool {.noSideEffect,
    importcpp: "MoreFace", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc nextFace*(this: var TopOpeBRepBuildSolidBuilder) {.importcpp: "NextFace",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc face*(this: TopOpeBRepBuildSolidBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRepBuild_SolidBuilder.hxx".}

























