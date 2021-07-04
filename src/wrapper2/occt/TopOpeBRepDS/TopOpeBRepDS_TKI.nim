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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference,
  TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference,
  TopOpeBRepDS_Kind, TopOpeBRepDS_ListOfInterference,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepDS_TKI* {.importcpp: "TopOpeBRepDS_TKI",
                     header: "TopOpeBRepDS_TKI.hxx", bycopy.} = object


proc constructTopOpeBRepDS_TKI*(): TopOpeBRepDS_TKI {.constructor,
    importcpp: "TopOpeBRepDS_TKI(@)", header: "TopOpeBRepDS_TKI.hxx".}
proc Clear*(this: var TopOpeBRepDS_TKI) {.importcpp: "Clear",
                                      header: "TopOpeBRepDS_TKI.hxx".}
proc FillOnGeometry*(this: var TopOpeBRepDS_TKI; L: TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FillOnGeometry", header: "TopOpeBRepDS_TKI.hxx".}
proc FillOnSupport*(this: var TopOpeBRepDS_TKI; L: TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FillOnSupport", header: "TopOpeBRepDS_TKI.hxx".}
proc IsBound*(this: TopOpeBRepDS_TKI; K: TopOpeBRepDS_Kind; G: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsBound", header: "TopOpeBRepDS_TKI.hxx".}
proc Interferences*(this: TopOpeBRepDS_TKI; K: TopOpeBRepDS_Kind; G: Standard_Integer): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "Interferences", header: "TopOpeBRepDS_TKI.hxx".}
proc ChangeInterferences*(this: var TopOpeBRepDS_TKI; K: TopOpeBRepDS_Kind;
                         G: Standard_Integer): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeInterferences", header: "TopOpeBRepDS_TKI.hxx".}
proc HasInterferences*(this: TopOpeBRepDS_TKI; K: TopOpeBRepDS_Kind;
                      G: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "HasInterferences", header: "TopOpeBRepDS_TKI.hxx".}
proc Add*(this: var TopOpeBRepDS_TKI; K: TopOpeBRepDS_Kind; G: Standard_Integer) {.
    importcpp: "Add", header: "TopOpeBRepDS_TKI.hxx".}
proc Add*(this: var TopOpeBRepDS_TKI; K: TopOpeBRepDS_Kind; G: Standard_Integer;
         HI: handle[TopOpeBRepDS_Interference]) {.importcpp: "Add",
    header: "TopOpeBRepDS_TKI.hxx".}
proc DumpTKIIterator*(this: var TopOpeBRepDS_TKI; s1: TCollection_AsciiString = "";
                     s2: TCollection_AsciiString = "") {.
    importcpp: "DumpTKIIterator", header: "TopOpeBRepDS_TKI.hxx".}
proc Init*(this: var TopOpeBRepDS_TKI) {.importcpp: "Init",
                                     header: "TopOpeBRepDS_TKI.hxx".}
proc More*(this: TopOpeBRepDS_TKI): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepDS_TKI.hxx".}
proc Next*(this: var TopOpeBRepDS_TKI) {.importcpp: "Next",
                                     header: "TopOpeBRepDS_TKI.hxx".}
proc Value*(this: TopOpeBRepDS_TKI; K: var TopOpeBRepDS_Kind; G: var Standard_Integer): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "Value", header: "TopOpeBRepDS_TKI.hxx".}
proc ChangeValue*(this: var TopOpeBRepDS_TKI; K: var TopOpeBRepDS_Kind;
                 G: var Standard_Integer): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeValue", header: "TopOpeBRepDS_TKI.hxx".}