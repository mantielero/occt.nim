##  Created on: 2008-05-29
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
  ../gp/gp_Trsf, TDataXtd_Array1OfTrsf, ../NCollection/NCollection_DefineHArray1

type
  TDataXtd_HArray1OfTrsf* {.importcpp: "TDataXtd_HArray1OfTrsf",
                           header: "TDataXtd_HArray1OfTrsf.hxx", bycopy.} = object of TDataXtd_Array1OfTrsf


proc constructTDataXtd_HArray1OfTrsf*(theLower: Standard_Integer;
                                     theUpper: Standard_Integer): TDataXtd_HArray1OfTrsf {.
    constructor, importcpp: "TDataXtd_HArray1OfTrsf(@)",
    header: "TDataXtd_HArray1OfTrsf.hxx".}
proc constructTDataXtd_HArray1OfTrsf*(theLower: Standard_Integer;
                                     theUpper: Standard_Integer;
                                     theValue: value_type): TDataXtd_HArray1OfTrsf {.
    constructor, importcpp: "TDataXtd_HArray1OfTrsf(@)",
    header: "TDataXtd_HArray1OfTrsf.hxx".}
proc constructTDataXtd_HArray1OfTrsf*(theOther: TDataXtd_Array1OfTrsf): TDataXtd_HArray1OfTrsf {.
    constructor, importcpp: "TDataXtd_HArray1OfTrsf(@)",
    header: "TDataXtd_HArray1OfTrsf.hxx".}
proc Array1*(this: TDataXtd_HArray1OfTrsf): TDataXtd_Array1OfTrsf {.noSideEffect,
    importcpp: "Array1", header: "TDataXtd_HArray1OfTrsf.hxx".}
proc ChangeArray1*(this: var TDataXtd_HArray1OfTrsf): var TDataXtd_Array1OfTrsf {.
    importcpp: "ChangeArray1", header: "TDataXtd_HArray1OfTrsf.hxx".}
type
  TDataXtd_HArray1OfTrsfbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TDataXtd_HArray1OfTrsf::get_type_name(@)",
                              header: "TDataXtd_HArray1OfTrsf.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataXtd_HArray1OfTrsf::get_type_descriptor(@)",
    header: "TDataXtd_HArray1OfTrsf.hxx".}
proc DynamicType*(this: TDataXtd_HArray1OfTrsf): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataXtd_HArray1OfTrsf.hxx".}