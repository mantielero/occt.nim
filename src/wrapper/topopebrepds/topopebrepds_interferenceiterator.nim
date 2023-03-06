import topopebrepds_types
import ../standard/standard_types





##  Created on: 1994-06-06
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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



proc newTopOpeBRepDS_InterferenceIterator*(): TopOpeBRepDS_InterferenceIterator {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_InterferenceIterator(@)",
    header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc newTopOpeBRepDS_InterferenceIterator*(L: TopOpeBRepDS_ListOfInterference): TopOpeBRepDS_InterferenceIterator {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_InterferenceIterator(@)",
    header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc init*(this: var TopOpeBRepDS_InterferenceIterator;
          L: TopOpeBRepDS_ListOfInterference) {.cdecl, importcpp: "Init",
    header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc geometryKind*(this: var TopOpeBRepDS_InterferenceIterator;
                  gk: TopOpeBRepDS_Kind) {.cdecl, importcpp: "GeometryKind",
    header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc geometry*(this: var TopOpeBRepDS_InterferenceIterator; g: cint) {.cdecl,
    importcpp: "Geometry", header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc supportKind*(this: var TopOpeBRepDS_InterferenceIterator; st: TopOpeBRepDS_Kind) {.
    cdecl, importcpp: "SupportKind", header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc support*(this: var TopOpeBRepDS_InterferenceIterator; s: cint) {.cdecl,
    importcpp: "Support", header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc match*(this: var TopOpeBRepDS_InterferenceIterator) {.cdecl, importcpp: "Match",
    header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc matchInterference*(this: TopOpeBRepDS_InterferenceIterator;
                       i: Handle[TopOpeBRepDS_Interference]): bool {.noSideEffect,
    cdecl, importcpp: "MatchInterference", header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc more*(this: TopOpeBRepDS_InterferenceIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc next*(this: var TopOpeBRepDS_InterferenceIterator) {.cdecl, importcpp: "Next",
    header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc value*(this: TopOpeBRepDS_InterferenceIterator): Handle[
    TopOpeBRepDS_Interference] {.noSideEffect, cdecl, importcpp: "Value",
                                header: "TopOpeBRepDS_InterferenceIterator.hxx".}
proc changeIterator*(this: var TopOpeBRepDS_InterferenceIterator): var TopOpeBRepDS_ListIteratorOfListOfInterference {.
    cdecl, importcpp: "ChangeIterator", header: "TopOpeBRepDS_InterferenceIterator.hxx".}


