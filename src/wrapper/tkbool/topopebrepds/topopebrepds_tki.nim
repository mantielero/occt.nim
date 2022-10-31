import topopebrepds_types
import ../../tkernel/standard/standard_types





##  Created on: 1997-09-17
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1997-1999 Matra Datavision
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



proc newTopOpeBRepDS_TKI*(): TopOpeBRepDS_TKI {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_TKI(@)", header: "TopOpeBRepDS_TKI.hxx".}
proc clear*(this: var TopOpeBRepDS_TKI) {.cdecl, importcpp: "Clear", header: "TopOpeBRepDS_TKI.hxx".}
proc fillOnGeometry*(this: var TopOpeBRepDS_TKI; L: TopOpeBRepDS_ListOfInterference) {.
    cdecl, importcpp: "FillOnGeometry", header: "TopOpeBRepDS_TKI.hxx".}
proc fillOnSupport*(this: var TopOpeBRepDS_TKI; L: TopOpeBRepDS_ListOfInterference) {.
    cdecl, importcpp: "FillOnSupport", header: "TopOpeBRepDS_TKI.hxx".}
proc isBound*(this: TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsBound", header: "TopOpeBRepDS_TKI.hxx".}
proc interferences*(this: TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "Interferences", header: "TopOpeBRepDS_TKI.hxx".}
proc changeInterferences*(this: var TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeInterferences", header: "TopOpeBRepDS_TKI.hxx".}
proc hasInterferences*(this: TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: cint): bool {.
    noSideEffect, cdecl, importcpp: "HasInterferences", header: "TopOpeBRepDS_TKI.hxx".}
proc add*(this: var TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: cint) {.cdecl,
    importcpp: "Add", header: "TopOpeBRepDS_TKI.hxx".}
proc add*(this: var TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: cint;
         hi: Handle[TopOpeBRepDS_Interference]) {.cdecl, importcpp: "Add",
    header: "TopOpeBRepDS_TKI.hxx".}
proc dumpTKIIterator*(this: var TopOpeBRepDS_TKI; s1: TCollectionAsciiString = newTCollectionAsciiString("");
                     s2: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "DumpTKIIterator", header: "TopOpeBRepDS_TKI.hxx".}
proc init*(this: var TopOpeBRepDS_TKI) {.cdecl, importcpp: "Init", header: "TopOpeBRepDS_TKI.hxx".}
proc more*(this: TopOpeBRepDS_TKI): bool {.noSideEffect, cdecl, importcpp: "More",
                                       header: "TopOpeBRepDS_TKI.hxx".}
proc next*(this: var TopOpeBRepDS_TKI) {.cdecl, importcpp: "Next", header: "TopOpeBRepDS_TKI.hxx".}
proc value*(this: TopOpeBRepDS_TKI; k: var TopOpeBRepDS_Kind; g: var cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "Value", header: "TopOpeBRepDS_TKI.hxx".}
proc changeValue*(this: var TopOpeBRepDS_TKI; k: var TopOpeBRepDS_Kind; g: var cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeValue", header: "TopOpeBRepDS_TKI.hxx".}


