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

discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopOpeBRep_VPointInter"
type
  TopOpeBRepVPointInterIterator* {.importcpp: "TopOpeBRep_VPointInterIterator",
                                  header: "TopOpeBRep_VPointInterIterator.hxx",
                                  bycopy.} = object


proc constructTopOpeBRepVPointInterIterator*(): TopOpeBRepVPointInterIterator {.
    constructor, importcpp: "TopOpeBRep_VPointInterIterator(@)",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc constructTopOpeBRepVPointInterIterator*(li: TopOpeBRepLineInter): TopOpeBRepVPointInterIterator {.
    constructor, importcpp: "TopOpeBRep_VPointInterIterator(@)",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc init*(this: var TopOpeBRepVPointInterIterator; li: TopOpeBRepLineInter;
          checkkeep: bool = false) {.importcpp: "Init",
                                 header: "TopOpeBRep_VPointInterIterator.hxx".}
proc init*(this: var TopOpeBRepVPointInterIterator) {.importcpp: "Init",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc more*(this: TopOpeBRepVPointInterIterator): bool {.noSideEffect,
    importcpp: "More", header: "TopOpeBRep_VPointInterIterator.hxx".}
proc next*(this: var TopOpeBRepVPointInterIterator) {.importcpp: "Next",
    header: "TopOpeBRep_VPointInterIterator.hxx".}
proc currentVP*(this: var TopOpeBRepVPointInterIterator): TopOpeBRepVPointInter {.
    importcpp: "CurrentVP", header: "TopOpeBRep_VPointInterIterator.hxx".}
proc currentVPIndex*(this: TopOpeBRepVPointInterIterator): cint {.noSideEffect,
    importcpp: "CurrentVPIndex", header: "TopOpeBRep_VPointInterIterator.hxx".}
proc changeCurrentVP*(this: var TopOpeBRepVPointInterIterator): var TopOpeBRepVPointInter {.
    importcpp: "ChangeCurrentVP", header: "TopOpeBRep_VPointInterIterator.hxx".}
proc pLineInterDummy*(this: TopOpeBRepVPointInterIterator): TopOpeBRepPLineInter {.
    noSideEffect, importcpp: "PLineInterDummy",
    header: "TopOpeBRep_VPointInterIterator.hxx".}

























