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
discard "forward decl of TopOpeBRep_WPointInter"
type
  TopOpeBRepWPointInterIterator* {.importcpp: "TopOpeBRep_WPointInterIterator",
                                  header: "TopOpeBRep_WPointInterIterator.hxx",
                                  bycopy.} = object


proc constructTopOpeBRepWPointInterIterator*(): TopOpeBRepWPointInterIterator {.
    constructor, importcpp: "TopOpeBRep_WPointInterIterator(@)",
    header: "TopOpeBRep_WPointInterIterator.hxx".}
proc constructTopOpeBRepWPointInterIterator*(li: TopOpeBRepLineInter): TopOpeBRepWPointInterIterator {.
    constructor, importcpp: "TopOpeBRep_WPointInterIterator(@)",
    header: "TopOpeBRep_WPointInterIterator.hxx".}
proc init*(this: var TopOpeBRepWPointInterIterator; li: TopOpeBRepLineInter) {.
    importcpp: "Init", header: "TopOpeBRep_WPointInterIterator.hxx".}
proc init*(this: var TopOpeBRepWPointInterIterator) {.importcpp: "Init",
    header: "TopOpeBRep_WPointInterIterator.hxx".}
proc more*(this: TopOpeBRepWPointInterIterator): bool {.noSideEffect,
    importcpp: "More", header: "TopOpeBRep_WPointInterIterator.hxx".}
proc next*(this: var TopOpeBRepWPointInterIterator) {.importcpp: "Next",
    header: "TopOpeBRep_WPointInterIterator.hxx".}
proc currentWP*(this: var TopOpeBRepWPointInterIterator): TopOpeBRepWPointInter {.
    importcpp: "CurrentWP", header: "TopOpeBRep_WPointInterIterator.hxx".}
proc pLineInterDummy*(this: TopOpeBRepWPointInterIterator): TopOpeBRepPLineInter {.
    noSideEffect, importcpp: "PLineInterDummy",
    header: "TopOpeBRep_WPointInterIterator.hxx".}

























