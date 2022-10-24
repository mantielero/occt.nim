import topopebrepbuild_types

##  Created on: 1993-02-25
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

discard "forward decl of Standard_NoMoreObject"


proc newTopOpeBRepBuildBlockIterator*(): TopOpeBRepBuildBlockIterator {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_BlockIterator(@)", header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc newTopOpeBRepBuildBlockIterator*(lower: cint; upper: cint): TopOpeBRepBuildBlockIterator {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_BlockIterator(@)",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc initialize*(this: var TopOpeBRepBuildBlockIterator) {.cdecl,
    importcpp: "Initialize", header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc more*(this: TopOpeBRepBuildBlockIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc next*(this: var TopOpeBRepBuildBlockIterator) {.cdecl, importcpp: "Next",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc value*(this: TopOpeBRepBuildBlockIterator): cint {.noSideEffect, cdecl,
    importcpp: "Value", header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc extent*(this: TopOpeBRepBuildBlockIterator): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "TopOpeBRepBuild_BlockIterator.hxx".}
