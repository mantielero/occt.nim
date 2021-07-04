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
  TopOpeBRep_VPointInter, TopOpeBRep_Array1OfVPointInter,
  ../NCollection/NCollection_DefineHArray1

type
  TopOpeBRep_HArray1OfVPointInter* {.importcpp: "TopOpeBRep_HArray1OfVPointInter", header: "TopOpeBRep_HArray1OfVPointInter.hxx",
                                    bycopy.} = object of TopOpeBRep_Array1OfVPointInter


proc constructTopOpeBRep_HArray1OfVPointInter*(theLower: Standard_Integer;
    theUpper: Standard_Integer): TopOpeBRep_HArray1OfVPointInter {.constructor,
    importcpp: "TopOpeBRep_HArray1OfVPointInter(@)",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc constructTopOpeBRep_HArray1OfVPointInter*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): TopOpeBRep_HArray1OfVPointInter {.
    constructor, importcpp: "TopOpeBRep_HArray1OfVPointInter(@)",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc constructTopOpeBRep_HArray1OfVPointInter*(
    theOther: TopOpeBRep_Array1OfVPointInter): TopOpeBRep_HArray1OfVPointInter {.
    constructor, importcpp: "TopOpeBRep_HArray1OfVPointInter(@)",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc Array1*(this: TopOpeBRep_HArray1OfVPointInter): TopOpeBRep_Array1OfVPointInter {.
    noSideEffect, importcpp: "Array1",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc ChangeArray1*(this: var TopOpeBRep_HArray1OfVPointInter): var TopOpeBRep_Array1OfVPointInter {.
    importcpp: "ChangeArray1", header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
type
  TopOpeBRep_HArray1OfVPointInterbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TopOpeBRep_HArray1OfVPointInter::get_type_name(@)",
                              header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRep_HArray1OfVPointInter::get_type_descriptor(@)",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc DynamicType*(this: TopOpeBRep_HArray1OfVPointInter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}