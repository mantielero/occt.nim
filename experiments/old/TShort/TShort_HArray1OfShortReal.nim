##  Copyright (c) 1998-1999 Matra Datavision
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
  TShortHArray1OfShortReal* {.importcpp: "TShort_HArray1OfShortReal",
                             header: "TShort_HArray1OfShortReal.hxx", bycopy.} = object of TShortArray1OfShortReal


proc constructTShortHArray1OfShortReal*(theLower: int; theUpper: int): TShortHArray1OfShortReal {.
    constructor, importcpp: "TShort_HArray1OfShortReal(@)",
    header: "TShort_HArray1OfShortReal.hxx".}
proc constructTShortHArray1OfShortReal*(theLower: int; theUpper: int;
                                       theValue: ValueType): TShortHArray1OfShortReal {.
    constructor, importcpp: "TShort_HArray1OfShortReal(@)",
    header: "TShort_HArray1OfShortReal.hxx".}
proc constructTShortHArray1OfShortReal*(theOther: TShortArray1OfShortReal): TShortHArray1OfShortReal {.
    constructor, importcpp: "TShort_HArray1OfShortReal(@)",
    header: "TShort_HArray1OfShortReal.hxx".}
proc array1*(this: TShortHArray1OfShortReal): TShortArray1OfShortReal {.
    noSideEffect, importcpp: "Array1", header: "TShort_HArray1OfShortReal.hxx".}
proc changeArray1*(this: var TShortHArray1OfShortReal): var TShortArray1OfShortReal {.
    importcpp: "ChangeArray1", header: "TShort_HArray1OfShortReal.hxx".}
type
  TShortHArray1OfShortRealbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TShort_HArray1OfShortReal::get_type_name(@)",
                            header: "TShort_HArray1OfShortReal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TShort_HArray1OfShortReal::get_type_descriptor(@)",
    header: "TShort_HArray1OfShortReal.hxx".}
proc dynamicType*(this: TShortHArray1OfShortReal): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TShort_HArray1OfShortReal.hxx".}














































