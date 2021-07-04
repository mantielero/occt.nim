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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopOpeBRepDS_InterferenceIterator,
  TopOpeBRepDS_ListOfInterference, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_Orientation,
  ../TopAbs/TopAbs_State, ../Standard/Standard_Real

discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepDS_PointIterator* {.importcpp: "TopOpeBRepDS_PointIterator",
                               header: "TopOpeBRepDS_PointIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator ##
                                                                                                                         ## !
                                                                                                                         ## Creates
                                                                                                                         ## an
                                                                                                                         ## iterator
                                                                                                                         ## on
                                                                                                                         ## the
                                                                                                                         ## points
                                                                                                                         ## on
                                                                                                                         ## curves
                                                                                                                         ##
                                                                                                                         ## !
                                                                                                                         ## described
                                                                                                                         ## by
                                                                                                                         ## the
                                                                                                                         ## interferences
                                                                                                                         ## in
                                                                                                                         ## <L>.


proc constructTopOpeBRepDS_PointIterator*(L: TopOpeBRepDS_ListOfInterference): TopOpeBRepDS_PointIterator {.
    constructor, importcpp: "TopOpeBRepDS_PointIterator(@)",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc MatchInterference*(this: TopOpeBRepDS_PointIterator;
                       I: handle[TopOpeBRepDS_Interference]): Standard_Boolean {.
    noSideEffect, importcpp: "MatchInterference",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc Current*(this: TopOpeBRepDS_PointIterator): Standard_Integer {.noSideEffect,
    importcpp: "Current", header: "TopOpeBRepDS_PointIterator.hxx".}
proc Orientation*(this: TopOpeBRepDS_PointIterator; S: TopAbs_State): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc Parameter*(this: TopOpeBRepDS_PointIterator): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRepDS_PointIterator.hxx".}
proc IsVertex*(this: TopOpeBRepDS_PointIterator): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertex", header: "TopOpeBRepDS_PointIterator.hxx".}
proc IsPoint*(this: TopOpeBRepDS_PointIterator): Standard_Boolean {.noSideEffect,
    importcpp: "IsPoint", header: "TopOpeBRepDS_PointIterator.hxx".}
proc DiffOriented*(this: TopOpeBRepDS_PointIterator): Standard_Boolean {.
    noSideEffect, importcpp: "DiffOriented",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc SameOriented*(this: TopOpeBRepDS_PointIterator): Standard_Boolean {.
    noSideEffect, importcpp: "SameOriented",
    header: "TopOpeBRepDS_PointIterator.hxx".}
proc Support*(this: TopOpeBRepDS_PointIterator): Standard_Integer {.noSideEffect,
    importcpp: "Support", header: "TopOpeBRepDS_PointIterator.hxx".}