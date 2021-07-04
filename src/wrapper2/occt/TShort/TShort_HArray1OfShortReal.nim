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

import
  ../Standard/Standard_ShortReal, TShort_Array1OfShortReal,
  ../NCollection/NCollection_DefineHArray1

type
  TShort_HArray1OfShortReal* {.importcpp: "TShort_HArray1OfShortReal",
                              header: "TShort_HArray1OfShortReal.hxx", bycopy.} = object of TShort_Array1OfShortReal


proc constructTShort_HArray1OfShortReal*(theLower: Standard_Integer;
                                        theUpper: Standard_Integer): TShort_HArray1OfShortReal {.
    constructor, importcpp: "TShort_HArray1OfShortReal(@)",
    header: "TShort_HArray1OfShortReal.hxx".}
proc constructTShort_HArray1OfShortReal*(theLower: Standard_Integer;
                                        theUpper: Standard_Integer;
                                        theValue: value_type): TShort_HArray1OfShortReal {.
    constructor, importcpp: "TShort_HArray1OfShortReal(@)",
    header: "TShort_HArray1OfShortReal.hxx".}
proc constructTShort_HArray1OfShortReal*(theOther: TShort_Array1OfShortReal): TShort_HArray1OfShortReal {.
    constructor, importcpp: "TShort_HArray1OfShortReal(@)",
    header: "TShort_HArray1OfShortReal.hxx".}
proc Array1*(this: TShort_HArray1OfShortReal): TShort_Array1OfShortReal {.
    noSideEffect, importcpp: "Array1", header: "TShort_HArray1OfShortReal.hxx".}
proc ChangeArray1*(this: var TShort_HArray1OfShortReal): var TShort_Array1OfShortReal {.
    importcpp: "ChangeArray1", header: "TShort_HArray1OfShortReal.hxx".}
type
  TShort_HArray1OfShortRealbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TShort_HArray1OfShortReal::get_type_name(@)",
                              header: "TShort_HArray1OfShortReal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TShort_HArray1OfShortReal::get_type_descriptor(@)",
    header: "TShort_HArray1OfShortReal.hxx".}
proc DynamicType*(this: TShort_HArray1OfShortReal): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TShort_HArray1OfShortReal.hxx".}