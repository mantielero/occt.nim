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

import
  IGESDraw_ConnectPoint, IGESDraw_Array1OfConnectPoint,
  ../NCollection/NCollection_DefineHArray1

type
  IGESDraw_HArray1OfConnectPoint* {.importcpp: "IGESDraw_HArray1OfConnectPoint", header: "IGESDraw_HArray1OfConnectPoint.hxx",
                                   bycopy.} = object of IGESDraw_Array1OfConnectPoint


proc constructIGESDraw_HArray1OfConnectPoint*(theLower: Standard_Integer;
    theUpper: Standard_Integer): IGESDraw_HArray1OfConnectPoint {.constructor,
    importcpp: "IGESDraw_HArray1OfConnectPoint(@)",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc constructIGESDraw_HArray1OfConnectPoint*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): IGESDraw_HArray1OfConnectPoint {.
    constructor, importcpp: "IGESDraw_HArray1OfConnectPoint(@)",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc constructIGESDraw_HArray1OfConnectPoint*(
    theOther: IGESDraw_Array1OfConnectPoint): IGESDraw_HArray1OfConnectPoint {.
    constructor, importcpp: "IGESDraw_HArray1OfConnectPoint(@)",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc Array1*(this: IGESDraw_HArray1OfConnectPoint): IGESDraw_Array1OfConnectPoint {.
    noSideEffect, importcpp: "Array1", header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc ChangeArray1*(this: var IGESDraw_HArray1OfConnectPoint): var IGESDraw_Array1OfConnectPoint {.
    importcpp: "ChangeArray1", header: "IGESDraw_HArray1OfConnectPoint.hxx".}
type
  IGESDraw_HArray1OfConnectPointbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESDraw_HArray1OfConnectPoint::get_type_name(@)",
                              header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_HArray1OfConnectPoint::get_type_descriptor(@)",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}
proc DynamicType*(this: IGESDraw_HArray1OfConnectPoint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_HArray1OfConnectPoint.hxx".}