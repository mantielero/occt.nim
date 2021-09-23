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
  ../Standard/Standard_Integer, TColStd_Array1OfInteger,
  ../NCollection/NCollection_DefineHArray1

type
  TColStd_HArray1OfInteger* {.importcpp: "TColStd_HArray1OfInteger",
                             header: "TColStd_HArray1OfInteger.hxx", bycopy.} = object of TColStd_Array1OfInteger


proc constructTColStd_HArray1OfInteger*(theLower: Standard_Integer;
                                       theUpper: Standard_Integer): TColStd_HArray1OfInteger {.
    constructor, importcpp: "TColStd_HArray1OfInteger(@)",
    header: "TColStd_HArray1OfInteger.hxx".}
proc constructTColStd_HArray1OfInteger*(theLower: Standard_Integer;
                                       theUpper: Standard_Integer;
                                       theValue: value_type): TColStd_HArray1OfInteger {.
    constructor, importcpp: "TColStd_HArray1OfInteger(@)",
    header: "TColStd_HArray1OfInteger.hxx".}
proc constructTColStd_HArray1OfInteger*(theOther: TColStd_Array1OfInteger): TColStd_HArray1OfInteger {.
    constructor, importcpp: "TColStd_HArray1OfInteger(@)",
    header: "TColStd_HArray1OfInteger.hxx".}
proc Array1*(this: TColStd_HArray1OfInteger): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "Array1", header: "TColStd_HArray1OfInteger.hxx".}
proc ChangeArray1*(this: var TColStd_HArray1OfInteger): var TColStd_Array1OfInteger {.
    importcpp: "ChangeArray1", header: "TColStd_HArray1OfInteger.hxx".}
type
  TColStd_HArray1OfIntegerbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TColStd_HArray1OfInteger::get_type_name(@)",
                              header: "TColStd_HArray1OfInteger.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TColStd_HArray1OfInteger::get_type_descriptor(@)",
    header: "TColStd_HArray1OfInteger.hxx".}
proc DynamicType*(this: TColStd_HArray1OfInteger): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TColStd_HArray1OfInteger.hxx".}