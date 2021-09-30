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
discard "forward decl of Geom2d_Curve"
type
  TopOpeBRepDS_CurveIterator* {.importcpp: "TopOpeBRepDS_CurveIterator",
                               header: "TopOpeBRepDS_CurveIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator


proc `new`*(this: var TopOpeBRepDS_CurveIterator; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_CurveIterator::operator new",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc `delete`*(this: var TopOpeBRepDS_CurveIterator; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_CurveIterator::operator delete",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_CurveIterator; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_CurveIterator::operator new[]",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_CurveIterator; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_CurveIterator::operator delete[]",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc `new`*(this: var TopOpeBRepDS_CurveIterator; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_CurveIterator::operator new",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc `delete`*(this: var TopOpeBRepDS_CurveIterator; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_CurveIterator::operator delete",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc constructTopOpeBRepDS_CurveIterator*(L: TopOpeBRepDS_ListOfInterference): TopOpeBRepDS_CurveIterator {.
    constructor, importcpp: "TopOpeBRepDS_CurveIterator(@)",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc matchInterference*(this: TopOpeBRepDS_CurveIterator;
                       i: Handle[TopOpeBRepDS_Interference]): StandardBoolean {.
    noSideEffect, importcpp: "MatchInterference",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc current*(this: TopOpeBRepDS_CurveIterator): int {.noSideEffect,
    importcpp: "Current", header: "TopOpeBRepDS_CurveIterator.hxx".}
proc orientation*(this: TopOpeBRepDS_CurveIterator; s: TopAbsState): TopAbsOrientation {.
    noSideEffect, importcpp: "Orientation",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc pCurve*(this: TopOpeBRepDS_CurveIterator): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: "TopOpeBRepDS_CurveIterator.hxx".}