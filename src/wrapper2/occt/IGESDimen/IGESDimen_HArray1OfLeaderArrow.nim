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

import
  IGESDimen_LeaderArrow, IGESDimen_Array1OfLeaderArrow,
  ../NCollection/NCollection_DefineHArray1

type
  IGESDimen_HArray1OfLeaderArrow* {.importcpp: "IGESDimen_HArray1OfLeaderArrow", header: "IGESDimen_HArray1OfLeaderArrow.hxx",
                                   bycopy.} = object of IGESDimen_Array1OfLeaderArrow


proc constructIGESDimen_HArray1OfLeaderArrow*(theLower: Standard_Integer;
    theUpper: Standard_Integer): IGESDimen_HArray1OfLeaderArrow {.constructor,
    importcpp: "IGESDimen_HArray1OfLeaderArrow(@)",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc constructIGESDimen_HArray1OfLeaderArrow*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): IGESDimen_HArray1OfLeaderArrow {.
    constructor, importcpp: "IGESDimen_HArray1OfLeaderArrow(@)",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc constructIGESDimen_HArray1OfLeaderArrow*(
    theOther: IGESDimen_Array1OfLeaderArrow): IGESDimen_HArray1OfLeaderArrow {.
    constructor, importcpp: "IGESDimen_HArray1OfLeaderArrow(@)",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc Array1*(this: IGESDimen_HArray1OfLeaderArrow): IGESDimen_Array1OfLeaderArrow {.
    noSideEffect, importcpp: "Array1", header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc ChangeArray1*(this: var IGESDimen_HArray1OfLeaderArrow): var IGESDimen_Array1OfLeaderArrow {.
    importcpp: "ChangeArray1", header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
type
  IGESDimen_HArray1OfLeaderArrowbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESDimen_HArray1OfLeaderArrow::get_type_name(@)",
                              header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_HArray1OfLeaderArrow::get_type_descriptor(@)",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc DynamicType*(this: IGESDimen_HArray1OfLeaderArrow): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}