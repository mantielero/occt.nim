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

discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepDS_TKI* {.importcpp: "TopOpeBRepDS_TKI",
                     header: "TopOpeBRepDS_TKI.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepDS_TKI; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_TKI::operator new", header: "TopOpeBRepDS_TKI.hxx".}
proc `delete`*(this: var TopOpeBRepDS_TKI; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_TKI::operator delete", header: "TopOpeBRepDS_TKI.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_TKI; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_TKI::operator new[]", header: "TopOpeBRepDS_TKI.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_TKI; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_TKI::operator delete[]",
    header: "TopOpeBRepDS_TKI.hxx".}
proc `new`*(this: var TopOpeBRepDS_TKI; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_TKI::operator new", header: "TopOpeBRepDS_TKI.hxx".}
proc `delete`*(this: var TopOpeBRepDS_TKI; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_TKI::operator delete", header: "TopOpeBRepDS_TKI.hxx".}
proc constructTopOpeBRepDS_TKI*(): TopOpeBRepDS_TKI {.constructor,
    importcpp: "TopOpeBRepDS_TKI(@)", header: "TopOpeBRepDS_TKI.hxx".}
proc clear*(this: var TopOpeBRepDS_TKI) {.importcpp: "Clear",
                                      header: "TopOpeBRepDS_TKI.hxx".}
proc fillOnGeometry*(this: var TopOpeBRepDS_TKI; L: TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FillOnGeometry", header: "TopOpeBRepDS_TKI.hxx".}
proc fillOnSupport*(this: var TopOpeBRepDS_TKI; L: TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FillOnSupport", header: "TopOpeBRepDS_TKI.hxx".}
proc isBound*(this: TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: int): StandardBoolean {.
    noSideEffect, importcpp: "IsBound", header: "TopOpeBRepDS_TKI.hxx".}
proc interferences*(this: TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: int): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "Interferences", header: "TopOpeBRepDS_TKI.hxx".}
proc changeInterferences*(this: var TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: int): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeInterferences", header: "TopOpeBRepDS_TKI.hxx".}
proc hasInterferences*(this: TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: int): StandardBoolean {.
    noSideEffect, importcpp: "HasInterferences", header: "TopOpeBRepDS_TKI.hxx".}
proc add*(this: var TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: int) {.importcpp: "Add",
    header: "TopOpeBRepDS_TKI.hxx".}
proc add*(this: var TopOpeBRepDS_TKI; k: TopOpeBRepDS_Kind; g: int;
         hi: Handle[TopOpeBRepDS_Interference]) {.importcpp: "Add",
    header: "TopOpeBRepDS_TKI.hxx".}
proc dumpTKIIterator*(this: var TopOpeBRepDS_TKI; s1: TCollectionAsciiString = "";
                     s2: TCollectionAsciiString = "") {.
    importcpp: "DumpTKIIterator", header: "TopOpeBRepDS_TKI.hxx".}
proc init*(this: var TopOpeBRepDS_TKI) {.importcpp: "Init",
                                     header: "TopOpeBRepDS_TKI.hxx".}
proc more*(this: TopOpeBRepDS_TKI): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepDS_TKI.hxx".}
proc next*(this: var TopOpeBRepDS_TKI) {.importcpp: "Next",
                                     header: "TopOpeBRepDS_TKI.hxx".}
proc value*(this: TopOpeBRepDS_TKI; k: var TopOpeBRepDS_Kind; g: var int): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "Value", header: "TopOpeBRepDS_TKI.hxx".}
proc changeValue*(this: var TopOpeBRepDS_TKI; k: var TopOpeBRepDS_Kind; g: var int): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeValue", header: "TopOpeBRepDS_TKI.hxx".}