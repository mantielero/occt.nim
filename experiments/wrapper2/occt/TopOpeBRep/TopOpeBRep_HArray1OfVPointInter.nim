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

type
  TopOpeBRepHArray1OfVPointInter* {.importcpp: "TopOpeBRep_HArray1OfVPointInter", header: "TopOpeBRep_HArray1OfVPointInter.hxx",
                                   bycopy.} = object of TopOpeBRepArray1OfVPointInter


proc constructTopOpeBRepHArray1OfVPointInter*(theLower: int; theUpper: int): TopOpeBRepHArray1OfVPointInter {.
    constructor, importcpp: "TopOpeBRep_HArray1OfVPointInter(@)",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc constructTopOpeBRepHArray1OfVPointInter*(theLower: int; theUpper: int;
    theValue: ValueType): TopOpeBRepHArray1OfVPointInter {.constructor,
    importcpp: "TopOpeBRep_HArray1OfVPointInter(@)",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc constructTopOpeBRepHArray1OfVPointInter*(
    theOther: TopOpeBRepArray1OfVPointInter): TopOpeBRepHArray1OfVPointInter {.
    constructor, importcpp: "TopOpeBRep_HArray1OfVPointInter(@)",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc array1*(this: TopOpeBRepHArray1OfVPointInter): TopOpeBRepArray1OfVPointInter {.
    noSideEffect, importcpp: "Array1",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc changeArray1*(this: var TopOpeBRepHArray1OfVPointInter): var TopOpeBRepArray1OfVPointInter {.
    importcpp: "ChangeArray1", header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
type
  TopOpeBRepHArray1OfVPointInterbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TopOpeBRep_HArray1OfVPointInter::get_type_name(@)",
                            header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRep_HArray1OfVPointInter::get_type_descriptor(@)",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
proc dynamicType*(this: TopOpeBRepHArray1OfVPointInter): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRep_HArray1OfVPointInter.hxx".}
