##  Created on: 1992-02-18
##  Created by: Christophe MARION
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
  HLRAlgo_PolyInternalNode, HLRAlgo_Array1OfPINod,
  ../NCollection/NCollection_DefineHArray1

type
  HLRAlgo_HArray1OfPINod* {.importcpp: "HLRAlgo_HArray1OfPINod",
                           header: "HLRAlgo_HArray1OfPINod.hxx", bycopy.} = object of HLRAlgo_Array1OfPINod


proc constructHLRAlgo_HArray1OfPINod*(theLower: Standard_Integer;
                                     theUpper: Standard_Integer): HLRAlgo_HArray1OfPINod {.
    constructor, importcpp: "HLRAlgo_HArray1OfPINod(@)",
    header: "HLRAlgo_HArray1OfPINod.hxx".}
proc constructHLRAlgo_HArray1OfPINod*(theLower: Standard_Integer;
                                     theUpper: Standard_Integer;
                                     theValue: value_type): HLRAlgo_HArray1OfPINod {.
    constructor, importcpp: "HLRAlgo_HArray1OfPINod(@)",
    header: "HLRAlgo_HArray1OfPINod.hxx".}
proc constructHLRAlgo_HArray1OfPINod*(theOther: HLRAlgo_Array1OfPINod): HLRAlgo_HArray1OfPINod {.
    constructor, importcpp: "HLRAlgo_HArray1OfPINod(@)",
    header: "HLRAlgo_HArray1OfPINod.hxx".}
proc Array1*(this: HLRAlgo_HArray1OfPINod): HLRAlgo_Array1OfPINod {.noSideEffect,
    importcpp: "Array1", header: "HLRAlgo_HArray1OfPINod.hxx".}
proc ChangeArray1*(this: var HLRAlgo_HArray1OfPINod): var HLRAlgo_Array1OfPINod {.
    importcpp: "ChangeArray1", header: "HLRAlgo_HArray1OfPINod.hxx".}
type
  HLRAlgo_HArray1OfPINodbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "HLRAlgo_HArray1OfPINod::get_type_name(@)",
                              header: "HLRAlgo_HArray1OfPINod.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRAlgo_HArray1OfPINod::get_type_descriptor(@)",
    header: "HLRAlgo_HArray1OfPINod.hxx".}
proc DynamicType*(this: HLRAlgo_HArray1OfPINod): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "HLRAlgo_HArray1OfPINod.hxx".}