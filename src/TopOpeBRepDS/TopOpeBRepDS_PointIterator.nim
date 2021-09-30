##  Created on: 1993-06-17
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

discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepDS_PointIterator* {.importcpp: "TopOpeBRepDS_PointIterator",
                               header: "TopOpeBRepDS_PointIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator


proc `new`*(this: var TopOpeBRepDS_PointIterator; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_PointIterator::operator new",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc `delete`*(this: var TopOpeBRepDS_PointIterator; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_PointIterator::operator delete",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_PointIterator; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_PointIterator::operator new[]",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_PointIterator; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_PointIterator::operator delete[]",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc `new`*(this: var TopOpeBRepDS_PointIterator; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_PointIterator::operator new",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc `delete`*(this: var TopOpeBRepDS_PointIterator; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_PointIterator::operator delete",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc constructTopOpeBRepDS_PointIterator*(L: TopOpeBRepDS_ListOfInterference): TopOpeBRepDS_PointIterator {.
    constructor, importcpp: "TopOpeBRepDS_PointIterator(@)",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc matchInterference*(this: TopOpeBRepDS_PointIterator;
                       i: Handle[TopOpeBRepDS_Interference]): StandardBoolean {.
    noSideEffect, importcpp: "MatchInterference",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc current*(this: TopOpeBRepDS_PointIterator): int {.noSideEffect,
    importcpp: "Current", header: "TopOpeBRepDS_PointIterator.hxx".}
proc orientation*(this: TopOpeBRepDS_PointIterator; s: TopAbsState): TopAbsOrientation {.
    noSideEffect, importcpp: "Orientation",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc parameter*(this: TopOpeBRepDS_PointIterator): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRepDS_PointIterator.hxx".}
proc isVertex*(this: TopOpeBRepDS_PointIterator): StandardBoolean {.noSideEffect,
    importcpp: "IsVertex", header: "TopOpeBRepDS_PointIterator.hxx".}
proc isPoint*(this: TopOpeBRepDS_PointIterator): StandardBoolean {.noSideEffect,
    importcpp: "IsPoint", header: "TopOpeBRepDS_PointIterator.hxx".}
proc diffOriented*(this: TopOpeBRepDS_PointIterator): StandardBoolean {.
    noSideEffect, importcpp: "DiffOriented",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc sameOriented*(this: TopOpeBRepDS_PointIterator): StandardBoolean {.
    noSideEffect, importcpp: "SameOriented",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc support*(this: TopOpeBRepDS_PointIterator): int {.noSideEffect,
    importcpp: "Support", header: "TopOpeBRepDS_PointIterator.hxx".}