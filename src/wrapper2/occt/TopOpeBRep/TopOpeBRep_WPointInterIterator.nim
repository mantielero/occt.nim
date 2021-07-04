##  Created on: 1993-05-07
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
  ../Standard/Standard_Handle, TopOpeBRep_PLineInter,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopOpeBRep_WPointInter"
type
  TopOpeBRep_WPointInterIterator* {.importcpp: "TopOpeBRep_WPointInterIterator", header: "TopOpeBRep_WPointInterIterator.hxx",
                                   bycopy.} = object


proc constructTopOpeBRep_WPointInterIterator*(): TopOpeBRep_WPointInterIterator {.
    constructor, importcpp: "TopOpeBRep_WPointInterIterator(@)",
    header: "TopOpeBRep_WPointInterIterator.hxx".}
proc constructTopOpeBRep_WPointInterIterator*(LI: TopOpeBRep_LineInter): TopOpeBRep_WPointInterIterator {.
    constructor, importcpp: "TopOpeBRep_WPointInterIterator(@)",
    header: "TopOpeBRep_WPointInterIterator.hxx".}
proc Init*(this: var TopOpeBRep_WPointInterIterator; LI: TopOpeBRep_LineInter) {.
    importcpp: "Init", header: "TopOpeBRep_WPointInterIterator.hxx".}
proc Init*(this: var TopOpeBRep_WPointInterIterator) {.importcpp: "Init",
    header: "TopOpeBRep_WPointInterIterator.hxx".}
proc More*(this: TopOpeBRep_WPointInterIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRep_WPointInterIterator.hxx".}
proc Next*(this: var TopOpeBRep_WPointInterIterator) {.importcpp: "Next",
    header: "TopOpeBRep_WPointInterIterator.hxx".}
proc CurrentWP*(this: var TopOpeBRep_WPointInterIterator): TopOpeBRep_WPointInter {.
    importcpp: "CurrentWP", header: "TopOpeBRep_WPointInterIterator.hxx".}
proc PLineInterDummy*(this: TopOpeBRep_WPointInterIterator): TopOpeBRep_PLineInter {.
    noSideEffect, importcpp: "PLineInterDummy",
    header: "TopOpeBRep_WPointInterIterator.hxx".}