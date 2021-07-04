##  Created on: 1993-03-10
##  Created by: Philippe DAUTRY
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
  ../gp/gp_XY, TColgp_Array1OfXY, ../NCollection/NCollection_DefineHArray1

type
  TColgp_HArray1OfXY* {.importcpp: "TColgp_HArray1OfXY",
                       header: "TColgp_HArray1OfXY.hxx", bycopy.} = object of TColgp_Array1OfXY


proc constructTColgp_HArray1OfXY*(theLower: Standard_Integer;
                                 theUpper: Standard_Integer): TColgp_HArray1OfXY {.
    constructor, importcpp: "TColgp_HArray1OfXY(@)",
    header: "TColgp_HArray1OfXY.hxx".}
proc constructTColgp_HArray1OfXY*(theLower: Standard_Integer;
                                 theUpper: Standard_Integer; theValue: value_type): TColgp_HArray1OfXY {.
    constructor, importcpp: "TColgp_HArray1OfXY(@)",
    header: "TColgp_HArray1OfXY.hxx".}
proc constructTColgp_HArray1OfXY*(theOther: TColgp_Array1OfXY): TColgp_HArray1OfXY {.
    constructor, importcpp: "TColgp_HArray1OfXY(@)",
    header: "TColgp_HArray1OfXY.hxx".}
proc Array1*(this: TColgp_HArray1OfXY): TColgp_Array1OfXY {.noSideEffect,
    importcpp: "Array1", header: "TColgp_HArray1OfXY.hxx".}
proc ChangeArray1*(this: var TColgp_HArray1OfXY): var TColgp_Array1OfXY {.
    importcpp: "ChangeArray1", header: "TColgp_HArray1OfXY.hxx".}
type
  TColgp_HArray1OfXYbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TColgp_HArray1OfXY::get_type_name(@)",
                              header: "TColgp_HArray1OfXY.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TColgp_HArray1OfXY::get_type_descriptor(@)",
    header: "TColgp_HArray1OfXY.hxx".}
proc DynamicType*(this: TColgp_HArray1OfXY): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TColgp_HArray1OfXY.hxx".}