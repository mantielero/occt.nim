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


proc newTopOpeBRepDS_PointIterator*(L: TopOpeBRepDS_ListOfInterference): TopOpeBRepDS_PointIterator {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_PointIterator(@)", dynlib: tkbool.}
proc matchInterference*(this: TopOpeBRepDS_PointIterator;
                       i: Handle[TopOpeBRepDS_Interference]): bool {.noSideEffect,
    cdecl, importcpp: "MatchInterference", dynlib: tkbool.}
proc current*(this: TopOpeBRepDS_PointIterator): cint {.noSideEffect, cdecl,
    importcpp: "Current", dynlib: tkbool.}
proc orientation*(this: TopOpeBRepDS_PointIterator; s: TopAbsState): TopAbsOrientation {.
    noSideEffect, cdecl, importcpp: "Orientation", dynlib: tkbool.}
proc parameter*(this: TopOpeBRepDS_PointIterator): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkbool.}
proc isVertex*(this: TopOpeBRepDS_PointIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsVertex", dynlib: tkbool.}
proc isPoint*(this: TopOpeBRepDS_PointIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsPoint", dynlib: tkbool.}
proc diffOriented*(this: TopOpeBRepDS_PointIterator): bool {.noSideEffect, cdecl,
    importcpp: "DiffOriented", dynlib: tkbool.}
proc sameOriented*(this: TopOpeBRepDS_PointIterator): bool {.noSideEffect, cdecl,
    importcpp: "SameOriented", dynlib: tkbool.}
proc support*(this: TopOpeBRepDS_PointIterator): cint {.noSideEffect, cdecl,
    importcpp: "Support", dynlib: tkbool.}