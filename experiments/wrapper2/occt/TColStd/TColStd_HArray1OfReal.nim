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
  TColStdHArray1OfReal* {.importcpp: "TColStd_HArray1OfReal",
                         header: "TColStd_HArray1OfReal.hxx", bycopy.} = object of TColStdArray1OfReal


proc constructTColStdHArray1OfReal*(theLower: int; theUpper: int): TColStdHArray1OfReal {.
    constructor, importcpp: "TColStd_HArray1OfReal(@)",
    header: "TColStd_HArray1OfReal.hxx".}
proc constructTColStdHArray1OfReal*(theLower: int; theUpper: int; theValue: ValueType): TColStdHArray1OfReal {.
    constructor, importcpp: "TColStd_HArray1OfReal(@)",
    header: "TColStd_HArray1OfReal.hxx".}
proc constructTColStdHArray1OfReal*(theOther: TColStdArray1OfReal): TColStdHArray1OfReal {.
    constructor, importcpp: "TColStd_HArray1OfReal(@)",
    header: "TColStd_HArray1OfReal.hxx".}
proc array1*(this: TColStdHArray1OfReal): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Array1", header: "TColStd_HArray1OfReal.hxx".}
proc changeArray1*(this: var TColStdHArray1OfReal): var TColStdArray1OfReal {.
    importcpp: "ChangeArray1", header: "TColStd_HArray1OfReal.hxx".}
type
  TColStdHArray1OfRealbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TColStd_HArray1OfReal::get_type_name(@)",
                            header: "TColStd_HArray1OfReal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColStd_HArray1OfReal::get_type_descriptor(@)",
    header: "TColStd_HArray1OfReal.hxx".}
proc dynamicType*(this: TColStdHArray1OfReal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TColStd_HArray1OfReal.hxx".}
