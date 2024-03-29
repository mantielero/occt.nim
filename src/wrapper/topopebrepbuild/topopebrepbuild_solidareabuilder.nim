import topopebrepbuild_types





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



proc newTopOpeBRepBuildSolidAreaBuilder*(): TopOpeBRepBuildSolidAreaBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_SolidAreaBuilder(@)",
    header: "TopOpeBRepBuild_SolidAreaBuilder.hxx".}
proc newTopOpeBRepBuildSolidAreaBuilder*(ls: var TopOpeBRepBuildLoopSet;
                                        lc: var TopOpeBRepBuildLoopClassifier;
                                        forceClass: bool = false): TopOpeBRepBuildSolidAreaBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_SolidAreaBuilder(@)",
    header: "TopOpeBRepBuild_SolidAreaBuilder.hxx".}
proc initSolidAreaBuilder*(this: var TopOpeBRepBuildSolidAreaBuilder;
                          ls: var TopOpeBRepBuildLoopSet;
                          lc: var TopOpeBRepBuildLoopClassifier;
                          forceClass: bool = false) {.cdecl,
    importcpp: "InitSolidAreaBuilder", header: "TopOpeBRepBuild_SolidAreaBuilder.hxx".}


