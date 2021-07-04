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
discard "forward decl of TopOpeBRep_VPointInter"
type
  TopOpeBRep_VPointInterIterator* {.importcpp: "TopOpeBRep_VPointInterIterator", header: "TopOpeBRep_VPointInterIterator.hxx",
                                   bycopy.} = object


proc constructTopOpeBRep_VPointInterIterator*(): TopOpeBRep_VPointInterIterator {.
    constructor, importcpp: "TopOpeBRep_VPointInterIterator(@)",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc constructTopOpeBRep_VPointInterIterator*(LI: TopOpeBRep_LineInter): TopOpeBRep_VPointInterIterator {.
    constructor, importcpp: "TopOpeBRep_VPointInterIterator(@)",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc Init*(this: var TopOpeBRep_VPointInterIterator; LI: TopOpeBRep_LineInter;
          checkkeep: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc Init*(this: var TopOpeBRep_VPointInterIterator) {.importcpp: "Init",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc More*(this: TopOpeBRep_VPointInterIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRep_VPointInterIterator.hxx".}
proc Next*(this: var TopOpeBRep_VPointInterIterator) {.importcpp: "Next",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc CurrentVP*(this: var TopOpeBRep_VPointInterIterator): TopOpeBRep_VPointInter {.
    importcpp: "CurrentVP", header: "TopOpeBRep_VPointInterIterator.hxx".}
proc CurrentVPIndex*(this: TopOpeBRep_VPointInterIterator): Standard_Integer {.
    noSideEffect, importcpp: "CurrentVPIndex",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc ChangeCurrentVP*(this: var TopOpeBRep_VPointInterIterator): var TopOpeBRep_VPointInter {.
    importcpp: "ChangeCurrentVP", header: "TopOpeBRep_VPointInterIterator.hxx".}
proc PLineInterDummy*(this: TopOpeBRep_VPointInterIterator): TopOpeBRep_PLineInter {.
    noSideEffect, importcpp: "PLineInterDummy",
    header: "TopOpeBRep_VPointInterIterator.hxx".}