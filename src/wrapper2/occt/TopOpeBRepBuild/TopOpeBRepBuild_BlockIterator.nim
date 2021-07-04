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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_NoMoreObject"
type
  TopOpeBRepBuild_BlockIterator* {.importcpp: "TopOpeBRepBuild_BlockIterator",
                                  header: "TopOpeBRepBuild_BlockIterator.hxx",
                                  bycopy.} = object


proc constructTopOpeBRepBuild_BlockIterator*(): TopOpeBRepBuild_BlockIterator {.
    constructor, importcpp: "TopOpeBRepBuild_BlockIterator(@)",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc constructTopOpeBRepBuild_BlockIterator*(Lower: Standard_Integer;
    Upper: Standard_Integer): TopOpeBRepBuild_BlockIterator {.constructor,
    importcpp: "TopOpeBRepBuild_BlockIterator(@)",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc Initialize*(this: var TopOpeBRepBuild_BlockIterator) {.importcpp: "Initialize",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc More*(this: TopOpeBRepBuild_BlockIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc Next*(this: var TopOpeBRepBuild_BlockIterator) {.importcpp: "Next",
    header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc Value*(this: TopOpeBRepBuild_BlockIterator): Standard_Integer {.noSideEffect,
    importcpp: "Value", header: "TopOpeBRepBuild_BlockIterator.hxx".}
proc Extent*(this: TopOpeBRepBuild_BlockIterator): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TopOpeBRepBuild_BlockIterator.hxx".}