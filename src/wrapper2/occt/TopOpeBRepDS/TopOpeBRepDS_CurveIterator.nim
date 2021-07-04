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
  ../TopAbs/TopAbs_State

discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of Geom2d_Curve"
type
  TopOpeBRepDS_CurveIterator* {.importcpp: "TopOpeBRepDS_CurveIterator",
                               header: "TopOpeBRepDS_CurveIterator.hxx", bycopy.} = object of TopOpeBRepDS_InterferenceIterator ##
                                                                                                                         ## !
                                                                                                                         ## Creates
                                                                                                                         ## an
                                                                                                                         ## iterator
                                                                                                                         ## on
                                                                                                                         ## the
                                                                                                                         ## curves
                                                                                                                         ## on
                                                                                                                         ## surface
                                                                                                                         ##
                                                                                                                         ## !
                                                                                                                         ## described
                                                                                                                         ## by
                                                                                                                         ## the
                                                                                                                         ## interferences
                                                                                                                         ## in
                                                                                                                         ## <L>.


proc constructTopOpeBRepDS_CurveIterator*(L: TopOpeBRepDS_ListOfInterference): TopOpeBRepDS_CurveIterator {.
    constructor, importcpp: "TopOpeBRepDS_CurveIterator(@)",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc MatchInterference*(this: TopOpeBRepDS_CurveIterator;
                       I: handle[TopOpeBRepDS_Interference]): Standard_Boolean {.
    noSideEffect, importcpp: "MatchInterference",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc Current*(this: TopOpeBRepDS_CurveIterator): Standard_Integer {.noSideEffect,
    importcpp: "Current", header: "TopOpeBRepDS_CurveIterator.hxx".}
proc Orientation*(this: TopOpeBRepDS_CurveIterator; S: TopAbs_State): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation",
    header: "TopOpeBRepDS_CurveIterator.hxx".}
proc PCurve*(this: TopOpeBRepDS_CurveIterator): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "PCurve", header: "TopOpeBRepDS_CurveIterator.hxx".}