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
  TopOpeBRep_LineInter, TopOpeBRep_Array1OfLineInter,
  ../NCollection/NCollection_DefineHArray1

type
  TopOpeBRep_HArray1OfLineInter* {.importcpp: "TopOpeBRep_HArray1OfLineInter",
                                  header: "TopOpeBRep_HArray1OfLineInter.hxx",
                                  bycopy.} = object of TopOpeBRep_Array1OfLineInter


proc constructTopOpeBRep_HArray1OfLineInter*(theLower: Standard_Integer;
    theUpper: Standard_Integer): TopOpeBRep_HArray1OfLineInter {.constructor,
    importcpp: "TopOpeBRep_HArray1OfLineInter(@)",
    header: "TopOpeBRep_HArray1OfLineInter.hxx".}
proc constructTopOpeBRep_HArray1OfLineInter*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): TopOpeBRep_HArray1OfLineInter {.
    constructor, importcpp: "TopOpeBRep_HArray1OfLineInter(@)",
    header: "TopOpeBRep_HArray1OfLineInter.hxx".}
proc constructTopOpeBRep_HArray1OfLineInter*(
    theOther: TopOpeBRep_Array1OfLineInter): TopOpeBRep_HArray1OfLineInter {.
    constructor, importcpp: "TopOpeBRep_HArray1OfLineInter(@)",
    header: "TopOpeBRep_HArray1OfLineInter.hxx".}
proc Array1*(this: TopOpeBRep_HArray1OfLineInter): TopOpeBRep_Array1OfLineInter {.
    noSideEffect, importcpp: "Array1", header: "TopOpeBRep_HArray1OfLineInter.hxx".}
proc ChangeArray1*(this: var TopOpeBRep_HArray1OfLineInter): var TopOpeBRep_Array1OfLineInter {.
    importcpp: "ChangeArray1", header: "TopOpeBRep_HArray1OfLineInter.hxx".}
type
  TopOpeBRep_HArray1OfLineInterbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TopOpeBRep_HArray1OfLineInter::get_type_name(@)",
                              header: "TopOpeBRep_HArray1OfLineInter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRep_HArray1OfLineInter::get_type_descriptor(@)",
    header: "TopOpeBRep_HArray1OfLineInter.hxx".}
proc DynamicType*(this: TopOpeBRep_HArray1OfLineInter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRep_HArray1OfLineInter.hxx".}