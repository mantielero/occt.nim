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
  ../Standard/Standard_Handle, TopOpeBRepBuild_LoopSet,
  TopOpeBRepBuild_BlockIterator, TopOpeBRepBuild_BlockBuilder,
  TopOpeBRepBuild_SolidAreaBuilder, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of TopOpeBRepBuild_ShellFaceSet"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_ShapeSet"
type
  TopOpeBRepBuild_SolidBuilder* {.importcpp: "TopOpeBRepBuild_SolidBuilder",
                                 header: "TopOpeBRepBuild_SolidBuilder.hxx",
                                 bycopy.} = object


proc constructTopOpeBRepBuild_SolidBuilder*(): TopOpeBRepBuild_SolidBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_SolidBuilder(@)",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc constructTopOpeBRepBuild_SolidBuilder*(FS: var TopOpeBRepBuild_ShellFaceSet;
    ForceClass: Standard_Boolean = Standard_False): TopOpeBRepBuild_SolidBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_SolidBuilder(@)",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc InitSolidBuilder*(this: var TopOpeBRepBuild_SolidBuilder;
                      FS: var TopOpeBRepBuild_ShellFaceSet;
                      ForceClass: Standard_Boolean) {.
    importcpp: "InitSolidBuilder", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc InitSolid*(this: var TopOpeBRepBuild_SolidBuilder): Standard_Integer {.
    importcpp: "InitSolid", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc MoreSolid*(this: TopOpeBRepBuild_SolidBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "MoreSolid",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc NextSolid*(this: var TopOpeBRepBuild_SolidBuilder) {.importcpp: "NextSolid",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc InitShell*(this: var TopOpeBRepBuild_SolidBuilder): Standard_Integer {.
    importcpp: "InitShell", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc MoreShell*(this: TopOpeBRepBuild_SolidBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "MoreShell",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc NextShell*(this: var TopOpeBRepBuild_SolidBuilder) {.importcpp: "NextShell",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc IsOldShell*(this: TopOpeBRepBuild_SolidBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "IsOldShell",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc OldShell*(this: TopOpeBRepBuild_SolidBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "OldShell", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc InitFace*(this: var TopOpeBRepBuild_SolidBuilder): Standard_Integer {.
    importcpp: "InitFace", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc MoreFace*(this: TopOpeBRepBuild_SolidBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreFace", header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc NextFace*(this: var TopOpeBRepBuild_SolidBuilder) {.importcpp: "NextFace",
    header: "TopOpeBRepBuild_SolidBuilder.hxx".}
proc Face*(this: TopOpeBRepBuild_SolidBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRepBuild_SolidBuilder.hxx".}