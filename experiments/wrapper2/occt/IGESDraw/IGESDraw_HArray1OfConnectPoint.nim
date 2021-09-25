##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen (Niraj RANGWALA)
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
  IGESDrawHArray1OfConnectPoint* {.importcpp: "IGESDraw_HArray1OfConnectPoint",
                                  header: "IGESDraw_HArray1OfConnectPoint.hxx",
                                  bycopy.} = object of IGESDrawArray1OfConnectPoint


proc constructIGESDrawHArray1OfConnectPoint*(theLower: int; theUpper: int): IGESDrawHArray1OfConnectPoint {.
    constructor, importcpp: "IGESDraw_HArray1OfConnectPoint(@)",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc constructIGESDrawHArray1OfConnectPoint*(theLower: int; theUpper: int;
    theValue: ValueType): IGESDrawHArray1OfConnectPoint {.constructor,
    importcpp: "IGESDraw_HArray1OfConnectPoint(@)",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc constructIGESDrawHArray1OfConnectPoint*(
    theOther: IGESDrawArray1OfConnectPoint): IGESDrawHArray1OfConnectPoint {.
    constructor, importcpp: "IGESDraw_HArray1OfConnectPoint(@)",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc array1*(this: IGESDrawHArray1OfConnectPoint): IGESDrawArray1OfConnectPoint {.
    noSideEffect, importcpp: "Array1", header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc changeArray1*(this: var IGESDrawHArray1OfConnectPoint): var IGESDrawArray1OfConnectPoint {.
    importcpp: "ChangeArray1", header: "IGESDraw_HArray1OfConnectPoint.hxx".}
type
  IGESDrawHArray1OfConnectPointbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESDraw_HArray1OfConnectPoint::get_type_name(@)",
                            header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_HArray1OfConnectPoint::get_type_descriptor(@)",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc dynamicType*(this: IGESDrawHArray1OfConnectPoint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}
