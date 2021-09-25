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
  TColStdHArray1OfAsciiString* {.importcpp: "TColStd_HArray1OfAsciiString",
                                header: "TColStd_HArray1OfAsciiString.hxx", bycopy.} = object of TColStdArray1OfAsciiString


proc constructTColStdHArray1OfAsciiString*(theLower: int; theUpper: int): TColStdHArray1OfAsciiString {.
    constructor, importcpp: "TColStd_HArray1OfAsciiString(@)",
    header: "TColStd_HArray1OfAsciiString.hxx".}
proc constructTColStdHArray1OfAsciiString*(theLower: int; theUpper: int;
    theValue: ValueType): TColStdHArray1OfAsciiString {.constructor,
    importcpp: "TColStd_HArray1OfAsciiString(@)",
    header: "TColStd_HArray1OfAsciiString.hxx".}
proc constructTColStdHArray1OfAsciiString*(theOther: TColStdArray1OfAsciiString): TColStdHArray1OfAsciiString {.
    constructor, importcpp: "TColStd_HArray1OfAsciiString(@)",
    header: "TColStd_HArray1OfAsciiString.hxx".}
proc array1*(this: TColStdHArray1OfAsciiString): TColStdArray1OfAsciiString {.
    noSideEffect, importcpp: "Array1", header: "TColStd_HArray1OfAsciiString.hxx".}
proc changeArray1*(this: var TColStdHArray1OfAsciiString): var TColStdArray1OfAsciiString {.
    importcpp: "ChangeArray1", header: "TColStd_HArray1OfAsciiString.hxx".}
type
  TColStdHArray1OfAsciiStringbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TColStd_HArray1OfAsciiString::get_type_name(@)",
                            header: "TColStd_HArray1OfAsciiString.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColStd_HArray1OfAsciiString::get_type_descriptor(@)",
    header: "TColStd_HArray1OfAsciiString.hxx".}
proc dynamicType*(this: TColStdHArray1OfAsciiString): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TColStd_HArray1OfAsciiString.hxx".}
