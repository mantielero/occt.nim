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

discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
type
  TopOpeBRepBuildArea2dBuilder* {.importcpp: "TopOpeBRepBuild_Area2dBuilder",
                                 header: "TopOpeBRepBuild_Area2dBuilder.hxx",
                                 bycopy.} = object of TopOpeBRepBuildAreaBuilder


proc `new`*(this: var TopOpeBRepBuildArea2dBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_Area2dBuilder::operator new",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildArea2dBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_Area2dBuilder::operator delete",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildArea2dBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_Area2dBuilder::operator new[]",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildArea2dBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_Area2dBuilder::operator delete[]",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc `new`*(this: var TopOpeBRepBuildArea2dBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_Area2dBuilder::operator new",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildArea2dBuilder; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_Area2dBuilder::operator delete",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc constructTopOpeBRepBuildArea2dBuilder*(): TopOpeBRepBuildArea2dBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_Area2dBuilder(@)",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc constructTopOpeBRepBuildArea2dBuilder*(ls: var TopOpeBRepBuildLoopSet;
    lc: var TopOpeBRepBuildLoopClassifier; forceClass: StandardBoolean = false): TopOpeBRepBuildArea2dBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_Area2dBuilder(@)",
    header: "TopOpeBRepBuild_Area2dBuilder.hxx".}
proc initAreaBuilder*(this: var TopOpeBRepBuildArea2dBuilder;
                     ls: var TopOpeBRepBuildLoopSet;
                     lc: var TopOpeBRepBuildLoopClassifier;
                     forceClass: StandardBoolean = false) {.
    importcpp: "InitAreaBuilder", header: "TopOpeBRepBuild_Area2dBuilder.hxx".}