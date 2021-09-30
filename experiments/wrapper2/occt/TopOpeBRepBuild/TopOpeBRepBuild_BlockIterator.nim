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
type
  TopOpeBRepBuildBlockIterator* {.importcpp: "TopOpeBRepBuild_BlockIterator",
                                 header: "TopOpeBRepBuild_BlockIterator.hxx",
                                 bycopy.} = object


proc `new`*(this: var TopOpeBRepBuildBlockIterator; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_BlockIterator::operator new",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc `delete`*(this: var TopOpeBRepBuildBlockIterator; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_BlockIterator::operator delete",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildBlockIterator; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_BlockIterator::operator new[]",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildBlockIterator; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_BlockIterator::operator delete[]",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc `new`*(this: var TopOpeBRepBuildBlockIterator; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_BlockIterator::operator new",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc `delete`*(this: var TopOpeBRepBuildBlockIterator; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_BlockIterator::operator delete",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc constructTopOpeBRepBuildBlockIterator*(): TopOpeBRepBuildBlockIterator {.
    constructor, importcpp: "TopOpeBRepBuild_BlockIterator(@)",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc constructTopOpeBRepBuildBlockIterator*(lower: int; upper: int): TopOpeBRepBuildBlockIterator {.
    constructor, importcpp: "TopOpeBRepBuild_BlockIterator(@)",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc initialize*(this: var TopOpeBRepBuildBlockIterator) {.importcpp: "Initialize",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc more*(this: TopOpeBRepBuildBlockIterator): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc next*(this: var TopOpeBRepBuildBlockIterator) {.importcpp: "Next",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc value*(this: TopOpeBRepBuildBlockIterator): int {.noSideEffect,
    importcpp: "Value", header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc extent*(this: TopOpeBRepBuildBlockIterator): int {.noSideEffect,
    importcpp: "Extent", header: "TopOpeBRepBuild_BlockIterator.hxx".}