##  Created on: 1992-02-03
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../TCollection/TCollection_HAsciiString, Interface_Array1OfHAsciiString,
  ../NCollection/NCollection_DefineHArray1

type
  Interface_HArray1OfHAsciiString* {.importcpp: "Interface_HArray1OfHAsciiString", header: "Interface_HArray1OfHAsciiString.hxx",
                                    bycopy.} = object of Interface_Array1OfHAsciiString


proc constructInterface_HArray1OfHAsciiString*(theLower: Standard_Integer;
    theUpper: Standard_Integer): Interface_HArray1OfHAsciiString {.constructor,
    importcpp: "Interface_HArray1OfHAsciiString(@)",
    header: "Interface_HArray1OfHAsciiString.hxx".}
proc constructInterface_HArray1OfHAsciiString*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): Interface_HArray1OfHAsciiString {.
    constructor, importcpp: "Interface_HArray1OfHAsciiString(@)",
    header: "Interface_HArray1OfHAsciiString.hxx".}
proc constructInterface_HArray1OfHAsciiString*(
    theOther: Interface_Array1OfHAsciiString): Interface_HArray1OfHAsciiString {.
    constructor, importcpp: "Interface_HArray1OfHAsciiString(@)",
    header: "Interface_HArray1OfHAsciiString.hxx".}
proc Array1*(this: Interface_HArray1OfHAsciiString): Interface_Array1OfHAsciiString {.
    noSideEffect, importcpp: "Array1",
    header: "Interface_HArray1OfHAsciiString.hxx".}
proc ChangeArray1*(this: var Interface_HArray1OfHAsciiString): var Interface_Array1OfHAsciiString {.
    importcpp: "ChangeArray1", header: "Interface_HArray1OfHAsciiString.hxx".}
type
  Interface_HArray1OfHAsciiStringbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Interface_HArray1OfHAsciiString::get_type_name(@)",
                              header: "Interface_HArray1OfHAsciiString.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_HArray1OfHAsciiString::get_type_descriptor(@)",
    header: "Interface_HArray1OfHAsciiString.hxx".}
proc DynamicType*(this: Interface_HArray1OfHAsciiString): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Interface_HArray1OfHAsciiString.hxx".}