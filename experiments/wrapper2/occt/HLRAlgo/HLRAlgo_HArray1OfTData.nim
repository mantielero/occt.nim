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

type
  HLRAlgoHArray1OfTData* {.importcpp: "HLRAlgo_HArray1OfTData",
                          header: "HLRAlgo_HArray1OfTData.hxx", bycopy.} = object of HLRAlgoArray1OfTData


proc constructHLRAlgoHArray1OfTData*(theLower: int; theUpper: int): HLRAlgoHArray1OfTData {.
    constructor, importcpp: "HLRAlgo_HArray1OfTData(@)",
    header: "HLRAlgo_HArray1OfTData.hxx".}
proc constructHLRAlgoHArray1OfTData*(theLower: int; theUpper: int;
                                    theValue: ValueType): HLRAlgoHArray1OfTData {.
    constructor, importcpp: "HLRAlgo_HArray1OfTData(@)",
    header: "HLRAlgo_HArray1OfTData.hxx".}
proc constructHLRAlgoHArray1OfTData*(theOther: HLRAlgoArray1OfTData): HLRAlgoHArray1OfTData {.
    constructor, importcpp: "HLRAlgo_HArray1OfTData(@)",
    header: "HLRAlgo_HArray1OfTData.hxx".}
proc array1*(this: HLRAlgoHArray1OfTData): HLRAlgoArray1OfTData {.noSideEffect,
    importcpp: "Array1", header: "HLRAlgo_HArray1OfTData.hxx".}
proc changeArray1*(this: var HLRAlgoHArray1OfTData): var HLRAlgoArray1OfTData {.
    importcpp: "ChangeArray1", header: "HLRAlgo_HArray1OfTData.hxx".}
type
  HLRAlgoHArray1OfTDatabaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "HLRAlgo_HArray1OfTData::get_type_name(@)",
                            header: "HLRAlgo_HArray1OfTData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRAlgo_HArray1OfTData::get_type_descriptor(@)",
    header: "HLRAlgo_HArray1OfTData.hxx".}
proc dynamicType*(this: HLRAlgoHArray1OfTData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_HArray1OfTData.hxx".}
