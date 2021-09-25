##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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
  IGESDefsHArray1OfTabularData* {.importcpp: "IGESDefs_HArray1OfTabularData",
                                 header: "IGESDefs_HArray1OfTabularData.hxx",
                                 bycopy.} = object of IGESDefsArray1OfTabularData


proc constructIGESDefsHArray1OfTabularData*(theLower: int; theUpper: int): IGESDefsHArray1OfTabularData {.
    constructor, importcpp: "IGESDefs_HArray1OfTabularData(@)",
    header: "IGESDefs_HArray1OfTabularData.hxx".}
proc constructIGESDefsHArray1OfTabularData*(theLower: int; theUpper: int;
    theValue: ValueType): IGESDefsHArray1OfTabularData {.constructor,
    importcpp: "IGESDefs_HArray1OfTabularData(@)",
    header: "IGESDefs_HArray1OfTabularData.hxx".}
proc constructIGESDefsHArray1OfTabularData*(theOther: IGESDefsArray1OfTabularData): IGESDefsHArray1OfTabularData {.
    constructor, importcpp: "IGESDefs_HArray1OfTabularData(@)",
    header: "IGESDefs_HArray1OfTabularData.hxx".}
proc array1*(this: IGESDefsHArray1OfTabularData): IGESDefsArray1OfTabularData {.
    noSideEffect, importcpp: "Array1", header: "IGESDefs_HArray1OfTabularData.hxx".}
proc changeArray1*(this: var IGESDefsHArray1OfTabularData): var IGESDefsArray1OfTabularData {.
    importcpp: "ChangeArray1", header: "IGESDefs_HArray1OfTabularData.hxx".}
type
  IGESDefsHArray1OfTabularDatabaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESDefs_HArray1OfTabularData::get_type_name(@)",
                            header: "IGESDefs_HArray1OfTabularData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDefs_HArray1OfTabularData::get_type_descriptor(@)",
    header: "IGESDefs_HArray1OfTabularData.hxx".}
proc dynamicType*(this: IGESDefsHArray1OfTabularData): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDefs_HArray1OfTabularData.hxx".}
